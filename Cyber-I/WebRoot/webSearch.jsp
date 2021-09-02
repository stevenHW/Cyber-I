<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>"> 
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 		
 		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />	
 		<link rel="stylesheet" href="css/normalize.css">
		<link rel="stylesheet" href="css/styleSearchBox.css" media="screen" type="text/css" />
		<title>Search Web Page</title>		
	</head>
	
	<body>	
			<section class="webdesigntuts-workshop">
			<form action="webResults.action" method="post">		    
				<input type="search" name="keywords" placeholder="Searching Web Page">		    	
				<button>Search</button><br>
			</form>
			
			</section>	
			
</body> 
</html> 