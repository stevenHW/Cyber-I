package com.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import com.database.CyberI_database_Operation;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.Mongo;
import com.opensymphony.xwork2.ActionContext;
import com.websearch.WebSearchResults;

public class saveResults {
	
	private ActionContext cxt = ActionContext.getContext();
	private HttpServletRequest request = (HttpServletRequest)cxt.get(ServletActionContext.HTTP_REQUEST);
	
	@SuppressWarnings({ "unchecked", "deprecation"})
	public String saveWebResults()
	{
		List<WebSearchResults> webResults = new ArrayList<WebSearchResults>();
		List<WebSearchResults> allWeb = ((List<WebSearchResults>)ActionContext.getContext().getSession().get("webResults"));
		for(int i=0; i<allWeb.size(); i++) {
			String temp = "w"+i;
			if(request.getParameter(temp) != null) {
				if(request.getParameter(temp).equals("on")) {
					allWeb.get(i).setContent(extractContent(allWeb.get(i).getUrl()));
					webResults.add(allWeb.get(i));
				}
			}
		}				
		//save 
		Mongo mongo;
		try {						
			CyberI_database_Operation init=new CyberI_database_Operation();
			init.Connect_database((String)ActionContext.getContext().getSession().get("dbName"));
			Map<String,Object> map=init.Read_CyberI("rawData","type", "webPageHistory");
			int lastId=Integer.parseInt(map.get("lastId").toString());
			
			mongo = new Mongo();
			DB db = mongo.getDB((String)ActionContext.getContext().getSession().get("dbName")); 
			DBCollection WebCollection = db.getCollection("rawData");
			Date currentTime = new Date(System.currentTimeMillis());
			
			for(int i=0; i<webResults.size(); i++) {
				lastId+=1;
				String lastIdStr=String.valueOf(lastId);  
								
				BasicDBObject subobj1 = new BasicDBObject();
				BasicDBObject subobj2 = new BasicDBObject();
				BasicDBObject subobj0 = new BasicDBObject();
				subobj2.put("tittle", webResults.get(i).getTitle());
				subobj2.put("url", webResults.get(i).getUrl());
				subobj2.put("id", lastId);
				subobj2.put("time",	currentTime);
				subobj2.put("status", "unprocessed");
				//subobj2.put("content", webResults.get(i).getContent());								
				subobj1.put(lastIdStr, subobj2);				
				if(i==webResults.size()-1)
				{
					subobj1.put("lastId", lastId);
				}
				subobj0.put("$set", subobj1);
				WebCollection.update(new BasicDBObject().append("type", "webPageHistory"),subobj0,false,false);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "success";
	}
	
	public String saveImageResults()
	{
		return "success";
	}
	
	private String extractContent(String url){
		try {
			Document doc = Jsoup.connect(url).get();
			Elements spans = doc.select("p");
			return spans.text();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
