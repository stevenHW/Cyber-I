<%@ taglib uri="/struts-tags" prefix="s" %> 
<html>
	<head>
		<title>Growth Management</title>
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
		<style type="text/css">
				body {color:black; line-height: 2}								
		</style>
	</head>
	<body>
		<!---start-wrap---->
			<!---start-header---->
			<div class="header" id="top">
				<div class="wrap">
				<!---start-logo---->
				<div class="logo">
					<h1 align="center" ><font size="20px" color="white" >Growth Management</font></h1>
				</div>
				<!---End-logo---->	
				<!---start-top-nav---->
				<div class="top-nav">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li class="active"><a href="">Growth Management</a></li>	
					</ul>
				</div>
				<!---End-top-nav---->
			</div>
			<!---End-header---->
		</div>
	
		<!---start-content----->
		
			<h2 align="center"><font size="18px" >Scheduling</font></h2>
		
		<div  align="center" >
			
			<form method="post" action="scheduling.action" >
			
				<table >
				
					<tr>
						<td style="width:180px">	Scheduling Type:		</td>
						<td>	
							<select name="schedulingType" onchange="" style="width:180px ">
				                   <option selected>--Choose a scheduling type--</option>
				                   <option value="Data Driven">Data Driven</option>
				                   <option value="Time Driven">Time Driven</option>
							</select>	
						</td>						
					</tr>
				
					<tr>
						<td>	Data Driven:	</td>
						<td></td>
					</tr>
					<tr>
						<td>Unit Weight for Web History Data:	</td>
						<td>
							<select name="webHistoryWeight" onchange="" style="width:180px;  ">
				                   <option selected>--Choose an Unit Weight--</option>
				                   <option value="0.5">0.5 Per Item</option>
				                   <option value="1">1 Per Item</option>
				                   <option value="1.5">1.5 Per Item</option>
				                   <option value="2">2 Per Item</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Data Threshold(Integer):		</td>
						<td>
							<input name="dataThreshold" style="width:180px;" />
						</td>
					</tr>
					<tr>  <td>		</td>   </tr>
					<tr>  <td>		</td>   </tr>
					<tr>
						<td>	Time Driven:	</td>
						<td></td>
					</tr>
					
					
					<tr>
						<td>Lowest Data Threshold(Integer):	</td>
						<td>
							<input name="lowestDataThreshold"  style="width:180px;"/>
						</td>
					</tr>
					
					<tr>
						<td>Time Threshold:	</td>
						<td>
							<select name="timeThreshold" onchange="" style="width:180px;  ">
				                   <option selected>--Choose a time threshold--</option>
				                   <option value="6">6 Hours</option>
				                   <option value="12">12 Hours</option>
				                   <option value="18">18 Hours</option>
				                   <option value="24">24 Hours</option>
							</select>
						</td>
					</tr>
					</font>	
				</table>
			
				<input value="submit" type="submit" class="button small orange"/>
				
			</form>
			
			
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
	<div style="display:none"><script src='' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

