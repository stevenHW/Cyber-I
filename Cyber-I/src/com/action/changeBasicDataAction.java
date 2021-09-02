package com.action;

import java.util.Date;
import java.util.Map;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.Mongo;
import com.opensymphony.xwork2.ActionContext;

public class changeBasicDataAction {
	String email;
	String firstname;
	String lastname;
	String gender;
	String birthday;
	String occupation;
	String occupationperiod;
	String university;
	String universityperiod;
	String username;
	String password;
	String repassword;
	@SuppressWarnings("deprecation")
	public String execute()
	{
		
		
		Date currentDate = new Date(System.currentTimeMillis());
		String dbName=firstname+lastname;
		
		Mongo mongo =new Mongo();       
        DB db=mongo.getDB(dbName);         
        DBCollection collection=db.getCollection("basicData");
       // DBCollection collection1=db.getCollection("rawData");
       // DBCollection collection2=db.getCollection("modelData");
        
        
        BasicDBObject document=new BasicDBObject();
        
        BasicDBObject addressDocument=new BasicDBObject();
        BasicDBObject adduniversity=new BasicDBObject();
        BasicDBObject adduniversityInfo=new BasicDBObject();
        adduniversityInfo.put("name", university);
        adduniversityInfo.put("time", universityperiod);      
        adduniversityInfo.put("id", "1");
        adduniversity.put("1", adduniversityInfo);
        addressDocument.put("university", adduniversity);
        document.put("education", addressDocument);
        
        BasicDBObject obj1=new BasicDBObject();
        BasicDBObject obj2=new BasicDBObject();
        obj2.put("occupationName", occupation);
        obj2.put("period", occupationperiod);
        obj2.put("id", 1);
        obj1.put("1", obj2);
        document.put("occupation", obj1);
        
        document.put("password", password);
        document.put("birthday", birthday);
        document.put("firstname", firstname);
        document.put("lastname", lastname);
        document.put("gender", gender);
        document.put("username", username);
        
        
        document.put("created_time", currentDate.toString());
        BasicDBObject updateData=new BasicDBObject();
        updateData.put("$set",document);
        collection.update(new BasicDBObject().append("E-Mail", email), updateData,false,false); 
        
        
        Mongo mongo1 =new Mongo();       
        DB db1=mongo1.getDB("user");         
        DBCollection collectionUser=db1.getCollection("username");
        BasicDBObject document1=new BasicDBObject();
        document1.put("username", username);
        document1.put("password", password);
        document1.put("dbName", dbName);
        
        
        collectionUser.update(new BasicDBObject().append("E-Mail", email), updateData,false,false);
        
        ActionContext actionContext = ActionContext.getContext();
        
        	Map<String, Object> session = actionContext.getSession();
        	session.put("username", username);
        
        	    
		return "success";
       
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getOccupationperiod() {
		return occupationperiod;
	}
	public void setOccupationperiod(String occupationperiod) {
		this.occupationperiod = occupationperiod;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public String getUniversityperiod() {
		return universityperiod;
	}
	public void setUniversityperiod(String universityperiod) {
		this.universityperiod = universityperiod;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	

}
