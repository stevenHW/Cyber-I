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
    <script src='js/jquery-1.9.1.min.js'></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<style class="cp-pen-styles">* {
  -moz-box-sizing: border-box;
       box-sizing: border-box;
}

body {
  margin: 0;
  padding: 0;
  font-family: 'Avenir Next';
  background: #000;
  color: white;
}

.menu {
  background: tomato;
  padding: 20px;
  position: absolute;
  z-index: 1;
  height: 55px;
  top: 0;
  right: 50px;
}

.list {
  -webkit-perspective: 100vw;
          perspective: 100vw;
  width: 100vw;
  height: 100vh;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-flow: column wrap;
      -ms-flex-flow: column wrap;
          flex-flow: column wrap;
}
.list.hidden {
  pointer-events: none;
}
.list.hidden .item {
  -webkit-animation: disappear both;
          animation: disappear both;
  -webkit-animation-direction: alternate;
          animation-direction: alternate;
}
.list.reverse {
  -webkit-flex-flow: row-reverse wrap-reverse;
      -ms-flex-flow: row-reverse wrap-reverse;
          flex-flow: row-reverse wrap-reverse;
}

.item {
  font-size: 30px;
  padding: 20px;
  height: 100px;
  width: calc(100vw / 3);
  height: calc(100vh / 4);
  -webkit-animation: appear both;
          animation: appear both;
}

.item:nth-child(1) {
  background: #008a8a;
  -webkit-animation-delay: 0.03333s !important;
  -webkit-animation-duration: 0.1s !important;
}

.item:nth-child(2) {
  background: #009494;
  -webkit-animation-delay: 0.06667s !important;
  -webkit-animation-duration: 0.2s !important;
}

.item:nth-child(3) {
  background: #009f9f;
  -webkit-animation-delay: 0.1s !important;
  -webkit-animation-duration: 0.3s !important;
}

.item:nth-child(4) {
  background: #00a9a9;
  -webkit-animation-delay: 0.13333s !important;
  -webkit-animation-duration: 0.4s !important;
}

.item:nth-child(5) {
  background: #00b3b3;
  -webkit-animation-delay: 0.16667s !important;
  -webkit-animation-duration: 0.5s !important;
}

.item:nth-child(6) {
  background: #00bdbd;
  -webkit-animation-delay: 0.2s !important;
  -webkit-animation-duration: 0.6s !important;
}

.item:nth-child(7) {
  background: #00c7c7;
  -webkit-animation-delay: 0.23333s !important;
  -webkit-animation-duration: 0.7s !important;
}

.item:nth-child(8) {
  background: #00d2d2;
  -webkit-animation-delay: 0.26667s !important;
  -webkit-animation-duration: 0.8s !important;
}

.item:nth-child(9) {
  background: #00dcdc;
  -webkit-animation-delay: 0.3s !important;
  -webkit-animation-duration: 0.9s !important;
}

.item:nth-child(10) {
  background: #00e6e6;
  -webkit-animation-delay: 0.33333s !important;
  -webkit-animation-duration: 1s !important;
}

.item:nth-child(11) {
  background: #00f0f0;
  -webkit-animation-delay: 0.36667s !important;
  -webkit-animation-duration: 1.1s !important;
}

.item:nth-child(12) {
  background: #00fafa;
  -webkit-animation-delay: 0.4s !important;
  -webkit-animation-duration: 1.2s !important;
}

@-webkit-keyframes appear {
  from {
    opacity: 0;
    -webkit-transform: scale(0.8);
            transform: scale(0.8);
  }
  to {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1);
  }
}

@keyframes appear {
  from {
    opacity: 0;
    -webkit-transform: scale(0.8);
            transform: scale(0.8);
  }
  to {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1);
  }
}
@-webkit-keyframes disappear {
  from {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  to {
    opacity: 0;
    -webkit-transform: scale(0.9) rotateX(0deg) translateZ(-1500px);
            transform: scale(0.9) rotateX(0deg) translateZ(-1500px);
  }
}
@keyframes disappear {
  from {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  to {
    opacity: 0;
    -webkit-transform: scale(0.9) rotateX(0deg) translateZ(-1500px);
            transform: scale(0.9) rotateX(0deg) translateZ(-1500px);
  }
}
</style>	


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
						
					</ul>
				</div>
				<!---End-top-nav---->
			</div>
			<!---End-header---->
		</div>
		<div class="wel-mesg">
			<h2 ><font size="12px" >Welcome! Mr. <%=(String)session.getAttribute("lastname")%></font></h2>
		</div>
  <div>
    <ul class='list reverse'>
      <li class='item'></li>
      <li class='item'></li>
   	  <li class='item'>Favourite Web Style: <br><%=(String)session.getAttribute("favoriteWebStyle")%></li>
  	  <li class='item'>Study Period: <br><%=(String)session.getAttribute("studyPeriod")%></li>
  	  <li class='item'>University: <br><%=(String)session.getAttribute("university")%></li>
  	  <li class='item'>Occupation Period: <br><%=(String)session.getAttribute("occupationPeriod")%></li>
  	  <li class='item'>Occupation: <br><%=(String)session.getAttribute("occupation")%></li>
  	  <li class='item'>Age: <br><%=(String)session.getAttribute("age")%></li>
  	  <li class='item'>Birthday: <br><%=(String)session.getAttribute("birthday")%></li>
  	  <li class='item'>Gerder: <br><%=(String)session.getAttribute("gender")%></li>
  	  <li class='item'>E-Mail: <br><%=(String)session.getAttribute("EMail")%></li>
      <li class='item'>Name: <br><%=(String)session.getAttribute("name")%></li>     
    </ul>
    </div>    
    
       <div align="center">
					   	
		 <a href="my_cyber-I.jsp" class="button small blue">Back to My Cyber-I</a>
					   	
	   </div>
    
    <div class="border">
			</div>
			<div class="footer">
				<div class="wrap">
					<div class="footer-left">
						<a href="model_data.jsp"><img src="" alt="" /></a>
					</div>
					<div class="footer-right">
						<a href="#top" class="scroll"> </a>
						<p><a target="_blank" href="model_data.jsp">Huang Wei</a></p>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
		</div>
  </body>
</html>
