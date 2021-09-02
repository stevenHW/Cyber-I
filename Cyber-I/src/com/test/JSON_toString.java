package com.test;

import java.util.List;

import net.sf.json.JSONArray;

import com.database.EntityTestMy;

public class JSON_toString {
	
	public String toString()
	{
		@SuppressWarnings("rawtypes")
		List list=null;
		try {
			list = new EntityTestMy().selectAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String json_String=JSONArray.fromObject(list).toString();
		
		System.out.println(json_String);
		return json_String;
	}

}
