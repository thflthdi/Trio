<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!--[if lte IE 8]> <html class="oldie" lang="en"> <![endif]-->
<!--[if IE 9]> <html class="ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="format-detection" content="telephone=no">
	<title>Trio Restaurant</title>
	<link rel="stylesheet" href="css/fancySelect.css" />
	<link rel="stylesheet" href="css/uniform.css" />
	<link rel="stylesheet" href="css/all.css" />
	<link media="screen" rel="stylesheet" type="text/css" href="css/screen.css" />
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>
	<div id="wrapper">
		<div class="wrapper-holder">
			<header id="header">
				<span class="logo"><a href="index.jsp">Trio Restaurant</a></span>
				<ul class="tools-nav tools-nav-mobile">
					<% if(session.getAttribute("userID")==null){ %>
							
							<li class="login"><a href="login.html">Login</a> / <a href="register.html">register</a></li>
							
						<% }else{ %>
							<li class="items"><a href="cart1.jsp">
							<span><%
						   	out.print(session.getAttribute("total"));
							%></span> Items</a></li>
							<li class="login"><a href="myPage.jsp"><% out.print(session.getAttribute("userID")); %></a>
							/<a href="Logout.jsp">Logout</a></li>
						<% } %>
				</ul>
				<div class="bar-holder">
				<a class="menu_trigger" href="menu.jsp">menu</a>
					<nav id="nav">
						<ul>
							<li><a href="menu.jsp">menu</a></li>
							<li><a href="aboutus.jsp">about us</a></li>
							<li><a href="event/event.jsp">event</a></li>
							<li><a href="contact.jsp">contact</a></li>
							<li><a href="faq.jsp">FAQ</a></li>
						</ul>
					</nav>
					<ul class="tools-nav">
						<% if(session.getAttribute("userID")==null){ %>
							
							<li class="login"><a href="login.html">Login</a> / <a href="register.html">register</a></li>
							
						<% }else{ %>
							<li class="items"><a href="cart1.jsp">
							<span><%
						   	out.print(session.getAttribute("total"));
							%></span> Items</a></li>
							<li class="login"><a href="myPage.jsp"><% out.print(session.getAttribute("userID")); %></a>
							/<a href="Logout.jsp">Logout</a></li>
						<% } %>
					</ul>
				</div>
			</header>
			<section class="bar">
				<div class="bar-frame">
					<ul class="breadcrumbs">
						<li><a href="index.jsp">Home</a></li>
						<li>menu</li>
					</ul>
				</div>
			</section>
			<section id="main">
				<div class="top-bar">
					<ul class="paging">
						<li class="prev"><a href="menu.jsp">prev</a></li>
						<li><a href="menu.jsp">1</a></li>
						<li class="active"><a href="menu2.jsp">2</a></li>
						<li class="next"><a href="#">next</a></li>
					</ul>
					<form class="form-sort" action="#">
						<fieldset>
							<div class="row">
								<label for="sort">Sort by :</label>
								<select id="sortid" name="sortid" onchange="location.href=this.value">
									<option value="menu.jsp">��ü ���� �޴�</option>
									<option value="side.jsp">���̵� �޴�<option>
									<option value="dessert.jsp">����Ʈ<option>
									<option value="chef.jsp">���� ��õ ��Ʈ</option>
								</select>
							</div>
						</fieldset>
					</form>
				</div>
				
				
				<ul class="item-list">
					<li>
						<div class="item">
							<div class="image">
								<img src="images/menu-item-11.jpg"  alt="" />
								<div class="hover">
									<div class="item-content" style="text-align:center;width:1200px; height:220px;">
										<a href="cart1.jsp" id="m-11" class="btn white normal">Add to cart</a>
										<a href="singleproduct.jsp" id="m-11" class="btn white normal">See details</a>
									</div>
									<span class="bg"></span>
								</div>
							</div>
							<span class="name">����� �귱ġ</span>
							<span>$250.00</span>
						</div>
					</li>
					<li>
						<div class="item">
							<div class="image">
								<img src="images/menu-item-12.jpg"  alt="" />
								<div class="hover">
									<div class="item-content" style="text-align:center;width:1200px; height:220px;">
										<a href="cart1.jsp" id="m-12" class="btn white normal">Add to cart</a>
										<a href="singleproduct.jsp" id="m-12" class="btn white normal">See details</a>
									</div>
									<span class="bg"></span>
								</div>
							</div>
							<span class="name">����� �귱ġ</span>
							<span>$399.00</span>
						</div>
					</li>
					<hr>
					<li>
						<div class="item">
							<div class="image">
								<img src="images/menu-item-13��.jpg"  alt="" />
								<div class="hover">
									<div class="item-content">
										<a href="cart1.jsp" id="m-13" class="btn white normal">Add to cart</a>
										<a href="singleproduct.jsp" id="m-13" class="btn white normal">See details</a>
									</div>
									<span class="bg"></span>
								</div>
							</div>
							<span class="name">����� �귱ġ</span>
							<span>$399.00</span>
						</div>
					</li>
					<li>
						<div class="item">
							<div class="image">
								<img src="images/menu-item-14.jpg"  alt="" />
								<div class="hover">
									<div class="item-content">
										<a href="cart1.jsp" id="m-14" class="btn white normal">Add to cart</a>
										<a href="singleproduct.jsp" id="m-14" class="btn white normal">See details</a>
									</div>
									<span class="bg"></span>
								</div>
							</div>
							<span class="name">����� �귱ġ</span>
							<span>$399.00</span>
						</div>
					</li>
					
					<li>
						<div class="item">
							<div class="image">
								<img src="images/menu-item-15.jpg"  alt="" />
								<div class="hover">
									<div class="item-content">
										<a href="cart1.jsp" id="m-15" class="btn white normal">Add to cart</a>
										<a href="singleproduct.jsp" id="m-15" class="btn white normal">See details</a>
									</div>
									<span class="bg"></span>
								</div>
							</div>
							<span class="name">����� �귱ġ</span>
							<span>$399.00</span>
						</div>
					</li>
					
					<hr>
					
					<li>
						<div class="item">
							<div class="image">
								<img src="images/menu-item-16-.jpg"  alt="" />
								<div class="hover">
									<div class="item-content" style="text-align:center;width:1200px; height:220px;">
										<a href="cart1.jsp" id="m-16" class="btn white normal">Add to cart</a>
										<a href="singleproduct.jsp" id="m-16" class="btn white normal">See details</a>
									</div>
									<span class="bg"></span>
								</div>
							</div>
							<span class="name">����� �귱ġ</span>
							<span>$399.00</span>
						</div>
					</li>
					
					
					<li>
						<div class="item">
							<div class="image">
								<img src="images/menu-item-17.jpg"  alt="" />
								<div class="hover">
									<div class="item-content" style="text-align:center;width:1200px; height:220px;">
										<a href="cart1.jsp" id="m-17" class="btn white normal">Add to cart</a>
										<a href="singleproduct.jsp" id="m-17" class="btn white normal">See details</a>
									</div>
									<span class="bg"></span>
								</div>
							</div>
							<span class="name">����� ġ</span>
							<span>$399.00</span>
						</div>
					</li>
					<li>
						<div class="item">
							<div class="image">
								<img src="images/menu-item-18.jpg"  alt="" />
								<div class="hover">
									<div class="item-content" style="text-align:center;width:1200px; height:220px;">
										<a href="cart1.jsp" id="m-18" class="btn white normal">Add to cart</a>
										<a href="singleproduct.jsp" id="m-18" class="btn white normal">See details</a>
									</div>
									<span class="bg"></span>
								</div>
							</div>
							<span class="name">����� ġ</span>
							<span>$399.00</span>
						</div>
					</li>
					<li>
						<div class="item">
							<div class="image">
								<img src="images/menu-item-19.jpg"  alt="" />
								<div class="hover">
									<div class="item-content" style="text-align:center;width:1200px; height:220px;">
										<a href="cart1.jsp" id="m-19" class="btn white normal">Add to cart</a>
										<a href="singleproduct.jsp" id="m-19" class="btn white normal">See details</a>
									</div>
									<span class="bg"></span>
								</div>
							</div>
							<span class="name">����� ġ</span>
							<span>$399.00</span>
						</div>
					</li>
				</ul>
				
				<div class="top-bar top-bar-add">
					<ul class="paging">
						<li class="prev"><a href="menu.jsp">prev</a></li>
						<li><a href="menu.jsp">1</a></li>
						<li class="active"><a href="menu2.jsp">2</a></li>
						<li class="next"><a href="#">next</a></li>
						
					</ul>
				</div>
			</section>
		</div>
		
		
	<footer id="footer">
			<div class="footer-holder">
				<div class="footer-frame">
					<div class="footer-content">
						<div class="col-holder">
							
							<div class="col">
								<div class="heading">
									<h3>Contact</h3>
								</div>
								<address>
									<p><strong>Trio restaurant</strong></p>
									<p>Korea</p>
								</address>
								<address>
									<p>010 4334 5174</p>
									<p><a href="mailto:office@elegantic.com">thflthdi@naver.com</a></p>
								</address>
							</div>
							<div class="col col-contact">
								<div class="heading">
									<h3>Follow us</h3>
								</div>
								<ul class="social">
									<li class="facebook"><a href="#">Facebook</a></li>
									<li class="google"><a href="#">Google+</a></li>
									<li class="twitter"><a href="#">Twitter</a></li>
									<li class="pinterest"><a href="#">Pinterest</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="footer-bottom">
						<div class="holder">
							<p>Thank you</p>
						</div>
					</div>
				</div>
			</div>
		</footer>	
	</div>
	
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="js/jquery.placeholder.js"></script>
	<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="js/fancySelect.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>