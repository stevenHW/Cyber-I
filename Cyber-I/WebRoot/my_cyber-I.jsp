<!DOCTYPE HTML>
<%@ taglib uri="/struts-tags" prefix="s" %> 
<html>
	<head>
		<title>My Cyber-I</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=Archivo+Narrow' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="css/page.css" />
		<link rel="stylesheet" type="text/css" href="buttons/buttons.css" />
		<link  type="text/css" href="css/tab.css" rel="stylesheet"/>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js" ></script>
	<script type="text/javascript">
$(function(){

	$(".soft_con_icon ul li a").mouseover(function(){
		var id = $(this).attr("id");
		var x=$(this).parent().index();
		$(this).children("p").css({"color":"#008dd9"}).parent().parent().siblings().children().children("p").css({"color":"#333333"});
		var src1=id+"_hover.gif";
		$(".soft_con_icon ul li a").each(function(index, element) {
         	var other_id = $(this).attr("id");
			if(id == other_id){
			   $(this).children("img").attr("src","images/tab/"+src1);
			}else{
			   var src2 = other_id+".gif";
			   $(this).children("img").attr("src","images/tab/"+src2);
			}
        });
		if(x==0){
		   $("#xzgl").css({"display":"block"}).siblings().css({"display":"none"});
		   $(".soft_con1").css({"background":" url(images/tab/line_select_001.gif)"});
		}else if(x==1){
		   $("#crm").css({"display":"block"}).siblings().css({"display":"none"});
		   $(".soft_con1").css({"background":"url(images/tab/line_select_002.gif)"});
		}else if(x==2){
		   $("#xmgl").css({"display":"block"}).siblings().css({"display":"none"});
		   $(".soft_con1").css({"background":"url(images/tab/line_select_003.gif)"});
		}else if(x==3){
		   $("#zsgl").css({"display":"block"}).siblings().css({"display":"none"});
		   $(".soft_con1").css({"background":"url(images/tab/line_select_004.gif)"});
		}
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
					
					<h1 align="center" ><font size="20px" color="white" >My Cyber-I</font></h1>
				</div>
				<!---End-logo---->	
				<!---start-top-nav---->
				<div class="top-nav">
					<ul>
						<li><a href="index.jsp">Home</a></li>
					
						<!--li><a href="about.jsp">Personal Information</a></li-->
						<li class="active"><a href="my_cyber-I.jsp">My Cyber-I</a></li>
						<!--li><a href="gallery.jsp">Gallery</a></li-->
						
					</ul>
				</div>
				<!---End-top-nav---->
			</div>
			<!---End-header---->
		</div>
			<h2 align="center"><font size="7px" color="black">Welcome! <%=(String)session.getAttribute("name")%></font></h2><br>
		<!---start-content----->
		<div class="soft_function">
			<div class="soft_con_icon">
		<ul>
			<li><a id="pic_fun_adm" href="#"><img src="images/tab/pic_fun_adm_hover.gif" width="150" height="150"/><p style="color:#008dd9">Show My Cyber-I</p></a></li>
			<li><a id="pic_fun_crm" href="#"><img  src="images/tab/pic_fun_crm.gif" width="180" height="150"/><p>Grow My Cyber-I</p></a></li>
			<li><a id="pic_fun_project" href="#"><img  src="images/tab/pic_fun_project.gif" width="150" height="150"/><p>Change Cyber-I Data</p></a></li>
			<li><a id="pic_fun_k" href="#"><img  src="images/tab/pic_fun_k.gif" width="150" height="150"/><p>System Management</p></a></li>			
		</ul>
	</div> 

	<div class="soft_con1" style="background:url(images/tab/line_select_001.gif);"></div>

	<div class="soft_con">

		<div id="xzgl" class="soft_con2">
			<div class="function1">			
				<img src="images/tab/pic_fun_adm_detailed_001.gif"/>
				<div class="div" >
				<form  action="showBasicData.action" method="post"  >
					   		<input  type="submit" value="Show Basic Data" class="button small blue"/>
					   	</form>
				</div>
						
			</div>
			<div class="function1">
				<img src="images/tab/pic_fun_adm_detailed_002.gif"/>
				<div class="div" >
				<form  action="showModelData.action" method="post"  >
					   		<input  type="submit" value="Show Model Data" class="button small orange"/>
					   	</form>
				</div>
			</div>
			<div class="function1">
				<img src="images/tab/pic_fun_adm_detailed_003.gif"/>
				<div class="div" >
				<form  action="" method="post"  >
					   		<input  type="submit" value="Show All Data" class="button small green"/>
					   	</form>
				</div>
			</div>
			<div class="function2">
			<!--	<img src="images/tab/pic_fun_adm_detailed_004.gif"/>
				<div class="div" >
				<form  action="" method="post"  >
					   		<input  type="submit" value="Others" class="button small gray"/>
					   	</form>
				</div>-->
			</div>
		</div>
	
		<div id="crm" class="soft_con2" style="display:none">
			<div class="function1">
				<img src="images/tab/pic_fun_crm_detailed_001.gif"/>
				<div class="div" >
				<form  action="growbigger.action" method="post"  >
					  	 	<input  type="submit" value="Grow Bigger" class="button small blue"/>
					   	</form>	
					   	</div>
			</div>
			<div class="function1">
				<img src="images/tab/pic_fun_crm_detailed_002.gif"/>
				<div class="div" >
				<form  action="" method="post"  >
					  	 	<input  type="submit" value="Grow Higher" class="button small orange"/>
					   	</form>	
					   	</div>
			</div>
			<div class="function1">
				<img src="images/tab/pic_fun_crm_detailed_003.gif"/>
				<div class="div" >
						<a href="interactive_closer.jsp"><input  type="submit" value="Grow Closer" class="button small green"/></a>
					   	</div>
			</div>
			<div class="function2">
				<img src="images/tab/pic_fun_crm_detailed_004.gif"/>
				<div class="div" >
					   	<a href="growManagement.jsp"><input  type="submit" value="Growth Management" class="button small gray"/></a>
					   	</div>
			</div>
		</div>
	
		<div id="xmgl" class="soft_con2" style="display:none">
			<div class="function1">
				<img src="images/tab/pic_fun_project_detailed_001.gif"/>
				<div class="div" >
				
					  	 	<a href="change_basic_data.jsp"><input  type="submit" value="Change Basic Data" class="button small blue"/></a>
					   	
					   	</div>
			</div>
			<div class="function1">
				<img src="images/tab/pic_fun_project_detailed_002.gif"/>
				<div class="div" >
				
					  	 	<a href="addRawData.jsp"><input  type="submit" value="Add Raw Data" class="button small orange"/></a>
					   	
					   	</div>
			</div>
			<div class="function1">
			<!--  	<img src="images/tab/pic_fun_project_detailed_003.gif"/>
				<div class="div" >
				<form  action="" method="post"  >
					  	 	<input  type="submit" value="" class="button small green"/>
					   	</form>	
					   	</div>-->
			</div>
			<div class="function2">
			<!--	<img src="images/tab/pic_fun_project_detailed_004.gif"/>
				<div class="div" >
				<form  action="" method="post"  >
					  	 	<input  type="submit" value="" class="button small gray"/>
					   	</form>	
					   	</div>-->
			</div>
		</div>
	
		<div id="zsgl" class="soft_con2" style="display:none">
			<div class="function1">
				<!--  <img src="images/tab/pic_fun_k_detailed_001.gif"/>-->
				
			</div>
			<div class="function1">
				<!--<img src="images/tab/pic_fun_k_detailed_002.gif"/>-->
				
			</div>
			<div class="function1">
				<!--<img src="images/tab/pic_fun_k_detailed_003.gif"/>-->
				
			</div>
			<div class="function2">
				<!--<img src="images/tab/pic_fun_k_detailed_004.gif"/>-->
				
			</div>
		</div>		
	</div>	
		</div>
			<div class="footer">
				<div class="wrap">
					<div class="footer-left">
						<a href="index.jsp"></a>
					</div>
					<div class="footer-right">
						<a href="#top" class="scroll"> </a>
						<p></p>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
		
		<!---End-content----->
		<!---End-wrap---->
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

