package com.database;

import com.mongodb.BasicDBObject;
import com.mongodb.DB; 
import com.mongodb.DBCollection; 
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;

public class MongoDBTools {

private  String URL = "localhost"; 
private  int port = 27017; 
private  Mongo mongo = null; 
private  DB db = null; 
private  DBCollection DBC = null; 
private  DBCollection DBC_p = null; 
private  DB db_p = null; 
private  DBCursor cur=null;
private String connName=null;

// 

@SuppressWarnings("deprecation")
public  DB getDB(String URL, int port,String DBName)
{
try { 
	this.port=port;	
	this.URL=URL;
	
mongo = new Mongo(URL, port); 
db = mongo.getDB(DBName); 

return db; 
} catch (Exception e) { 
db = null; 
mongo = null; 
e.printStackTrace(); 
return null; 
}
}

public  DB getDB(String DBName) { 
return getDB(URL, port, DBName); 
} 

public  DBCollection getConnection(String connectionName) { 
	connName=connectionName;
try { 
	if(db!=null)
	{
		DBC = db.getCollection(connectionName);
		
		return DBC; 
	}
	else return null;
	
	} catch (Exception e) {
	DBC = null; 
	db = null; 
	mongo = null; 
	e.printStackTrace(); 
	return null; 
	} 
} 



public  boolean Create_Collection(String collectionName,BasicDBObject BObject)
{
	try { 
	if(db!=null)
	{
	DBC_p=	db.createCollection(collectionName, new BasicDBObject());
	DBC_p.insert(BObject);
	return true;
	}
	else return false;
	}catch(Exception e)
	{
		e.printStackTrace();
		return false;
	}
}

public  boolean Create_Collection(String collectionName) { 
return Create_Collection(collectionName,new BasicDBObject()); 
} 

public  boolean Delete_Collection(String collection)
{
	try { 
	if(db!=null)
	{
	DBC_p = db.getCollection(collection);
	System.out.println("have droped");
	DBC_p.drop();
	return true;
	}
	else
	return false;
	}catch(Exception e)
	{
		e.printStackTrace();
		return false;
	}finally
	{
		DBC_p=null;
	}
}

@SuppressWarnings("deprecation")
public  boolean Delete_Database(String Database)
{
	 boolean b= false;
	try{
		if(mongo==null)
		{
			b=true;
			mongo = new Mongo(URL, port); 
		}
		db_p = mongo.getDB(Database); 
		db_p.dropDatabase();
		System.out.println(Database+"is deleted");
		return true;
	}catch (Exception e) {
		// TODO: handle exception
		return false;
	}finally{
		db_p=null;
		if(b)mongo.close();
	}
	
}

public  boolean Update_Collection(String collectionName,DBObject query,DBObject update)
{
	try{
	if(db!=null)
	{
		
	DBC_p = db.getCollection(collectionName);
	
	System.out.println(query);
	System.out.println(update);
	DBC_p.update(query,update);
	return true;
	}
	else
	return false;
	}catch(Exception e)
	{
		DBC_p=null;
		
		e.printStackTrace();
		return false;
	}
}


public  boolean add_Element(String collectionName,DBObject BObject)
{
	try { 
	if(db!=null)
	{
		DBC_p = db.getCollection(collectionName);
		DBC_p.insert(BObject);
	return true;
	}
	else return false;
	}catch(Exception e)
	{
		e.printStackTrace();
		return false;
	}
}



public  boolean Delete_element(String collectionName,DBObject query)
{
	try { 
		DBC_p = db.getCollection(collectionName);
		DBC_p.remove(query);
	return true;
	
	}catch(Exception e)
	{
		e.printStackTrace();
		return false;
	}
}

public  boolean update_element(String collectionName,DBObject query,DBObject update)
{
	try { 
		DBC_p = db.getCollection(collectionName);
		update.put("_id",Query_single_element(query).get("_id"));
	System.out.println(query);
	System.out.println(update);
		DBC_p.update(query, update);
	return true;
	
	}catch(Exception e)
	{
		e.printStackTrace();
		return false;
	}
}



public  boolean update_element(DBObject query,DBObject update)
{return update_element(connName,query,update);
}

public  boolean Query_element_system()
{
	try { 
    cur= DBC.find();
		while(cur.hasNext()){ 
			System.out.println(cur.next()+" over one line "); 
			} 
	return true;
	}
	catch(Exception e)
	{
		e.printStackTrace();
		return false;
	}
	finally{
		if (cur!=null)cur.close();
	}
}

public  DBObject Query_single_element(DBObject query)
{
	try { 
		//System.out.println("Query result: "+DBC.findOne(query));
		return DBC.findOne(query);
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
		return null;
	}
	finally{
		if (cur!=null)cur.close();
	}
}

//?????????count=0????????????????????????????????????????????????????????????????????????cout=1?????????????????????????????????????????????????????????????????????????????????
public  DBObject[] Query_elements(int count,int number)
{
	DBObject[] DBObject=new DBObject[number];
	int i=0;
	try { 
		cur= DBC.find();
		cur.skip(count);
		while(i++<number&&cur.hasNext())
		{
		//	System.out.println("Query result: ggggg "+i+"   ");

			DBObject[i-1]=cur.next();
			
		}
		return DBObject;
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
		return null;
	}
	finally{
		if (cur!=null)cur.close();
	}
}

public  DBObject Query_last_element()
{
	try { 
		cur= DBC.find();
		cur.skip(cur.count()-1);
		//System.out.println("Query result: "+cur.next());
		return cur.next();
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
		return null;
	}
	finally{
		if (cur!=null)cur.close();
	}
}




public  String Query_Function(String QueryName)
{
	try{
	if(QueryName.equals("CollectionName"))
		{ System.out.println(db.getName());
		return db.getName();
		}
	else return "Not Found";
	/*else if(QueryName.equals("MongoDBName")){ System.out.println(db.getMongo());
	return (String)db.getMongo();
	}
	*/}catch(Exception e)
	{
		e.printStackTrace();
		return "Not Found";
	}

}


public void createNewIndex(BasicDBObject bo){ 
DBC.createIndex(bo);
} 

public  void destory() { 
try{
	if (cur!=null)cur.close();
	if(DBC!=null)DBC=null;
	if(db!=null)db=null;
	if(mongo!=null)mongo.close();
}catch(Exception e){
	e.printStackTrace();
}
} 

}
