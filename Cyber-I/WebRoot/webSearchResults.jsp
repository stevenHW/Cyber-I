<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
<link rel="stylesheet" href="css/giftbox.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="buttons/buttons.css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="js/trans3d.js" type="text/javascript"></script>
<script src="js/test.js" type="text/javascript"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script>
   	var latitude;
   	var longitude;
   	var address;
   	var geocoder;
   	var latlng;
	function setLocation(){
	  if (navigator.geolocation){
	    navigator.geolocation.getCurrentPosition(setPosition);
	  }else{
		x.innerHTML="Geolocation is not supported by this browser.";
	  }
	}
	function setPosition(position){
	  latitude = position.coords.latitude;
	  document.getElementById("latitude").value = position.coords.latitude;
	  longitude = position.coords.longitude;
	  document.getElementById("longitude").value = position.coords.longitude;
	  document.getElementById("timestamp").value = position.timestamp;
	  codeLatLng();
	}
	function codeLatLng() {
		geocoder = new google.maps.Geocoder();
		var lat = parseFloat(latitude);
 			var lng = parseFloat(longitude);
 			latlng = new google.maps.LatLng(lat, lng);
 			geocoder.geocode({'latLng': latlng}, function(results, status) {
	    if (status == google.maps.GeocoderStatus.OK) {
	      if (results[1]) {
	        address = results[1].formatted_address;
	        document.getElementById("address").value = address;
	      } else {
	        alert('No results found');
	      }
	    } else {
	      alert('Geocoder failed due to: ' + status);
	    }
	  });
	}
</script>
<title>WebSearchResult</title>
<style>
.webResultTable {
	width: 900px;
	padding: 0;
	display:block;
	margin:0 auto auto;
}


th {
	font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
	color: #4f6b72;
	border-right: 1px solid #C1DAD7;
	border-bottom: 1px solid #C1DAD7;
	border-top: 1px solid #C1DAD7;
	letter-spacing: 2px;
	text-transform: uppercase;
	text-align: center;
	padding: 6px 6px 6px 12px;
	background: #CAE8EA url(images/bg_header.jpg) no-repeat;
}

th.nobg {
	border-top: 0;
	border-left: 0;
	border-right: 1px solid #C1DAD7;
	background: none;
}

td {
	border-right: 1px solid #C1DAD7;
	border-bottom: 1px solid #C1DAD7;
	background: #fff;
	padding: 6px 6px 6px 12px;
	color: #4f6b72;
	text-align: center;
}


td.alt {
	background: #F5FAFA;
	color: #797268;
}

th.spec {
	border-left: 1px solid #C1DAD7;
	border-top: 0;
	background: #fff url(images/bullet1.gif) no-repeat;
	font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
}

th.specalt {
	border-left: 1px solid #C1DAD7;
	border-top: 0;
	background: #f5fafa url(images/bullet2.gif) no-repeat;
	font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
	color: #797268;
}

h1 {
	font: italic 24px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
	text-align: center;
}



</style>
</head>
<body>

<div class="header" id="top">
				<div class="wrap">
				<!---start-logo---->
				<div>
					<h1 align="center" ><font size="14px" color="white" >Web Search Result</font></h1>
					<!--  a href="index.jsp"><img src="images/logo.png" title="logo" /></a-->
				</div>
				<!---End-logo---->	
				<!---start-top-nav---->
				<div class="top-nav">
					<ul>
						<li class="active"><a href="index.jsp">Home</a></li>
						<li><a href="my_cyber-I.jsp">My Cyber-I</a></li>
						<li><a href="webSearch.jsp">Web Search</a></li>										
					</ul>
				</div>				
				<!---End-top-nav---->				
			</div>
			<!---End-header---->
		</div>
		
		<div class="content">
		
			<div class="border">
			</div>
				<div >
					<div >
					<form action="saveWebResults.action" method="post">
						
						<table class="webResultTable">
							<tr>
					  			<th>Title</th>
					  			<th>Url</th> 
					  			<th>Insert Into Database?</th>
							</tr>
						<s:iterator id="a" value="#session.webResults" status="L">
							<tr>
					    		<td><s:property value="#a.title" /></td>
					    		<td><a target="_blank" href="<s:property value="#a.url" />"><s:property value="#a.url" /></a></td>
					    		<td><input type="checkbox" name="w<s:property value="#L.index"/>" checked></td>
					   		</tr>
					   	</s:iterator>	
						</table> 
					    
						<div align="center">
						<input type="submit" class="button small blue" value="Insert"/>
						</div>
					
						</form>
					</div>
	   		
				</div>
		</div>
	

	
	<div class="border">
			</div>
			<div class="footer">
				<div class="wrap">
					<div class="footer-left">
						<a href="index.jsp"><img src="" alt="" /></a>
					</div>
					<div class="footer-right">
						<a href="#top" class="scroll"> </a>
						<p><a target="_blank" href="index.jsp">Huang Wei</a></p>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
		
</body>
</html>
