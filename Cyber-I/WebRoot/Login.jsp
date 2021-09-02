<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@ taglib uri="/struts-tags" prefix="s" %>  

<html>
<head>
<title>Cyber-I Management System</title>
<link href="css/loginStyle.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Simple Login Form,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }; function submit(){window.self.location = "index.jsp";} </script>



<!--webfonts-->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>



<!--/start-login-one-->
<h1>Cyber-I Management System</h1>
		<div class="login">	
			<div class="ribbon-wrapper h2 ribbon-red">
				<div class="ribbon-front">
					<h2>Login</h2>
				</div>
				<div class="ribbon-edge-topleft2"></div>
				<div class="ribbon-edge-bottomleft"></div>
			</div>
			<form action="login.action" method="post">
			<ul>
					<li>
						<input type="text" name="usernameHtml" class="text" value="User Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User Name';}" ><a href="#" class=" icon user"></a>
					</li>
					 <li>
						<input type="password" name="passwordHtml" value="PassWord" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'PassWord';}"><a href="#" class=" icon lock"></a>
					</li>
				</ul>
				
				<div class="submit">
					<input type="submit"  value="Log in" />
				</div>				
			</form>
			
		</div>
<!--start-copyright-->
   		<div class="copy-right">
				
		</div>
	<!--//end-copyright-->
</body>
</html>