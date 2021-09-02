package com.action;

import java.util.Map;
import com.database.CyberI_database_Operation;
import com.opensymphony.xwork2.ActionContext;

public class showLog {
	Map<String,Object> map;
	
	public String execute()
	{
		ActionContext actionContext = ActionContext.getContext();	        
		Map<String, Object> session = actionContext.getSession();	
		String dbName=session.get("dbName").toString();
		
		CyberI_database_Operation init=new CyberI_database_Operation();
		init.Connect_database(dbName);
		map=init.Read_CyberI("logData","type", "growthLog");
		
		session.put("type", map.get("type").toString());
		session.put("dataType", map.get("dataType").toString());
		session.put("dataContent", map.get("dataContent").toString());
		session.put("newModelData", map.get("newModelData").toString());
		session.put("status", map.get("status").toString());
		session.put("time", map.get("time").toString());
		session.put("user", map.get("user").toString());
		session.put("isRollback", map.get("isRollback").toString());
		return "success";
	}

}
