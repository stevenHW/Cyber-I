package com.database;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;

public class EntityTestMy {
     @SuppressWarnings("deprecation")
	public static void initialDatabase(String DBName, String CollectionName) throws Exception
		{    
          Mongo mongo =new Mongo();       
          DB db=mongo.getDB(DBName);         
          DBCollection collection=db.getCollection(CollectionName);
          
          BasicDBObject document=new BasicDBObject();
          BasicDBObject addressDocument=new BasicDBObject();
          BasicDBObject adduniversity=new BasicDBObject();
          BasicDBObject adduniversityInfo=new BasicDBObject();
          adduniversityInfo.put("name", "Hosei University");
          adduniversityInfo.put("time", "2 years");
          adduniversity.put("id", "1");
          adduniversity.put("information", adduniversityInfo);
          addressDocument.put("university", adduniversity);
          document.put("education", addressDocument);
          document.put("password", "123");
          document.put("birthday", "10/28/1988");
          document.put("firstname", "Wei");
          document.put("lastname", "Huang");
          document.put("name", "Wei Huang");
          document.put("gender", "Male");
          document.put("username", "hw1028aa");
          collection.insert(document);           
     }
     
     @SuppressWarnings("deprecation")
	public static void updateModelData(String DBName, String CollectionName, String Type, String Value) throws Exception    
     {
    	 	 Mongo mongo =new Mongo();        
         DB db=mongo.getDB(DBName);       
         DBCollection collection=db.getCollection(CollectionName);
         
         CyberI_database_Operation init=new CyberI_database_Operation();
         init.Connect_database(DBName);
         Map<String, Object> map=init.Read_CyberI("modelData", "type", "FavoriteWebStyle");
         String lastId=map.get("lastId").toString();
         int lastIdInt=Integer.parseInt(lastId);
         String newId=String.valueOf(lastIdInt+1);
         
         BasicDBObject document=new BasicDBObject();
         BasicDBObject document1=new BasicDBObject();
         document.put(newId, Value);
         document.put("type", Type);
         document.put("lastId", newId);
         document1.put("$set", document);
         collection.update(new BasicDBObject().append("type", "FavoriteWebStyle"),document1,false,false);
    	 	
     }

     @SuppressWarnings({ "rawtypes", "deprecation" })
	public List selectAll() throws Exception
	{         
          Mongo mongo =new Mongo();         
          DB db=mongo.getDB("HW");                
          DBCollection collection=db.getCollection("initialData");               
          DBCursor cursor=collection.find();          
          List<DBObject> list=cursor.toArray();          
          try{       	  
      		  FileOutputStream fos=new FileOutputStream("/Users/huangwei/Desktop/jsp.json");     		 
              String s = "http://www.docin.com/p-315288370.html";  
              fos.write(s.getBytes());  
              fos.close();                                      
      		}
      		catch (Exception e) {  
                  e.printStackTrace(); 
      		}         
          return list;
     }
    
      
     @SuppressWarnings("deprecation")
	public static void selectPart() throws Exception
	{         
          Mongo mongo =new Mongo();        
          DB db=mongo.getDB("HW");      
          DBCollection collection=db.getCollection("initialData");
          BasicDBObject queryObject=new BasicDBObject();
          queryObject.put("name", "Wei Huang");
          DBCursor querycursor=collection.find(queryObject);
          while(querycursor.hasNext()){
               System.out.println(querycursor.next());
          }
     }

     @SuppressWarnings("deprecation")
     public static void update()throws Exception
     {         
          Mongo mongo =new Mongo();        
          DB db=mongo.getDB("HW");     
          DBCollection collection=db.getCollection("initialData");
          BasicDBObject newBasicDBObject =new BasicDBObject();
          BasicDBObject updateData =new BasicDBObject();
          updateData.put("age", 26);
          newBasicDBObject.put("$set", updateData);          
          collection.update(new BasicDBObject().append("name", "Wei Huang"),newBasicDBObject,false,false);                
          DBCursor querycursor1=collection.find();
          while(querycursor1.hasNext()){
               System.out.println(querycursor1.next());
          }
     }
  
}