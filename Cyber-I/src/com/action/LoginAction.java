package com.action;

import java.util.Map;

import com.database.CyberI_database_Operation;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class LoginAction extends ActionSupport{
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String usernameHtml;
	private String passwordHtml;
	private String name;
	private String dbName;
	private String lastname;
	   
	
	public String execute() { 
	
	if(usernameHtml.equals(null)||passwordHtml.equals(null))
	{
		return "loginError";
	}
	else if(usernameHtml.equals("")||passwordHtml.equals(""))
	{
		return "loginError";
	}
	else
	{
		CyberI_database_Operation init=new CyberI_database_Operation();
		init.Connect_database("user");
		Map<String, Object> map=init.Read_CyberI("username", "username", usernameHtml);		
		dbName=map.get("dbName").toString();
		
		if ( passwordHtml.equals(map.get("password").toString())) {
		  
		  CyberI_database_Operation cdo=new CyberI_database_Operation();
		  cdo.Connect_database(dbName);
		  Map<String,Object> map2=cdo.Read_CyberI("basicData", "username", usernameHtml);
		 
		  name=map2.get("name").toString();
		  lastname=map2.get("lastname").toString();
		  
		  ActionContext actionContext = ActionContext.getContext();	        
		  Map<String, Object> session = actionContext.getSession();
		  session.put("username", usernameHtml);
		  session.put("name", name);
		  session.put("lastname", lastname);
		  session.put("dbName", dbName);
		  
		  return "success";
	      }
	      return "loginError";
	      
	   }

	}
	public String getDbName() {
		return dbName;
	}


	public void setDbName(String dbName) {
		this.dbName = dbName;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getUsernameHtml() {
		return usernameHtml;
	}

	public void setUsernameHtml(String usernameHtml) {
		this.usernameHtml = usernameHtml;
	}

	public String getPasswordHtml() {
		return passwordHtml;
	}

	public void setPasswordHtml(String passwordHtml) {
		this.passwordHtml = passwordHtml;
	}
	
	}
	 

