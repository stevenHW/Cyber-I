<%@ page language="java" import="java.util.*" pageEncoding="US-ASCII"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Show My Cyber-I</title>
    <link rel='stylesheet' href='css/reset.css'>
    <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
    <link rel="stylesheet" type="text/css" href="css/page.css" />
	<link rel="stylesheet" type="text/css" href="buttons/buttons.css" />
    <link rel="stylesheet" type="text/css" href="css/listreset.css" />
    <link rel="stylesheet" type="text/css" href="css/liststyle.css" />  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
   
  <div class="header" id="top">
				<div class="wrap">
				<!---start-logo---->
				<div class="logo">
					<h1 align="center" ><font size="20px" color="white" >Cyber-I Model Data</font></h1>
				</div>
				<!---End-logo---->	
				<!---start-top-nav---->
				<div class="top-nav">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li class="active"><a href="model_data.jsp">Model Data</a></li>
						<li ><a href="growthLog.jsp">Growth Log</a></li>
					</ul>
				</div>
				<!---End-top-nav---->
			</div>
			<!---End-header---->
		</div>
		<div class="wel-mesg">
			<h2 ><font size="12px" >Welcome! Mr. <%=(String)session.getAttribute("lastname")%></font></h2>
		</div>
				 <div class="radmenu"><a href="#" class="show" >Cyber-I Model Data</a>
				  <ul>
				    <li>
				      <a href="#" class="">Favourite Web Style</a>
				      <ul>
				        <li><a href="#"><%=(String)session.getAttribute("favoriteWebStyle")%></a></li>
						<li><a href="#"><%=(String)session.getAttribute("favoriteWebStyle1")%></a></li>
				      </ul>
				    </li>
				    <li>
				      <a href="#">Favourite Food</a>
				      <ul>
				        <li><a href="#"></a></li>
				        <li><a href="#"></a></li>
				        <li><a href="#"></a></li>				       
				      </ul>
				    </li>
				    <li>
				      <a href="#"></a>
				      <ul>
				        <li><a href="#">Sub Menu 1</a></li>
				        <li><a href="#">Sub Menu 2</a></li>
				        <li><a href="#">Sub Menu 3</a></li>
				        <li><a href="#">Sub Menu 4</a></li>
				        
				      </ul>
				    </li>
				    <li>
				      <a href="#"></a>
				      <ul>
				        <li><a href="#">Sub Menu 1</a></li>
				        <li><a href="#">Sub Menu 2</a></li>
				        <li><a href="#">Sub Menu 3</a></li>
				        <li><a href="#">Sub Menu 4</a></li>
				        <li><a href="#">Sub Menu 5</a></li>
				      </ul>
				    </li>
				    <li>
				      <a href="#"></a>
				      <ul>
				        <li><a href="#">Sub Menu 1</a></li>
				        <li><a href="#">Sub Menu 2</a></li>
				        <li><a href="#">Sub Menu 3</a></li>
				        <li><a href="#">Sub Menu 4</a></li>
				        <li><a href="#">Sub Menu 5</a></li>
				      </ul>
				    </li>
				  </ul>
				</div>    
				<script src="js/circleList.js"></script>   
       
  </body>
</html>
