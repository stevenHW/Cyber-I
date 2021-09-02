<%@ taglib uri="/struts-tags" prefix="s" %> 
<html>
	<head>
		<title>Interactive Closer</title>
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
					<h1 align="center" ><font size="20px" color="white" >Interactive Closer</font></h1>
				</div>
				<!---End-logo---->	
				<!---start-top-nav---->
				<div class="top-nav">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li class="active"><a href="">Interactive Closer</a></li>
						
					</ul>
				</div>
				<!---End-top-nav---->
			</div>
			<!---End-header---->
		</div>
	
		<!---start-content----->
		
			<h2 align="center"><font size="18px" >Closer</font></h2>
		
		<div  align="center" >
			
			<form method="post" action="" >
			
				<table >
				
					<tr>
						<td style="width:150px" align="center" >	Favourite Web Type: 	</td>
						<td align="center">Is it Accurate? </td>
						
					</tr>
					<tr>
						
						<td style="width:120px" align="center"><%=(String)session.getAttribute("favoriteWebStyle") %>: </td>
						<td align="center">	
							<select name="checkCloser" onchange="" style="width:180px ">
				                   
				                   <option value="Accurately">Accurately</option>
				                   <option value="NotAccurately">Not Accurately</option>
				                   <option value="NotSure">I'm not sure!</option>
							</select>	
						</td>						
					</tr>
				
					<tr>
						
						<td align="center"><%=(String)session.getAttribute("favoriteWebStyle1") %>: </td>
						<td align="center">	
							<select name="checkCloser1" onchange="" style="width:180px ">
				                   
				                   <option value="Accurately">Accurately</option>
				                   <option value="NotAccurately">Not Accurately</option>
				                   <option value="NotSure">I'm not sure!</option>
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

