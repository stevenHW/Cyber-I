<!DOCTYPE HTML>
<%@ taglib uri="/struts-tags" prefix="s" %>  
<html>
	<head>
		<title>Add Raw Data</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<!-- <link rel="stylesheet" href="css/listreset.css"> -->
       
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
		
   <style> 

	* { margin: 0; padding: 0; }
	body { padding: 40px; background: #eee; font-family: Arial; font-size: 16px; line-height: 18px; }
	a { text-decoration: none;  }
		
	.button {
		padding: 11px 21px 13px;
		display: inline;
		border: 2px solid #FFF;
		color: #fff;
		cursor: pointer;
		font-weight: bold;
		border-radius: 5px;
		-moz-border-radius: 5px;
		-webkit-border-radius: 5px;
		text-shadow: 1px 1px #666;
box-shadow:inset 0px -4px 21px 0px #f0f0f0;
-moz-box-shadow:inset 0px -4px 21px 0px #f0f0f0;
-webkit-box-shadow:inset 0px -4px 21px 0px #f0f0f0;
box-shadow:0px 2px 21px 5px #3f3f3f;
-moz-box-shadow:0px 2px 21px 5px #3f3f3f;
-webkit-box-shadow: 0px 2px 21px 5px #3f3f3f;

		}
	.button:hover {

		}
	.button:active {
		position: relative;
		top: 6px;
		text-shadow: 2px 2px #666;
		padding: 10px 21px 10px;
box-shadow:inset 0px 4px 21px 5px #e5e5e5;
-moz-box-shadow:inset 0px 4px 21px 5px #e5e5e5;
-webkit-box-shadow:inset 0px 4px 21px 5px #e5e5e5;

box-shadow: 0px 0px 21px 0px #3f3f3f;
-moz-box-shadow: 0px 0px 21px 0px #3f3f3f;
-webkit-box-shadow: 0px 0px 21px 0px #3f3f3f;
}


	.blue { background-color: #56c6d9; }
	.green { background-color: #99dc30; }
	.orange { background-color: #ffd22e; }
	.violet { background-color: #c5b8f6; }
	.pink { background-color: 	#fe2192; }	
	
	.green_grad {
	background: url(images/green.png) repeat-x;	/* for all browsers */
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#99DC30', endColorstr='#99DC30');		/* Internet Explorer 6,7 and 8 */
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr='#99DC30', endColorstr='#99DC30')";	/* Internet Explorer 8 only */
   background: -webkit-gradient(linear, left top, left bottom, from(rgba(153,220,48,0.1)), to(rgba(153,220,48,1))); /* for webkit browsers */
   background: -moz-linear-gradient(top, rgba(153,220,48,0.1), rgba(153,220,48,1)); /* for firefox 3.6+ */
   background: -o-linear-gradient(rgba(153,220,48,0.1),rgba(153,220,48,1));  /* For Opera Browsers */
   }
   
	.orange_grad {
	background: url(images/orange.png) repeat-x;	/*	For all browsers*/
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFD230', endColorstr='#FFD230');		/* Internet Explorer 6,7 and 8 */
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr='#FFD230', endColorstr='#FFD230')";	/*Internet Explorer 8 only*/
	background: -webkit-gradient(linear, left top, left bottom, from(rgba(255,210,48,0.1)), to(rgba(255,210,48,1)));		/* for webkit browsers */
   background: -moz-linear-gradient(top, rgba(255,210,48,0.1), rgba(255,210,48,1));		/* for firefox 3.6+ */
   background: -o-linear-gradient(top,rgba(255,210,48,0.1),rgba(255,210,48,1)); /* For Opera Browsers */
   }
   
	.violet_grad {
	background: url(images/violet.png) repeat-x; 	/* For all browsers */
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#C5B8F6', endColorstr='#C5B8F6');	/* Internet Explorer 6,7 and 8*/
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr='#C5B8F6', endColorstr='#C5B8F6')";	/* Internet Explorer 8 only*/
   background: -webkit-gradient(linear, left top, left bottom, from(rgba(197,184,246,0.1)), to(rgba(197,184,246,1))); /* for webkit browsers */
   background: -moz-linear-gradient(top, rgba(197,184,246,0.1), rgba(197,184,246,1)); /* for firefox 3.6+ */
   background: -o-linear-gradient(top,rgba(197,184,246,0.1),rgba(197,184,246,1)); /* For Opera Browsers */
   }
   
	.pink_grad {
	 background: url(images/pink.png) repeat-x;  /* For all browsers */
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#FE2192', endColorstr='#FE2192');		/*Internet Explorer 6,7 and 8*/	
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr='#FE2192', endColorstr='#FE2192')"; 	/* Internet Explorer 8 only */
   background: -webkit-gradient(linear, left top, left bottom, from(rgba(254,33,146,0.1)), to(rgba(254,33,146,1))); /* for webkit browsers */
   background: -moz-linear-gradient(top, rgba(254,33,146,0.1), rgba(254,33,146,1)); /* for firefox 3.6+ */
   background: -o-linear-gradient(top,rgba(254,33,146,0.1),rgba(254,33,146,1));  /* For Opera Browsers */
   }
   
.slider {
	background-color: #fff;
	width:150px;
	height:200px;
	line-height:30px;
	text-align:center;
	color: #555;
	position: relative;
	top: -234px;
	opacity:0.0;  
	filter: alpha(opacity=0);
	-ms-filter:progid:DXImageTransform.Microsoft.Alpha(Opacity=0); 
}
.slider a { display: block; color: #000; font-weight: bold; }

.slider a:hover { background: #f1f1f1; }
#slide { width:736px; margin:auto; height: 330px;  }
.column { float: left; margin-left: 12px; position: relative; }

</style>
<script type="text/javascript" src="js/jquery_slidebutton.js"></script>
	</head>
	<body>
		<!---start-wrap---->
			<!---start-header---->
			<div class="header" id="top">
				<div class="wrap">
				<!---start-logo---->
				<div class="logo">
					<h1 align="center" ><font size="20px" color="white" >Add Raw Data</font></h1>
				</div>
				<!---End-logo---->	
				<!---start-top-nav---->
				<div class="top-nav">
					<ul>
						<li><a href="index.jsp">HOME</a></li>
						<li><a href="my_cyber-I.jsp">My Cyber-I</a></li>
					</ul>
				</div>
				<!---End-top-nav---->
			</div>
			<!---End-header---->
		</div>
	
		

<script type="text/javascript" >
$(document).ready(function(){
		$(".button").toggle(
		function(){
		var clas  = $(this).attr("class");
			$("."+clas.replace('button ','')+"_grad").animate({opacity:'1',top:'50px'}, 500 );
			},
		function(){
		var clas  = $(this).attr("class");
			$("."+clas.replace('button ','')+"_grad").animate({opacity:'0',top:'-300px'}, 500 );
			});

});
</script>

		<br><br>
		
			<div id="slide">
			<div style="clear:both"></div>
			
			<div class="column">
			<div class='button green'>Search Internet</div>
			<div style="" class="green_grad slider">
			<a href="webSearch.jsp">Web Page</a>
			<a href="ImagesSearch.jsp">Images</a>
			</div>
			</div>
			
			
			<div class="column">
			<div class='button orange'>Social Network</div>
			<div style="" class="orange_grad slider">
			<a href="#">Facebook</a>
			<a href="#">Twitter</a>
			</div>
			</div>
			
			
			<div class="column">
			<div class='button violet'>From Devices		</div>
			<div style="" class="violet_grad slider">
			<a href="#">JawBone</a>
			<a href="#">Apple Watch</a>			
			</div>
			</div>
			
			
			<div class="column">
			<div class='button pink'> From Platforms  </div>
			<div style="" class="pink_grad slider">
			<a href="#">Amazon</a>
			<a href="#">Rakutan</a>		
			</div>
			</div>
			</div> <!-- #slider -->
		
			<div class="footer">
				<div class="wrap">
					<div class="footer-left">
						<a href="index.jsp"></a>
					</div>
					
					<div class="clear"> </div>
				</div>
			</div>
		<!---End-content----->
		<!---End-wrap---->
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'  charset='gb2312'></script></div>
</body>
</html>

