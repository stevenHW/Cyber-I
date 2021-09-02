package com.database;

import java.util.HashMap;
import java.util.Map;

import org.codehaus.jackson.map.ObjectMapper;

import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.mongodb.util.JSON;

public class CyberI_database_Operation {
	private MongoDBTools mdt=new MongoDBTools();
	private  String URL = "localhost"; 
	private  int port = 27017; 
	
public boolean Connect_database(String URL, int port,String CyberI_Name,String connectionName)
{
	try{
	if(mdt.getDB(URL, port, CyberI_Name)!=null)
	{
		if(connectionName.equals("")==false){
			mdt.getConnection(connectionName);
	}
	return true;
	}
	else
	return false;
	}catch(Exception e)
	{
		e.printStackTrace();
		return false;
	}
}


public boolean Connect_database(String CyberI_Name)
{
	return Connect_database(URL,port,CyberI_Name,"");
}


public boolean Initial_CyberI( String URL, int port,String CyberI_Name, Map<String,Object> Basic_Data,  Map<String,Object> Row_Data, Map<String,Object> Model_Data, Map<String,Object> Settings)
{
	try{
	  ObjectMapper mapper = new ObjectMapper();
	  mdt.getDB(URL, port, CyberI_Name);
	  
	  String jsonBasic_Data = mapper.writeValueAsString(Basic_Data);
	  mdt.Create_Collection("Basic_Data",(BasicDBObject)JSON.parse(jsonBasic_Data));

	  String jsonRow_Data = mapper.writeValueAsString(Row_Data);
	  mdt.Create_Collection("Row_Data",(BasicDBObject)JSON.parse(jsonRow_Data));
	  
	  String jsonModel_Data = mapper.writeValueAsString(Model_Data);
	  mdt.Create_Collection("Model_Data",(BasicDBObject)JSON.parse(jsonModel_Data));
	  
	  String jsonSettings = mapper.writeValueAsString(Settings);
	  mdt.Create_Collection("Settings",(BasicDBObject)JSON.parse(jsonSettings));
	  
	return true;
	}
	catch(Exception e)
	{
		e.printStackTrace();
		return false;
	}
}


public boolean Initial_CyberI(String CyberI_Name, Map<String,Object> Basic_Data,  Map<String,Object> Row_Data, Map<String,Object> Model_Data, Map<String,Object> Settings)
{
	
	return Initial_CyberI(URL,port,CyberI_Name,Basic_Data,Row_Data,Model_Data,Settings);
}

@SuppressWarnings("unchecked")
public Map<String,Object> Read_CyberI(String Collection,String Key,String Value)
{
	try{
		mdt.getConnection(Collection);
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> description=new HashMap<String, Object>();
		description.put(Key, Value);
		String json_description = mapper.writeValueAsString(description);
		
		return mdt.Query_single_element((BasicDBObject)JSON.parse(json_description)).toMap();
		}
	
	catch(Exception e)
	{
		e.printStackTrace();
		return null;
	}
}


public boolean Update_CyberI_Data(String Data_Type,Map<String,Object> CyberI_Data,String Description,boolean isNew)
{
	try{
	ObjectMapper mapper = new ObjectMapper();
	Map<String,Object> description=new HashMap<String, Object>();;
	description.put("Description", Description);
	
	String json_description = mapper.writeValueAsString(description);
	String json_CyberI_Data=mapper.writeValueAsString(CyberI_Data);
	
	if(isNew)
	{
		
		CyberI_Data.put("Description", Description);
    json_CyberI_Data=mapper.writeValueAsString(CyberI_Data);
	return mdt.add_Element(Data_Type,((BasicDBObject)JSON.parse(json_CyberI_Data)));
	}
	else 
		{
		
		return mdt.update_element(Data_Type,((DBObject)JSON.parse(json_description)),((DBObject)JSON.parse(json_CyberI_Data)));
		}
	}catch(Exception e)
	{
		e.printStackTrace();
		return false;
	}
	
}

public boolean Delete_CyberI_Data(String Data_Type,String Description)
{
	try{
		ObjectMapper mapper = new ObjectMapper();
		Map<String,Object> description=new HashMap<String, Object>();
		description.put("Description", Description);
		String json_description = mapper.writeValueAsString(description);
		return mdt.Delete_element(Data_Type,((BasicDBObject)JSON.parse(json_description)));
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
}
public boolean Delete_CyberI(String CyberI)
{
	try{
		
		return mdt.Delete_Database(CyberI);
		}catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
}

}
