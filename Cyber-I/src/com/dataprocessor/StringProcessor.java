package com.dataprocessor;

import com.database.*;
import java.util.Map;
import com.database.CyberI_database_Operation;
import com.database.EntityTestMy;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.Mongo;
import com.opensymphony.xwork2.ActionContext;

public class StringProcessor {

	Map<String,Object> map;
	Map<String,Object> map1;
	Map<String,Object> mapData;
	
	private int[] isSearchEngineIndexs;
	private String[] newUrls;
	private String[] status;
	private int counterOfSearchEngine;
	private int[] isSocialNetwork;
	private int counterOfSocialNetwork;
	@SuppressWarnings({ "unchecked", "deprecation" })
	public  String stringProcessorBigger(String url, String time, int id, String dbName,String user) throws Exception
	{	
		CyberI_database_Operation init=new CyberI_database_Operation();
		init.Connect_database(dbName);
		map=init.Read_CyberI("rawData","type", "webPageHistory");				
		Map<String,Object> submap;
		
		Mongo mongo = new Mongo();
		DB db = mongo.getDB(dbName); 
		DBCollection WebCollection = db.getCollection("rawData");
		
		map1=init.Read_CyberI("settingData", "type", "scheduling");
		
		if(map1.get("currentSchedulingType").equals("Data Driven"))
		{
			mapData=init.Read_CyberI("settingData", "type", "Data Driven");
			int threshold=Integer.parseInt(mapData.get("dataThreshold").toString());
			int webWeight=Integer.parseInt(mapData.get("webHistoryWeight").toString());
			
			int growNum=threshold/webWeight;
			
			 newUrls=new String[10000];
			 status=new String[10000];
			 isSearchEngineIndexs=new int[10000];
			 counterOfSearchEngine=0;
			 
			 isSocialNetwork=new int[10000];
			 counterOfSocialNetwork=0;
			 BasicDBObject subobj1 = new BasicDBObject();
			 BasicDBObject subobj0 = new BasicDBObject();
			 BasicDBObject subobj = new BasicDBObject();
			 BasicDBObject dataContentSE = new BasicDBObject();
			 BasicDBObject dataContentSN = new BasicDBObject();
			 String[] searchEngine={"google","baidu","yahoo","bing","naver","ebay","timewarner","ask","yandex","alibaba"};
			 String[] socialNetwork={"facebook","twitter","weibo","renren","Linkedin","MySpace","Badoo","Xing","Skyrock","Tuenti"};
			 for(int n=id;n>=id-growNum;n--)
				{
					submap=(Map<String,Object>)map.get(String.valueOf(n));
					
					newUrls[n]=submap.get("url").toString();
					status[n]=submap.get("status").toString();
					
					if(status[n].equals("unprocessed"))	
					{
						for(int i=0;i<searchEngine.length;i++)
						{
							if(newUrls[n].contains(searchEngine[i]))
							{
								isSearchEngineIndexs[n]=1;
								counterOfSearchEngine++;
								dataContentSE.put(String.valueOf(n), newUrls[n]);
								
								subobj.put("tittle",submap.get("tittle").toString());
								subobj.put("url",submap.get("url").toString());
								subobj.put("id",Integer.parseInt(submap.get("id").toString()));
								subobj.put("time",submap.get("time").toString());
								subobj.put("status", "processed");
								subobj1.put(String.valueOf(n), subobj);
								subobj0.put("$set", subobj1);
								WebCollection.update(new BasicDBObject().append("type", "webPageHistory"),subobj0,false,false);
								break;
							}
							if(i==searchEngine.length-1)
							{
								isSearchEngineIndexs[n]=0;
							}
						}	
						
						for(int i=0;i<socialNetwork.length;i++)
						{
							if(newUrls[n].contains(socialNetwork[i]))
							{
								isSocialNetwork[n]=1;
								counterOfSocialNetwork++;
								dataContentSN.put(String.valueOf(n), newUrls[n]);
								
								subobj.put("tittle",submap.get("tittle").toString());
								subobj.put("url",submap.get("url").toString());
								subobj.put("id",Integer.parseInt(submap.get("id").toString()));
								subobj.put("time",submap.get("time").toString());
								subobj.put("status", "processed");								
								subobj1.put(String.valueOf(n), subobj);
								subobj0.put("$set", subobj1);
								WebCollection.update(new BasicDBObject().append("type", "webPageHistory"),subobj0,false,false);
								break;
							}
							if(i==socialNetwork.length-1)
							{
								isSocialNetwork[n]=0;
							}
						}	
					}										
				}
			
				if(counterOfSearchEngine>growNum/3)
				{
					EntityTestMy.updateModelData(dbName, "modelData", "FavoriteWebStyle", "Search Engine");
					
					BasicDBObject modelData = new BasicDBObject("FavoriteWebStyle","Search Engine");
					GrowthLog.recordLog(dbName, "webPageHistory", dataContentSE, modelData, user);
					
					ActionContext actionContext = ActionContext.getContext();        
					Map<String, Object> session = actionContext.getSession();
					session.put("favoriteWebStyle", "Search Engine");
				}
								
				if(counterOfSocialNetwork>growNum/3)
				{
					EntityTestMy.updateModelData(dbName, "modelData", "FavoriteWebStyle", "Social Network");
					
					BasicDBObject modelData1 = new BasicDBObject("FavoriteWebStyle","Social Network");
					GrowthLog.recordLog(dbName, "webPageHistory", dataContentSN, modelData1, user);
					
					ActionContext actionContext = ActionContext.getContext();        
					Map<String, Object> session = actionContext.getSession();
					session.put("favoriteWebStyle1", "Social Network");
				}
		
		}
		else if(map1.get("currentSchedulingType").equals("Time Driven"))
		{
			
		}
		return "success";
	}
}
