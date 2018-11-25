<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>BUY & SELL*</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/jquery.uls.css" rel="stylesheet"/>
<link href="css/jquery.uls.grid.css" rel="stylesheet"/>
<link href="css/jquery.uls.lcd.css" rel="stylesheet"/>
		<link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
</head>
<body>
    <%
             
            if(session.getAttribute("email")!=null){
        %>
<div class="header">
		<div class="container">
			<div class="logo">
				<a href="HomePage.html"><span>QU</span>IKR</a>
			</div>
			<div class="header-right">
			<a class="account" href="userHome.jsp">My Account</a>
			</div>
			</div>
	
	<!-- Submit Ad -->
	<div class="submit-ad main-grid-border">
		<div class="container">
			<h2 class="head">Post an Ad</h2>
			<div class="post-ad-form">
				<form  action="postAdServlet" method="POST" enctype="multipart/form-data">
					<label>Select Category <span>*</span></label>
					<select class="" name="category">
					  <option>Select Category</option>
					  <option>Mobiles</option>
					  <option>Electronics and Appliances</option>
					  <option>Cars</option>
					  <option>Bikes</option>
					  <option>Furniture</option>
					  <option>Pets</option>
					  <option>Books, Sports and hobbies</option>
					  <option>Fashion</option>
					  <option>Kids</option>
					  <option>Services</option>
					  <option>Real, Estate</option>
					</select>
					<div class="clearfix"></div>
					<label>Ad Title <span>*</span></label>
					<input type="text" class="phone" name="title" placeholder="Enter Title Here">
					<div class="clearfix"></div>
					<label>Ad Description <span>*</span></label>
					<textarea class="mess" name="disc" placeholder="Write few lines about your product"></textarea>
					<div class="clearfix"></div>
				<div class="upload-ad-photos">
				<label>Photos for your ad :</label>	
					<div class="photos-upload-view">
						

						<input type="hidden" id="MAX_FILE_SIZE" name="MAX_FILE_SIZE" value="300000" />

						<div>
							<input type="file" id="fileselect" name="fileselect" multiple="multiple" />
							<div id="filedrag">or drop files here</div>
						</div>
                                                <br>
						</div>
					
					<div class="personal-details">
						<label>Your Name <span>*</span></label>
						<input type="text" class="name" name="name" placeholder="Enter Name Here">
						<div class="clearfix"></div>
						<label>Your Mobile No <span>*</span></label>
						<input type="text" class="phone"name="mobile" placeholder="Enter Mobile Number">
						<div class="clearfix"></div>
						<label>Your Email Address<span>*</span></label>
						<input type="text" class="email" name="email" placeholder="Enter Email Address">
						<div class="clearfix"></div>
						<p class="post-terms">By clicking <strong>post Button</strong> you accept our <a href="terms.html" target="_blank">Terms of Use </a> and <a href="privacy.html" target="_blank">Privacy Policy</a></p>
					<input type="submit" value="Post">					
					<div class="clearfix"></div>
					</div>
                                </form>
			</div>
		</div>	
	</div>
	<!-- // Submit Ad -->
	<!--footer section start-->		
		<footer>
			<div class="footer-top">
				<div class="container">
					<div class="foo-grids">
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Who We Are</h4>
							<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
							<p>The point of using Lorem Ipsum is that it has a more-or-less normal letters, as opposed to using 'Content here.</p>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Help</h4>
							<ul>
								<li><a href="howitworks.html">How it Works</a></li>						
								<li><a href="sitemap.html">Sitemap</a></li>
								<li><a href="faq.html">Faq</a></li>
								<li><a href="feedback.html">Feedback</a></li>
								<li><a href="contact.html">Contact</a></li>
								<li><a href="typography.html">Shortcodes</a></li>
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Information</h4>
							<ul>
								<li><a href="regions.html">Locations Map</a></li>	
								<li><a href="terms.html">Terms of Use</a></li>
								<li><a href="popular-search.html">Popular searches</a></li>	
								<li><a href="privacy.html">Privacy Policy</a></li>	
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Contact Us</h4>
							<span class="hq">Our headquarters</span>
							<address>
								<ul class="location">
									<li><span class="glyphicon glyphicon-map-marker"></span></li>
									<li>CENTER FOR FINANCIAL ASSISTANCE TO DEPOSED NIGERIAN ROYALTY</li>
									<div class="clearfix"></div>
								</ul>	
								<ul class="location">
									<li><span class="glyphicon glyphicon-earphone"></span></li>
									<li>+0 561 111 235</li>
									<div class="clearfix"></div>
								</ul>	
								<ul class="location">
									<li><span class="glyphicon glyphicon-envelope"></span></li>
									<li><a href="mailto:info@example.com">mail@example.com</a></li>
									<div class="clearfix"></div>
								</ul>						
							</address>
						</div>
						<div class="clearfix"></div>
					</div>						
				</div>	
			</div>	
			<div class="footer-bottom text-center">
			<div class="container">
				<div class="footer-logo">
					<a href="HomePage.html"><span>QU</span>IKR</a>
				</div>
				<div class="footer-social-icons">
					<ul>
						<li><a class="facebook" href="#"><span>Facebook</span></a></li>
						<li><a class="twitter" href="#"><span>Twitter</span></a></li>
						<li><a class="flickr" href="#"><span>Flickr</span></a></li>
						<li><a class="googleplus" href="#"><span>Google+</span></a></li>
						<li><a class="dribbble" href="#"><span>Dribbble</span></a></li>
					</ul>
				</div>
				<div class="copyrights">
					<p> © 2018 Quick Sale. All Rights Reserved </p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</footer>
        <%
                          }
                          else{
                                 response.sendRedirect("login1.html"); 
                                  }
                      
                      %>
        <!--footer section end-->
</body>
</html>