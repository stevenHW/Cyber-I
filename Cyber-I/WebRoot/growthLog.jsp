<%@ taglib uri="/struts-tags" prefix="s" %> 
<html>
	<head>
		<title>Growth Log</title>
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
					<h1 align="center" ><font size="20px" color="white" >Cyber-I Growth Log</font></h1>
				</div>
				<!---End-logo---->	
				<!---start-top-nav---->
				<div class="top-nav">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li class="active"><a href="basic_data.jsp">Growth Log</a></li>
						
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
			
			
					<div class="wrap" align="center" >
					
					<table class="ui-widget  ui-widget-content" >
						<tr >
							<td class="ui-widget-header">Type:  </td>
							<td><%=(String)session.getAttribute("type")%></td>
						</tr>
						<tr >
							<td class="ui-widget-header">Data Type:  </td>
							<td><%=(String)session.getAttribute("dataType")%></td>
						</tr>
						<tr >
							<td class="ui-widget-header">Data Content:  </td>
							<td><%=(String)session.getAttribute("dataContent")%></td>
						</tr>
						
						<tr >
							<td class="ui-widget-header">New Model Data:  </td>
							<td><%=(String)session.getAttribute("newModelData")%></td>
						</tr>
						<tr >
							<td class="ui-widget-header">time:  </td>
							<td><%=(String)session.getAttribute("time")%></td>
						</tr>
						<tr >
							<td class="ui-widget-header">Status:  </td>
							<td><%=(String)session.getAttribute("status")%></td>
						</tr>
						
						<tr >
							<td class="ui-widget-header">user:  </td>
							<td><%=(String)session.getAttribute("user")%></td>
						</tr>
						
						<tr >
							<td class="ui-widget-header">Roll Back:  </td>
							<td><%=(String)session.getAttribute("isRollback")%></td>
						</tr>
						
						
					</table>
					
					
					<div>
					   	<form  action="showLog.action" method="post"  >
					  	 	<input  type="submit" value="Show Growth Log" class="button small green"/>
					   	</form>						   				   	
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

