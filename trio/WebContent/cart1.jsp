<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ page import ="java.sql.*" %>
<%@ page import ="trio.DButil" %>
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
						<li>Cart</li>
					</ul>
				</div>
			</section>
			<section id="main">
				<ul class="list-table">
				<% 
						if(session.getAttribute("total").equals(0)) {
					%>
						 		
						<h3>장바구니가 텅 비었네요</h3>
						 	  
				<% 
						}else{
				request.setCharacterEncoding("UTF-8");	
				Connection conn = DButil.getMySQLConnection();
				String sql = "select foodNum,foodPri,foodName,imgsrc from userFood where userID='"+session.getAttribute("userID")+"'";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				    while(rs.next()) {
				    	int foodNum = rs.getInt(1);
				    	int foodPri = rs.getInt(2);
				    	String foodName = rs.getString(3);
				    	String imgsrc= rs.getString(4);
				    
			    	%>  
					<li>
						<div class="rows rows-item">
							<img src=<%=imgsrc %> height="99" width="99" alt="" />
							<h3><%=foodName %></h3>
						</div>
						<div class="rows-holder">
							<div class="rows rows-select">
								<div class="row">
									<label for="size">Size:</label>
									<select id="size">
										<option>XL</option>
										<option>XXL</option>
									</select>
								</div>
							</div>
							<div class="rows rows-select">
								<div class="row">
									<label for="quantity">Quantity:</label>
									<select id="quantity">
										<option>1</option>
										<option>2</option>
									</select>
								</div>
							</div>
							<div class="rows rows-price">
								<span><%=foodPri %></span>
							</div>
							<div class="rows rows-delete">
								<a OnClick="window.location='cartDel.jsp?idx=<%=foodNum%>'">delete</a>
							</div>
						</div>
					</li>
					<% } %>
				</ul>
				
				<%
				DButil.close(rs);
				DButil.close(pstmt);
				DButil.close(conn);
						}
				%>
				<!-- <form action="#" class="form-payment">
					<fieldset>
						<div class="column">
							<h2>Delivery address:</h2>
							<div class="row">
								<label for="name">Name:</label>
								<input type="text" id="name" placeholder="Patrick Biggins" />
							</div>
							<div class="row">
								<label for="street">Street:</label>
								<input type="text" id="street" placeholder="Winkle" />
							</div>
							<div class="row">
								<label for="city">City:</label>
								<input type="text" id="city" placeholder="Detroit" />
							</div>
							<div class="row">
								<label for="phone">Phone:</label>
								<input type="text" id="phone" placeholder="(46) 527 526 763" />
							</div>
							<div class="row">
								<label for="email">Email:</label>
								<input type="text" id="email" placeholder="Patrick_biggie@hotmail.com" />
							</div>
						</div>
						<div class="column column-add">
							<h2>Payment method:</h2>
							<ul class="pay-list">
								<li class="paypal">
									<div class="pay-holder">
										<p>Paypal</p>
									</div>
									 <input type="radio" name="pay" value="paypal" />
								</li>
								<li class="mastercard">
									<div class="pay-holder">
										<p>MasterCard</p>
									</div>
									<input type="radio" name="pay" value="mastercard" />
								</li>
								<li class="visa">
									<div class="pay-holder">
										<p>MasterCard</p>
									</div>
									<input type="radio" name="pay" value="visa" />
								</li>
								<li class="express">
									<div class="pay-holder">
										<p>American Express</p>
									</div>
									<input type="radio" name="pay" value="american express" />
								</li>
								<li class="discover">
									<div class="pay-holder">
										<p>Discover</p>
									</div>
									<input type="radio" name="pay" value="discover" />
								</li>
							</ul>
							<div class="row row-total">
								<h4 class="total">Total to pay: <strong>$599.00</strong></h4>
								<input type="submit" class="btn black normal"  value="Make a payment" />
							</div>
						</div>
					</fieldset>
				</form> -->
			</section>
		</div>
		<footer id="footer">
			<div class="footer-holder">
				<div class="footer-frame">
					<div class="footer-content">
						<div class="col-holder">
							<div class="col">
								<div class="heading">
									<h3>About us</h3>
								</div>
								<p>Vero eos et accusamus et iusto dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti</p>
								<p>Quos dolores et quas molestias excepturi sint occaecati cupiditate.</p>
							</div>
							<div class="col">
								<div class="heading">
									<h3>Contact</h3>
								</div>
								<address>
									<p><strong>Elegantic Inc.</strong></p>
									<p>1041 Madison Ave,</p>
									<p>New York</p>
								</address>
								<address>
									<p>(45) 523 565 242</p>
									<p><a href="mailto:office@elegantic.com">office@elegantic.com</a></p>
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
							<p>Copyright 2014 Elegantic. All rights reserved.</p>
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