package com.action;

import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.websearch.GoogleResults;
import com.websearch.WebSearchResults;

public class webSearchAction {
	private ActionContext cxt = ActionContext.getContext();
	private HttpServletRequest request = (HttpServletRequest)cxt.get(ServletActionContext.HTTP_REQUEST);
	
	public String webResults() throws Exception
	{
		List<WebSearchResults> webResults = new ArrayList<WebSearchResults>();
		//fetch web search results
		for (int i = 0; i < 4; i+=4) {
			String address = "http://ajax.googleapis.com/ajax/services/search/web?v=1.0&start="+i+"&q=";			 
			String query = request.getParameter("keywords");
			String charset = "UTF-8";
		 
			URL url = null;
			Reader reader = null;
			url = new URL(address + URLEncoder.encode(query, charset));											
			reader = new InputStreamReader(url.openStream(), charset);			
			GoogleResults results = new Gson().fromJson(reader, GoogleResults.class);
			
			if(results != null) {
				for (int m = 0; m <= 3; m++) {
					String pageTitle = null;
					String pageUrl = null;
					
					pageTitle = URLDecoder.decode(results.getResponseData().getResults().get(m).getTitle()
								.replaceAll("\\<[^\\<\\>]*\\>", ""), charset);
					pageUrl = URLDecoder.decode(results.getResponseData().getResults().get(m).getUrl(), charset);
				
					webResults.add(new WebSearchResults(pageTitle,pageUrl));
				}
			}
		}
		
		ActionContext.getContext().getSession().put("webResults", webResults);
		return "success";
		
	}

	public String imgResults() throws Exception
	{
		List<WebSearchResults> imageResults = new ArrayList<WebSearchResults>();
		try{
		
			//fetch image search results
			for (int i = 0; i < 4; i = i + 4) {
				String address = "http://ajax.googleapis.com/ajax/services/search/images?v=1.0&start="+i+"&q=";			 
				String query = request.getParameter("keywords");
				String charset = "UTF-8";
			 
				URL url = null;
				Reader reader = null;
				url = new URL(address + URLEncoder.encode(query, charset));
				reader = new InputStreamReader(url.openStream(), charset);
			
				GoogleResults results = new Gson().fromJson(reader, GoogleResults.class);
				if(results != null) {
					for (int m = 0; m <= 3; m++) {
						String pageTitle = null;
						String pageUrl = null;
							pageTitle = URLDecoder.decode(results.getResponseData().getResults().get(m).getTitle()
									.replaceAll("\\<[^\\<\\>]*\\>", ""), charset);
							pageUrl = URLDecoder.decode(results.getResponseData().getResults().get(m).getUrl(), charset);
						
						imageResults.add(new WebSearchResults(pageTitle, pageUrl));
					}	
				}
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
			
		ActionContext.getContext().getSession().put("imageResults", imageResults);
		return "success";
		
	}

}


