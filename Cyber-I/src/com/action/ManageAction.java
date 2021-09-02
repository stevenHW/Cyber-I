package com.action;

import java.util.Map;

import com.database.CyberI_database_Operation;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.Mongo;
import com.opensymphony.xwork2.ActionContext;

public class ManageAction {
	
	String schedulingType;
	String webHistoryWeight;
	String dataThreshold;
	String lowestDataThreshold;
	String timeThreshold;
	Map<String,Object> map;
	
	@SuppressWarnings("deprecation")
	public String setScheduling()
	{
		ActionContext actionContext = ActionContext.getContext();	        
		Map<String, Object> session = actionContext.getSession();	
		String dbName=session.get("dbName").toString();
		
		Mongo mongo =new Mongo();       
        DB db=mongo.getDB(dbName);         
        DBCollection collection=db.getCollection("settingData");
        
        CyberI_database_Operation init=new CyberI_database_Operation();
		init.Connect_database(dbName);
		map=init.Read_CyberI("settingData","type", "scheduling");
        if(map==null)
        {	
        	
        		BasicDBObject obj=new BasicDBObject();
        		obj.put("type", "Data Driven");        		
        		obj.put("webHistoryWeight", webHistoryWeight);
        		obj.put("dataThreshold", dataThreshold);        		
        		collection.insert(obj);
        		
        		BasicDBObject obj1=new BasicDBObject();
        		obj1.put("type", "Time Driven");
        		obj1.put("webHistoryWeight", webHistoryWeight);
        		obj1.put("lowestDataThreshold", lowestDataThreshold);
        		obj1.put("timeThreshold", timeThreshold);
        		collection.insert(obj1);     
        		
        		BasicDBObject obj2=new BasicDBObject();
        		obj2.put("currentSchedulingType", schedulingType);
        		obj2.put("type", "scheduling");
        		collection.insert(obj2);
        }
        else
        {
	        	BasicDBObject obj=new BasicDBObject();
	        	BasicDBObject doc=new BasicDBObject();	    		
	    		obj.put("webHistoryWeight", webHistoryWeight);
	    		obj.put("dataThreshold", dataThreshold);
	    		doc.put("$set", obj);
	    		collection.update(new BasicDBObject().append("type", "Data Driven"), doc,false,false);
	    		
	    		BasicDBObject obj1=new BasicDBObject();
	    		BasicDBObject doc1=new BasicDBObject();       		
        		obj1.put("webHistoryWeight", webHistoryWeight);
        		obj1.put("lowestDataThreshold", lowestDataThreshold);
        		obj1.put("timeThreshold", timeThreshold);
        		doc1.put("$set", obj1);
        		collection.update(new BasicDBObject().append("type", "Time Driven"), doc1,false,false);
        
        		BasicDBObject obj2=new BasicDBObject();
        		BasicDBObject doc2=new BasicDBObject();   
        		obj2.put("currentSchedulingType", schedulingType);
        		doc2.put("$set", obj2);
        		collection.update(new BasicDBObject().append("type", "scheduling"), doc2,false,false);
        }
     
		return "success";
	}

	public String getSchedulingType() {
		return schedulingType;
	}

	public void setSchedulingType(String schedulingType) {
		this.schedulingType = schedulingType;
	}

	public String getWebHistoryWeight() {
		return webHistoryWeight;
	}

	public void setWebHistoryWeight(String webHistoryWeight) {
		this.webHistoryWeight = webHistoryWeight;
	}

	public String getDataThreshold() {
		return dataThreshold;
	}

	public void setDataThreshold(String dataThreshold) {
		this.dataThreshold = dataThreshold;
	}

	public String getLowestDataThreshold() {
		return lowestDataThreshold;
	}

	public void setLowestDataThreshold(String lowestDataThreshold) {
		this.lowestDataThreshold = lowestDataThreshold;
	}

	public String getTimeThreshold() {
		return timeThreshold;
	}

	public void setTimeThreshold(String timeThreshold) {
		this.timeThreshold = timeThreshold;
	}

}
