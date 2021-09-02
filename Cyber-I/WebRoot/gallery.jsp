<!DOCTYPE HTML>
<html>
	<head>
		<title>Gallery</title>
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
		<![endif]-->
	<script type="text/javascript" src="js/jquery.easing.min.js"></script>	
	<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
	<script type="text/javascript">
	$(function () {
		
		var filterList = {
		
			init: function () {
			
				// MixItUp plugin
				// http://mixitup.io
				$('#portfoliolist').mixitup({
					targetSelector: '.portfolio',
					filterSelector: '.filter',
					effects: ['fade'],
					easing: 'snap',
					// call the hover effect
					onMixEnd: filterList.hoverEffect()
				});				
			
			},
			
			hoverEffect: function () {
			
				// Simple parallax effect
				$('#portfoliolist .portfolio').hover(
					function () {
						$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
						$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
					},
					function () {
						$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
						$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
					}		
				);				
			
			}

		};
		
		// Run the show!
		filterList.init();
		
		
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
					<a href="index.jsp"><img src="images/logo.png" title="logo" /></a>
				</div>
				<!---End-logo---->	
				<!---start-top-nav---->
				<div class="top-nav">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a href="services.jsp">Services</a></li>
						<li class="active"><a href="gallery.jsp">Gallery</a></li>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</div>
				<!---End-top-nav---->
			</div>
			<!---End-header---->
		</div>
	</div>
		<!---start-content----->
		<div class="content">
			<!---start-about---->
			<div class="gallery1">
				<div class="wrap">
					<div class="top-head">
						<h3>Gallery</h3>
						<ul>
							<li><a href="index.jsp">Home / </a></li>
							<li><a href="#"><span>Gallery</span></a></li>
						</ul>
					</div><br />
					<div class="clear"> </div>
					<div class="container">

					<ul id="filters" class="clearfix">
						<li><span class="filter active" data-filter="app card icon logo web">All</span></li>
						<li><span class="filter" data-filter="app">App</span></li>
						<li><span class="filter" data-filter="card">Card</span></li>
						<li><span class="filter" data-filter="icon">Icon</span></li>
						<li><span class="filter" data-filter="logo">Logo</span></li>
						<li><span class="filter" data-filter="web">Web</span></li>
					</ul>

		<div id="portfoliolist">
			
			<div class="portfolio logo1" data-cat="logo">
				<div class="portfolio-wrapper">				
					<a href="images/s1.jpg" class="flipLightBox">
						<img src="images/s1.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Bird Document</a>
							<span class="text-category">Logo</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>				

			<div class="portfolio app" data-cat="app">
				<div class="portfolio-wrapper">			
					<a href="images/s4.jpg" class="flipLightBox">
						<img src="images/s4.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Visual Infography</a>
							<span class="text-category">APP</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>		
			
			<div class="portfolio web" data-cat="web">
				<div class="portfolio-wrapper">						
					<a href="images/s3.jpg" class="flipLightBox">
						<img src="images/s3.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Sonor's Design</a>
							<span class="text-category">Web design</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>				
			
			<div class="portfolio card" data-cat="card">
				<div class="portfolio-wrapper">			
					<a href="images/s4.jpg" class="flipLightBox">
						<img src="images/s4.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Typography Company</a>
							<span class="text-category">Business card</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>	
						
			<div class="portfolio app" data-cat="app">
				<div class="portfolio-wrapper">
					<a href="images/s1.jpg" class="flipLightBox">
						<img src="images/s1.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Weatherette</a>
							<span class="text-category">APP</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>			
			
			<div class="portfolio card" data-cat="card">
				<div class="portfolio-wrapper">			
					<a href="images/s4.jpg" class="flipLightBox">
						<img src="images/s4.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">BMF</a>
							<span class="text-category">Business card</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>	
			
			<div class="portfolio card" data-cat="card">
				<div class="portfolio-wrapper">			
					<a href="images/s3.jpg" class="flipLightBox">
						<img src="images/s3.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Techlion</a>
							<span class="text-category">Business card</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>	
			
			<div class="portfolio logo1" data-cat="logo">
				<div class="portfolio-wrapper">			
					<a href="images/s4.jpg" class="flipLightBox">
						<img src="images/s4.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">KittyPic</a>
							<span class="text-category">Logo</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>																																							
			
			<div class="portfolio app" data-cat="app">
				<div class="portfolio-wrapper">			
					<a href="images/s1.jpg" class="flipLightBox">
						<img src="images/s1.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Graph Plotting</a>
							<span class="text-category">APP</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>														
			
			<div class="portfolio card" data-cat="card">
				<div class="portfolio-wrapper">			
					<img src="images/s4.jpg" alt="" />
					<div class="label">
						<div class="label-text">
							<a class="text-title">QR Quick Response</a>
							<span class="text-category">Business card</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>				

			<div class="portfolio logo1" data-cat="logo">
				<div class="portfolio-wrapper">			
					<img src="images/s3.jpg" alt="" />
					<div class="label">
						<div class="label-text">
							<a class="text-title">Mobi Sock</a>
							<span class="text-category">Logo</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>																	

			<div class="portfolio logo1" data-cat="logo">
				<div class="portfolio-wrapper">			
					<img src="images/s4.jpg" alt="" />
					<div class="label">
						<div class="label-text">
							<a class="text-title">Village Community Church</a>
							<span class="text-category">Logo</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>													
			
			<div class="portfolio icon" data-cat="icon">
				<div class="portfolio-wrapper">			
					<img src="images/s1.jpg" alt="" />
					<div class="label">
						<div class="label-text">
							<a class="text-title">Domino's Pizza</a>
							<span class="text-category">Icon</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>							

			<div class="portfolio web" data-cat="web">
				<div class="portfolio-wrapper">						
					<img src="images/s4.jpg" alt="" />
					<div class="label">
						<div class="label-text">
							<a class="text-title">Backend Admin</a>
							<span class="text-category">Web design</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>																								

			<div class="portfolio icon" data-cat="icon">
				<div class="portfolio-wrapper">			
					<img src="images/s3.jpg" alt="" />
					<div class="label">
						<div class="label-text">
							<a class="text-title">Instagram</a>
							<span class="text-category">Icon</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>				
			
			<div class="portfolio web" data-cat="web">
				<div class="portfolio-wrapper">						
					<a href="images/s4.jpg" class="flipLightBox">
						<img src="images/s4.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Student Guide</a>
							<span class="text-category">Web design</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>																	

			<div class="portfolio icon" data-cat="icon">
				<div class="portfolio-wrapper">
					<a href="images/s3.jpg" class="flipLightBox">
						<img src="images/s3.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Scoccer</a>
							<span class="text-category">Icon</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>																																																																

			<div class="portfolio icon" data-cat="icon">
				<div class="portfolio-wrapper">						
					<a href="images/s4.jpg" class="flipLightBox">
						<img src="images/s4.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">3D Map</a>
							<span class="text-category">Icon</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>			
			
			<div class="portfolio web" data-cat="web">
				<div class="portfolio-wrapper">						
					<a href="images/s3.jpg" class="flipLightBox">
						<img src="images/s3.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Note</a>
							<span class="text-category">Web design</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>									
			
			<div class="portfolio logo1" data-cat="logo">
				<div class="portfolio-wrapper">			
					<a href="images/s4.jpg" class="flipLightBox">
						<img src="images/s4.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Native Designers</a>
							<span class="text-category">Logo</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>																	

			<div class="portfolio logo1" data-cat="logo">
				<div class="portfolio-wrapper">			
					<a href="images/s1.jpg" class="flipLightBox">
						<img src="images/s1.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Bookworm</a>
							<span class="text-category">Logo</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>																												
			
			<div class="portfolio icon" data-cat="icon">
				<div class="portfolio-wrapper">			
					<a href="images/s4.jpg" class="flipLightBox">
						<img src="images/s4.jpg"  alt="Image 2" />
					</a>
					<div class="label">
						<div class="label-text">
							<a class="text-title">Sandwich</a>
							<span class="text-category">Icon</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>																								
			
			<div class="portfolio card" data-cat="card">
				<div class="portfolio-wrapper">			
					<img src="images/s3.jpg" alt="" />
					<div class="label">
						<div class="label-text">
							<a class="text-title">Reality</a>
							<span class="text-category">Business card</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>	

			<div class="portfolio logo1" data-cat="logo">
				<div class="portfolio-wrapper">			
					<img src="images/s4.jpg" alt="" />
					<div class="label">
						<div class="label-text">
							<a class="text-title">Speciallisterne</a>
							<span class="text-category">Logo</span>
						</div>
						<div class="label-bg"></div>
					</div>
				</div>
			</div>				
										
			
		</div>
		
	</div><!-- container -->
	<script type="text/javascript" src="js/fliplightbox.min.js"></script>
						<script type="text/javascript">$('body').flipLightBox()</script>
						<div class="clear"> </div>
				</div>
			</div>
			<!---End-about---->
		</div>
			<div class="footer">
				<div class="wrap">
					<div class="footer-left">
						<a href="index.jsp"><img src="images/logo1.png" alt="" /></a>
					</div>
					<div class="footer-right">
						<a href="#top" class="scroll"> </a>
						<p>Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
		</div>
		<!---End-content----->
		<!---End-wrap---->
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

