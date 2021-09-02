<!DOCTYPE HTML>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
	<head>
		<title>Cyber-I Management System</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="js/jquery-1.2.3.min"></script>
		<script src="js/responsiveslides.min.js"></script>
		  <script>		    
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
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
				<div>
					<h1 align="center" ><font size="14px" color="white" >CYBER-I MANAGEMENT SYSTEM</font></h1>
					<!--  a href="index.jsp"><img src="images/logo.png" title="logo" /></a-->
				</div>
				<!---End-logo---->	
				<!---start-top-nav---->
				<div class="top-nav">
					<ul>
						<li class="active"><a href="index.jsp">Home</a></li>
						
						<li><a href="my_cyber-I.jsp">My Cyber-I</a></li>
						<!--  <li><a href="model_data2.jsp">Model Data</a></li>	
						<!--<li><a href="growManagement.jsp">grow Management</a></li>
						
						
						<!--<li><a href="webSearch.jsp">Web Search</a></li>
						<li><a href="ImagesSearch.jsp">Images Search</a></li>-->
						<li><a href="log_out.jsp">Log Out</a></li>
																
					</ul>
				</div>
				
				<script>
 					 window.fbAsyncInit = function() {
 					   FB.init({
  					    appId      : '1633767786844733',
  					    xfbml      : true,
  					    version    : 'v2.3'
 					 	  });
 						 };

  					(function(d, s, id){
  					   var js, fjs = d.getElementsByTagName(s)[0];
 					    if (d.getElementById(id)) {return;}
					     js = d.createElement(s); js.id = id;
   						  js.src = "//connect.facebook.net/en_US/sdk.js";
  						   fjs.parentNode.insertBefore(js, fjs);
 							  }(document, 'script', 'facebook-jssdk'));
				</script>			
				<!---End-top-nav---->
				<!--start-image-slider---->
					<div class="image-slider">
						<!-- Slideshow 1 -->
					    <ul class="rslides" id="slider1">
					      <li><img src="images/cyber-I_defination_new.png" alt=""></li>
					    </ul>
						 <!-- Slideshow 2 -->
					</div>
					<!--End-image-slider---->
			</div>
			<!---End-header---->
		</div>
		<!---start-content----->
		<div class="content">
		
			<div class="border">
			</div>
				<div class="wel-mesg">
					<div class="wrap">
					<h2>Welcome to Cyber World! Mr. <%=(String)session.getAttribute("lastname")%></h2>
					<p>Cyber-I: Digital Clone of Yourself.</p>
					   
					</div>
	   		
				</div>
				
			<div class="border">
			</div>
			<div class="content-banner">
				<div class="wrap">
				<div class="content-banner-info">
					<p>Cyber-Individual (Cyber-I) is the counterpart of a real individual in the physical world, which can be viewed as a comprehensive digital description and living entity of an individual human.It tries to re-examine and analyze human essence in the digital era. Cyber-I's vision is to create a unique, digital, comprehensive description for every real person being in the cyberspace.</p>
					<h3><a href="http://cis.k.hosei.ac.jp/~jianhua/">--Prof.Jianhua Ma</a></h3>
					<div class="clear"> </div>
				</div>
				<div class="content-banner-info-banner">
						<a href="#"><img src="images/cyber-individual.jpg" title="abnner"></a>
					</div>
					<div class="clear"> </div>
			</div>
		</div>
		<div class="bottom-grids">
							<div class="wrap">
								<div class="bottom-grid1">
									<h3>Cyber-I's Birth</h3>
									<span>Before the creation of Cyber-I's modeling, increasing personal data must be collected to provide nutrition for Cyber-I model</span>
									<p>Data collection will continue to do until having enough data to finish Cyber-I's Birth. At the end of this stage, an initial Cyber-I's model will be created.</p>
									<br>
									<a class="button" href="https://cis.k.hosei.ac.jp/~jianhua/mahome/Hyperspace%20and%20Cyber-I.pdf">More Information</a>
								</div>
								<div class="bottom-grid2 bottom-mid">
									<h3>Cyber-I's Growth</h3>
									<span>After birth stage, an initial Cyber-I model is not a comprehensive or perfect model for Real-I yet.</span>
									<p>We should keep on offering nutrition--increasing data to Cyber-I so that the model of Cyber-I could grow up and become more and more similar to Real-I's actual characteristics.</p>
									<div class="gallery">
										<br>
										<a class="button" href="https://cis.k.hosei.ac.jp/~jianhua/mahome/Cyber-Individual_Meets_Brain_Informatics.pdf">More Information</a>
								</div> 
							</div>
							<div class="bottom-grid1 bottom-last">
									<h3>Cyber-I's Death</h3>
									<span>Similar to human being's death, Cyber-I model will be dead when its Real-I dead.</span>
									<p>In this stage, the growth of Cyber-I should be stopped. There are three different ways for Cyber-I's death, which includes halt, deletion, donation.</p>
									<br>
									<a class="button" href="">More Information</a>
								</div>
								<div class="clear"> </div>
							</div>
							<div class="clear"> </div>
	<!--end-wrap--->
	 </div>
	 <div class="fb-like"
 					 data-share="true"
 					 data-width="450"
 					 data-show-faces="true">
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
		</div>
		<!---End-content----->
		<!---End-wrap---->
	
</body>
</html>

