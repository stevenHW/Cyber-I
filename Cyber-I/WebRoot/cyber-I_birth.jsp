<!DOCTYPE HTML>
<%@ taglib uri="/struts-tags" prefix="s" %>  
<html>
	<head>
		<title>Cyber-I Birth</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=Archivo+Narrow' rel='stylesheet' type='text/css'>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
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
					<h1 align="center" ><font size="20px" color="white" >Cyber-I's Birth</font></h1>
				</div>
				<!---End-logo---->	
				<!---start-top-nav---->
				<div class="top-nav">
					<ul>
						<li><a href="welcome.jsp">Welcome</a></li>
						<!--li><a href="index.jsp">About</a></li-->
						<!--  li><a href="services.jsp">Services</a></li>
						<li><a href="gallery.jsp">Gallery</a></li>
						<li class="active"><a href="contact.jsp">Contact</a></li-->
					</ul>
				</div>
				<!---End-top-nav---->
			</div>
			<!---End-header---->
		</div>
	
		<!---start-content----->
			<!---start-contact----->
			<div class="contact">
		 		<div class="wrap">
		 			<div class="top-head">
						
					</div>
				<div class="section group">				
				<div class="col span_1_of_3">
					<div class="contact_info">
			    	 	<h3>You Are Here!</h3>
			    	 		<div class="map">
					   			
					   			<iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d3239.6908586230484!2d139.52112915979728!3d35.70922434143573!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1428846671806" width="100%" height="175" ></iframe>
					   			<!--  iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="&amp;output=embed"></iframe-->
					   			<br><small><a href="https://www.google.com/maps/@35.7092243,139.5211292,17z?hl=en" style="color:#666;text-align:left;font-size:12px">View Larger Map</a></small>
					   		</div>
					   		
      				</div>
      			<div class="company_address">
				     	<h3></h3>
						    	<p></p>
						   		<p></p>
						   		<p></p>
				   		<p></p>
				   		<p></p>
				 	 	<p></p>
				   		<p></p>
				   </div>
				</div>	
							
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h3>Please input your Personal Information!</h3>
					    <form method="post" action="register.action">
					        <div>
						    	<span><label>E-Mail</label></span>
						    	<input name="email" type="text" class="textbox">
						    </div>
						    <div>
						    	<span><label>Last Name</label></span>
						    	<span><input name="lastname" type="text" class="textbox"></span>
						    </div>						    		
						    <div>
						    	<span><label>First Name</label></span>
						    	<span><input name="firstname" type="text" class="textbox"></span>
						    </div> 
						    <div>
						    	<span><label>Gender</label></span>
						    	<span><input name="gender" type="text" class="textbox"></span>
						    </div> 					    
						    <div>
						    <span><label>Birthday</label></span>
						    	<span><input name="birthday" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>Occupation</label></span>
						    	<span><input name="occupation" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>Occupation Period(Example: YYYY.MM-YYYY.MM)</label></span>
						    	<span><input name="occupationperiod" type="text" class="textbox"></span>
						    </div>
						     <div>
						    	<span><label>Education(University Name)</label></span>
						    	<span><input name="university" type="text" class="textbox"></span>
						    </div>
						     <div>
						    	<span><label>Education Period(Example: 4 years)</label></span>
						    	<span><input name="universityperiod" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>User Name</label></span>
						    	<span><input name="username" type="text" class="textbox"></span>
						    </div>		    
						    	<div>
						    	<span><label>Password</label></span>
						    	<span><input name="password" type="password" class="password"></span>
						    </div>
						    	<div>
						    	<span><label>Re-Password</label></span>
						    	<span><input name="repassword" type="password" class="password"></span>
						    </div>						    
						    <div>
						   	<span><input type="submit" value="Birth"></span>
						    </div>
					    </form>
				    </div>
  				</div>				
			  </div>
			</div>
			<!---End-contact----->
		</div>
			<div class="footer">
				<div class="wrap">
					<div class="footer-left">
						<a href=""><img src="" alt="" /></a>
					</div>
					<div class="footer-right">
						<a href="#top" class="scroll"> </a>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
		
		<!---End-content----->
		<!---End-wrap---->
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'  charset='gb2312'></script></div>
</body>
</html>

