package com.database;

import java.util.Date;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.Mongo;

public class GrowthLog 
{	
	@SuppressWarnings("deprecation")
	public static void  recordLog(String dbname, String dataType, BasicDBObject dataContent, BasicDBObject newModel, String user)
	{
		Mongo mongo = new Mongo();
		DB db = mongo.getDB(dbname); 
		DBCollection Collection = db.getCollection("logData");
		
		Date currentDate = new Date(System.currentTimeMillis());
		BasicDBObject subobj = new BasicDBObject();
		
		subobj.put("type", "growthLog");
		subobj.put("dataType", dataType);
		subobj.put("dataContent", dataContent);
		subobj.put("time", currentDate);
		subobj.put("newModelData", newModel);
		subobj.put("status", "success");
		subobj.put("user", user);
		subobj.put("isRollback", true);
		Collection.insert(subobj);
				 
	}

}
