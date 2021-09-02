package com.test;

import java.io.FileOutputStream;
import java.io.IOException;

public class json_test {

	
	
	public void fileoutput() throws IOException {
		// TODO Auto-generated method stub
        try{        	
        	JSON_toString jsonToString=new JSON_toString();
        	String s =jsonToString.toString();
    		//FileOutputStream fos=new FileOutputStream("/Users/huangwei/Desktop/jsp1.json");
    		FileOutputStream fos = new FileOutputStream("/Users/huangwei/Workspaces/MyEclipse Professional 2014/Cyber-I/WebRoot/json_test1.json");              
            fos.write(s.getBytes());  
            fos.close();
            System.out.println("Success");
    		}
    		catch (Exception e) {  
                e.printStackTrace(); 
    		}
		
	}

}
