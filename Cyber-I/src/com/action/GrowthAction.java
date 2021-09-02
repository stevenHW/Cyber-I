package com.action;
import com.database.CyberI_database_Operation;
import com.dataprocessor.*;
import com.opensymphony.xwork2.ActionContext;

import java.util.Map;

public class GrowthAction {

	Map<String,Object> map;
	
	@SuppressWarnings("unchecked")
	public String execute() throws Exception
	{
		ActionContext actionContext = ActionContext.getContext();	        
		Map<String, Object> session = actionContext.getSession();	
		String dbName=session.get("dbName").toString();
		String user=session.get("username").toString();
		
		CyberI_database_Operation init=new CyberI_database_Operation();
		init.Connect_database(dbName);
		map=init.Read_CyberI("rawData","type", "webPageHistory");
		StringProcessor strp=new StringProcessor();
		
		Map<String,Object> submap2=(Map<String, Object>)map.get(map.get("lastId").toString());
		
		int id=Integer.parseInt(submap2.get("id").toString());//String to int
		
		strp.stringProcessorBigger(submap2.get("url").toString(),submap2.get("time").toString(),id,dbName,user);
		return "success";
	}
	
}
