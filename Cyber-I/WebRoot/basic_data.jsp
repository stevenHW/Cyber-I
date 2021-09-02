<%@ taglib uri="/struts-tags" prefix="s" %> 
<html>
	<head>
		<title>Basic Data</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=Archivo+Narrow' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="css/page.css" />
		<link rel="stylesheet" type="text/css" href="buttons/buttons.css" />
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<link href="css/jquery-ui.css" rel="stylesheet">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-ui.js"></script>
		   <script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
	</head>
	<body>
		<!---start-wrap---->
			<!---start-header---->
			<div class="header" id="top">
				<div class="wrap">
				<!---start-logo---->
				<div class="logo">
					<h1 align="center" ><font size="20px" color="white" >Cyber-I Basic Data</font></h1>
				</div>
				<!---End-logo---->	
				<!---start-top-nav---->
				<div class="top-nav">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li class="active"><a href="basic_data.jsp">Basic Data</a></li>
						
					</ul>
				</div>
				<!---End-top-nav---->
			</div>
			<!---End-header---->
		</div>
	
		<!---start-content----->
		<div class="content">
			<!---start-about---->
			
			<div class="wel-mesg">
			<h2 ><font size="12px"  >Welcome! Mr. <%=(String)session.getAttribute("name")%> </font></h2>
			
					<div class="wrap" align="center" >
					
					<table class="ui-widget  ui-widget-content" >
						<tr >
							<td class="ui-widget-header">Name:  </td>
							<td><%=(String)session.getAttribute("name")%></td>
						</tr>
						<tr >
							<td class="ui-widget-header">E-Mail:  </td>
							<td><%=(String)session.getAttribute("EMail")%></td>
						</tr>
						<tr >
							<td class="ui-widget-header">Gender:  </td>
							<td><%=(String)session.getAttribute("gender")%></td>
						</tr>
						
						<tr >
							<td class="ui-widget-header">Birthday:  </td>
							<td><%=(String)session.getAttribute("birthday")%></td>
						</tr>
						<tr >
							<td class="ui-widget-header">Age:  </td>
							<td><%=(String)session.getAttribute("age")%></td>
						</tr>
						<tr >
							<td class="ui-widget-header">Occupation:  </td>
							<td><%=(String)session.getAttribute("occupation")%></td>
						</tr>
						
						<tr >
							<td class="ui-widget-header">OccupationPeriod:  </td>
							<td><%=(String)session.getAttribute("occupationPeriod")%></td>
						</tr>
						
						<tr >
							<td class="ui-widget-header">University:  </td>
							<td><%=(String)session.getAttribute("university")%></td>
						</tr>
						
						<tr >
							<td class="ui-widget-header">StudyPeriod:  </td>
							<td><%=(String)session.getAttribute("studyPeriod")%></td>
						</tr>
						
					</table>
					
					<div>
					   	
					   		<a href="my_cyber-I.jsp" class="button small blue">Back to My Cyber-I</a>
					   	
					</div>
					
					<!--  table class="ui-widget  ui-widget-content" >
						<thead>
							<tr class="ui-widget-header">
								<td>NAME</td>
								<td>E-MAIL</td>
								<td>BIRTHDAY</td>
								
							</tr>
						</thead>
						<tbody >
						<tr>
							<td><s:property value="name"/></td>
							<td><s:property value="EMail"/></td>
							<td><s:property value="birthday"/></td>
						</tr>
						</tbody>
					</table-->
					
					
					
					</div>
					
					
					
					
					
				</div>
						
			<!---End-about---->
		</div>
			<div class="footer">
				<div class="wrap">
					<div class="footer-left">
						<a href="index.jsp"><img src="" alt="" /></a>
					</div>
					<div class="footer-right">
						<a href="#top" class="scroll"> </a>
						<p> </p>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
		
		<!---End-content----->
		<!---End-wrap---->
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

