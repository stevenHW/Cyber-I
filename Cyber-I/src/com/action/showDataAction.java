package com.action;

import java.util.Map;

import com.database.CyberI_database_Operation;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class showDataAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String name;
	String birthday;
	String EMail;
	String lastname;
	String gender;
	String age;
	String occupation=null;
	String occupationPeriod;
	String university;
	String studyPeriod;
	String favoriteWebStyle;
	Map<String,Object> map;
	Map<String,Object> map1;
	Map<String,Object> submap1;
	Map<String,Object> submap2;
	Map<String,Object> submap3;

	
	@SuppressWarnings("unchecked")
	public String basicData()
	{
		try{
			
		ActionContext actionContext = ActionContext.getContext();	        
		Map<String, Object> session = actionContext.getSession();	
		String dbName=session.get("dbName").toString();
		String username=session.get("username").toString();
		
		CyberI_database_Operation init=new CyberI_database_Operation();
		init.Connect_database(dbName);
		map=init.Read_CyberI("basicData","username", username);
		
		
		name=map.get("name").toString();
		birthday=map.get("birthday").toString();
		EMail=map.get("E-Mail").toString();
		lastname=map.get("lastname").toString();
		gender=map.get("gender").toString();
		age=map.get("age").toString();
		
		
		submap1 = (Map<String, Object>) map.get("occupation");		
		submap2= (Map<String, Object>) submap1.get("1");		
		occupation=submap2.get("occupationName").toString();
		occupationPeriod=submap2.get("period").toString();
		
		submap1=(Map<String,Object>) map.get("education");
		submap2=(Map<String,Object>) submap1.get("university");
		submap3=(Map<String,Object>) submap2.get("1");		
		university=submap3.get("name").toString();
		studyPeriod=submap3.get("time").toString();
		
		session.put("birthday", birthday);
		session.put("lastname", lastname);
		session.put("EMail", EMail);
		session.put("gender", gender);
		session.put("age", age);
		session.put("occupation", occupation);
		session.put("occupationPeriod", occupationPeriod);
		session.put("university", university);
		session.put("studyPeriod", studyPeriod);
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "success";
	}
	
	public String modelData()
	{
		ActionContext actionContext1 = ActionContext.getContext();	        
		Map<String, Object> session1 = actionContext1.getSession();	
		String dbName=session1.get("dbName").toString();
				
		CyberI_database_Operation init=new CyberI_database_Operation();
		init.Connect_database(dbName);
		map1=init.Read_CyberI("modelData", "type", "FavoriteWebStyle");
		favoriteWebStyle=map1.get("1").toString();
		
		session1.put("favoriteWebStyle", favoriteWebStyle);
		return "success";
	}

	public String getFavoriteWebStyle() {
		return favoriteWebStyle;
	}

	public void setFavoriteWebStyle(String favoriteWebStyle) {
		this.favoriteWebStyle = favoriteWebStyle;
	}

	public String getOccupationPeriod() {
		return occupationPeriod;
	}

	public void setOccupationPeriod(String occupationPeriod) {
		this.occupationPeriod = occupationPeriod;
	}

	public String getStudyPeriod() {
		return studyPeriod;
	}

	public void setStudyPeriod(String studyPeriod) {
		this.studyPeriod = studyPeriod;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}
	
	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getEMail() {
		return EMail;
	}

	public void setEMail(String eMail) {
		EMail = eMail;
	}

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
}
