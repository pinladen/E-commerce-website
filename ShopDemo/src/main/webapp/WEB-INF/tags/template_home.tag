<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="title" required="true" rtexprvalue="true"
	type="java.lang.String"%>
<%@ attribute name="content" fragment="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic page needs
    ============================================ -->
<title>eMarket - Multipurpose Responsive HTML5 Template</title>
<meta charset="utf-8">
<meta name="keywords"
	content="html5 template, best html5 template, best html template, html5 basic template, multipurpose html5 template, multipurpose html template, creative html templates, creative html5 templates" />
<meta name="description"
	content="eMarket is a powerful Multi-purpose HTML5 Template with clean and user friendly design. It is definite a great starter for any eCommerce web project." />
<meta name="author" content="Magentech">
<meta name="robots" content="index, follow" />

<!-- Mobile specific metas
    ============================================ -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Favicon
    ============================================ -->
<link rel="shortcut icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/user/ico/favicon-16x16.png" />


<!-- Libs CSS
    ============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/css/bootstrap/css/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/resources/user/css/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/js/datetimepicker/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/js/owl-carousel/owl.carousel.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/themecss/lib.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/js/jquery-ui/jquery-ui.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/js/minicolors/miniColors.css"
	rel="stylesheet">

<!-- Theme CSS
    ============================================ -->
<link
	href="${pageContext.request.contextPath}/resources/user/css/themecss/so_searchpro.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/themecss/so_megamenu.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/themecss/so-categories.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/themecss/so-listing-tabs.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/themecss/so-newletter-popup.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/resources/user/css/footer/footer1.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/header/header1.css"
	rel="stylesheet">
<link id="color_scheme"
	href="${pageContext.request.contextPath}/resources/user/css/theme.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/responsive.css"
	rel="stylesheet">

<!-- Google web fonts
    ============================================ -->
<link
	href='https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,500i,700'
	rel='stylesheet' type='text/css'>
<style type="text/css">
body {
	font-family: 'Roboto', sans-serif
}
</style>

</head>

<body class="common-home res layout-1">

	<div id="wrapper" class="wrapper-fluid banners-effect-5">


		<!-- Header Container  -->
		<header id="header" class=" typeheader-1">
			<!-- Header Top -->
			<div class="header-top hidden-compact">
				<div class="container">
					<div class="row">
						<div class="header-top-left col-lg-7 col-md-8 col-sm-6 col-xs-4">
							<marquee>
								<div class="hidden-sm hidden-xs welcome-msg">
								<b>Welcome to Emarket !</b> ! Wrap new offers / gift every
								single day on Weekends - New Coupon code: Happy2022
							</div>
							</marquee>
							
							<ul class="top-link list-inline hidden-lg hidden-md">
								<li class="account" id="my_account"><a href="${pageContext.request.contextPath}/user/myaccount"
									title="My Account " class="btn-xs dropdown-toggle"
									data-toggle="dropdown"> <span class="hidden-xs">My
											Account </span> <span class="fa fa-caret-down"></span>
								</a>
									<ul class="dropdown-menu ">
										<li><a href="register.html"><i class="fa fa-user"></i>
												Register</a></li>
										<li><a href="login.html"><i
												class="fa fa-pencil-square-o"></i> Login</a></li>
									</ul></li>
							</ul>
						</div>
						<div
							class="header-top-right collapsed-block col-lg-5 col-md-4 col-sm-6 col-xs-8">
							<ul class="top-link list-inline lang-curr">
								<li class="currency">
									<div class="btn-group currencies-block">
										<form action="index.html" method="post"
											enctype="multipart/form-data" id="currency">
											<a class="btn btn-link dropdown-toggle"
												data-toggle="dropdown"> <span class="icon icon-credit "></span>
												Seller Centre
											</a>
										</form>
									</div>
								</li>
								<li class="language">
									<div class="btn-group languages-block ">
										<form action="index.html" method="post"
											enctype="multipart/form-data" id="bt-language">
											<a class="btn btn-link dropdown-toggle"
												data-toggle="dropdown"> <img
												src="${pageContext.request.contextPath}/resources/user/image/catalog/flags/gb.png"
												alt="English" title="English"> <span class="">English</span>
												<span class="fa fa-angle-down"></span>
											</a>
											<ul class="dropdown-menu">
												<li><a href="index.html"><img class="image_flag"
														src="${pageContext.request.contextPath}/resources/user/image/catalog/flags/gb.png"
														alt="English" title="English" /> English </a></li>
												<li><a href="index.html"> <img class="image_flag"
														src="${pageContext.request.contextPath}/resources/user/image/catalog/flags/ar.png"
														alt="Arabic" title="Arabic" /> Arabic
												</a></li>
											</ul>
										</form>
									</div>

								</li>
							</ul>



						</div>
					</div>
				</div>
			</div>
			<!-- //Header Top -->

			<!-- Header center -->
			<div class="header-middle">
				<div class="container">
					<div class="row">
						<!-- Logo -->
						<div class="navbar-logo col-lg-2 col-md-2 col-sm-12 col-xs-12">
							<div class="logo">
								<a href="${pageContext.request.contextPath}/user/home"><img
									src="${pageContext.request.contextPath}/resources/user/image/catalog/logo.png"
									title="Your Store" alt="Your Store" /></a>
							</div>
						</div>
						<!-- //end Logo -->

						<!-- Main menu -->
						<div class="main-menu col-lg-6 col-md-7 ">
							<div class="responsive so-megamenu megamenu-style-dev">
								<nav class="navbar-default">
									<div class=" container-megamenu  horizontal open ">
										<div class="navbar-header">
											<button type="button" id="show-megamenu"
												data-toggle="collapse" class="navbar-toggle">
												<span class="icon-bar"></span> <span class="icon-bar"></span>
												<span class="icon-bar"></span>
											</button>
										</div>

										<div class="megamenu-wrapper">
											<span id="remove-megamenu" class="fa fa-times"></span>
											<div class="megamenu-pattern">
												<div class="container-mega">
													<ul class="megamenu" data-transition="slide"
														data-animationtime="250">
														<li class="home hover"><a
															href="${pageContext.request.contextPath}/user/home"></a>
														</li>

													</ul>

												</div>
											</div>
										</div>
									</div>
								</nav>
							</div>
						</div>
						<!-- //end Main menu -->

						<div class="middle-right col-lg-4 col-md-3 col-sm-6 col-xs-8">
								<c:choose>
									<c:when test="${empty pageContext.request.userPrincipal.name }">
										<div class="signin-w  hidden-sm hidden-xs">
											<ul class="signin-link blank">
												<li class="log login"><i class="fa fa-lock"></i> <a
													class="link-lg" href="${pageContext.request.contextPath}/account/login">Login </a> or <a
													href="${pageContext.request.contextPath}/account/register">Register</a></li>
											</ul>
										</div>
									</c:when>
								<c:otherwise>
									<div class="signin-w  hidden-sm hidden-xs">
										<ul class="signin-link blank">
											<li class="log login"><i class="fa fa-user-circle-o"></i> <a
												class="link-lg" href="${pageContext.request.contextPath}/user/myaccount"> ${pageContext.request.userPrincipal.name } </a> | <a
												href="${pageContext.request.contextPath}/account/logout">Logout</a></li>
										</ul>
									</div>
									<div class="telephone hidden-xs hidden-sm hidden-md">
										<ul class="blank">
											<li><a href="${pageContext.request.contextPath}/user/myaccount/order">track your order</a></li>
											<li><a href="${pageContext.request.contextPath}/user/myaccount">My Account</a></li>
											<li><a href="${pageContext.request.contextPath}/user/myaccount/mystore">Seller Centre</a></li>
										</ul>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
			<!-- //Header center -->

			<!-- Header Bottom -->
			<div class="header-bottom hidden-compact">
				<div class="container">
					<div class="row">

						<div class="bottom1 menu-vertical col-lg-2 col-md-3 col-sm-3">
							<div class="responsive so-megamenu megamenu-style-dev ">
								<div class="so-vertical-menu ">
									<nav class="navbar-default">

										<div class="container-megamenu vertical">
											<div id="menuHeading">
												<div class="megamenuToogle-wrapper">
													<div class="megamenuToogle-pattern">
														<div class="container">
															<div>
																<span></span> <span></span> <span></span>
															</div>
															All Categories
														</div>
													</div>
												</div>
											</div>

											<div class="navbar-header">
												<button type="button" id="show-verticalmenu"
													data-toggle="collapse" class="navbar-toggle">
													<i class="fa fa-bars"></i> <span> All Categories </span>
												</button>
											</div>
											<div class="vertical-wrapper">
												<span id="remove-verticalmenu" class="fa fa-times"></span>
												<div class="megamenu-pattern">
													<div class="container-mega">
														<ul class="megamenu">
															<c:forEach items="${sessionScope.categories }" var="item">
																<li class="item-vertical">
																	<p class="close-menu"></p> <a href="${pageContext.request.contextPath}/user/category/${item.categoryId}" class="clearfix">
																		 <span>${item.name }</span>
																	</a>
																</li>
															</c:forEach>													
														</ul>
													</div>
												</div>
											</div>
										</div>
									</nav>
								</div>
							</div>

						</div>

						<!-- Search -->
						<div class="bottom2 col-lg-7 col-md-6 col-sm-6">
							<div class="search-header-w">
								<div class="icon-search hidden-lg hidden-md hidden-sm">
									<i class="fa fa-search"></i>
								</div>
								<div id="sosearchpro" class="sosearchpro-wrapper so-search ">
									<form method="GET" action="${pageContext.request.contextPath}/user/category">
										<div id="search0" class="search input-group form-group">
											<div
												class="select_category filter_type  icon-select hidden-sm hidden-xs">
												<select class="no-border" name="category_id">
													<option value="0">All Categories</option>
													<c:forEach items="${sessionScope.categories }" var="item">
														<option value="${item.categoryId}">${item.name }</option>
													</c:forEach>
												</select>
											</div>
											
											<input class="autosearch-input form-control" type="text"
												value="" size="50" autocomplete="off"
												placeholder="Keyword here..." name="keyword"> <span
												class="input-group-btn">
											<input type="hidden" name="sort_by" value="" />	
												<button type="submit" class="button-search btn btn-primary"
													name="submit_search">
													<i class="fa fa-search"></i>
												</button>
											</span>
										</div>
										
									</form>
								</div>
							</div>
						</div>
						<!-- //end Search -->

						<!-- Secondary menu -->
						<div class="bottom3 col-lg-3 col-md-3 col-sm-3">


							<!--cart-->
							<div class="shopping_cart">
								<div id="cart" class="btn-shopping-cart">
									<a data-loading-text="Loading... "
										class="btn-group top_cart dropdown-toggle"
										data-toggle="dropdown" aria-expanded="true">
										<div class="shopcart">
											<span class="icon-c"> <i class="fa fa-shopping-bag"></i>
											</span>
											<div class="shopcart-inner">
												<p class="text-shopping-cart">My cart</p>

												<span class="total-shopping-cart cart-total-full"> <span
													class="items_cart">
													<c:choose>
														<c:when test="${empty sessionScope.cart.size() }">0</c:when>
														<c:when test="${not empty sessionScope.cart.size() }">${sessionScope.cart.size()}</c:when>
													</c:choose>	<c:if test=""> 0</c:if>
													</span>
											</div>
										</div>
									</a>
									
									<c:choose>
										<c:when test="${empty sessionScope.cart.size() }">
										<ul class="dropdown-menu pull-right shoppingcart-box"
										role="menu">
										<li>
											<table class="table table-striped">
												<tbody>
													<tr>
														<td class="text-center" colspan="2"><img src="${pageContext.request.contextPath}/resources/user/image/catalog/demo/product/80/no-product.jpg"></td>
													</tr>
													<tr>
														<td class="text-center" colspan="2">You haven't put any items to your shopping cart.</td>
													</tr>
												</tbody>
											</table>
										</li>
									</ul>
								</c:when>
								
								<c:when test="${not empty sessionScope.cart.size() }">
										<ul class="dropdown-menu pull-right shoppingcart-box"
										role="menu">
										<li>
											<table class="table table-striped">
												<tbody>
													<c:set var="total" value="${0}"></c:set>
													<c:forEach items="${sessionScope.cart }" var="item">
													<tr>
														<td class="text-center" style="width: 70px"><a
															href="product.html"> 
															<img src="${pageContext.request.contextPath}/assets/uploads/products/${item.product.images[0].name}" style="width: 70px" class="preview">
														</a></td>
														<td class="text-left "><a class="cart_product_name"
															href="${pageContext.request.contextPath}/user/product/${item.product.productId}"><span class="">${item.product.name }</span></a></td>
														<td class="text-center">x${item.quantity }</td>
														<td class="text-center">																												
						                                  	<c:choose > 
						                                  		<c:when test="${item.product.discount.discoutPercent > 0 }">
						                                  			<c:set var="total" value="${total + ((item.product.price -((item.product.price/100) * item.product.discount.discoutPercent))*item.quantity) }"></c:set>							                                				                                      
				                                            		<span class="font-weight-bold">$<fmt:formatNumber  type="number"  maxFractionDigits="2" value="${(item.product.price -((item.product.price/100) * item.product.discount.discoutPercent))*item.quantity }" /> </span>
						                                  		</c:when>
						                                  		<c:when test="${item.product.discount.discoutPercent <= 0 }">							                                			
						                                  			$${item.product.price * item.quantity}
						                                  			<c:set var="total" value="${total + (item.product.price * item.quantity)}"></c:set>
						                                  		</c:when>
						                                  	</c:choose>                                                            
														</td>
														
														<td class="text-right"><a href="product.html"
															class="fa fa-edit"></a></td>
														<td class="text-right"><a onclick="return confirm('Are you sure ?');" href="${pageContext.request.contextPath}/user/cart/remove/${item.product.productId}"
															class="fa fa-times fa-delete"></a></td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</li>
										<li>
											<div>
												<table class="table table-bordered">
													<tbody>
														<tr>
															<td class="text-left"><strong>Sub-Total</strong></td>
															<td class="text-right">$<fmt:formatNumber  type="number"  maxFractionDigits="2" value="${total }" /></td>
														</tr>
														<c:choose>
															<c:when test="${total >= 50 }">
																<tr>
																	<td class="text-left"><strong>Ship cost </strong></td>
																	<td class="text-right">Free</td>
																</tr>
																<tr>
																	<td class="text-left"><strong>Total</strong></td>
																	<td class="text-right">$<fmt:formatNumber  type="number"  maxFractionDigits="2" value="${total }" /></td>
																</tr>
															</c:when>
															<c:when test="${total < 50 }">
																<tr>
																	<td class="text-left"><strong>Ship cost </strong></td>
																	<td class="text-right">+ $3</td>
																</tr>
																<tr>
																	<td class="text-left"><strong>Total</strong></td>
																	<c:set var="total" value="${total +3  }"></c:set>
																	<td class="text-right">$<fmt:formatNumber  type="number"  maxFractionDigits="2" value="${total }" /></td>
																</tr>
															</c:when>
														</c:choose>
														
													</tbody>
												</table>
												<p class="text-right">
													<a class="btn view-cart" href="${pageContext.request.contextPath}/user/cart/index"><i
														class="fa fa-shopping-cart"></i>View Cart</a>&nbsp;&nbsp;&nbsp;
													<a class="btn btn-mega checkout-cart" href="${pageContext.request.contextPath}/user/checkout/index"><i
														class="fa fa-share"></i>Checkout</a>
												</p>
											</div>
										</li>
									</ul>
								</c:when>
							</c:choose>
								</div>								
							</div>
							<!--//cart-->

							<ul class="wishlist-comp hidden-md hidden-sm hidden-xs">
								<li class="compare hidden-xs"><a href="#"
									class="top-link-compare" title="Compare "><i
										class="fa fa-refresh"></i></a></li>
								<li class="wishlist hidden-xs"><a href="#"
									id="wishlist-total" class="top-link-wishlist"
									title="Wish List (0) "><i class="fa fa-heart"></i></a></li>
							</ul>
						</div>

					</div>
				</div>

			</div>
		</header>
		<!-- //Header Container  -->


		<!-- Main Container  -->
		<div class="main-container container">
			<jsp:invoke fragment="content"></jsp:invoke>
		</div>
		<!-- //Main Container -->



		<!-- Footer Container -->
		<footer class="footer-container typefooter-1">
			<!-- Footer Top Container -->
			<section class="footer-top">
				<div class="container ftop">
					<div class="row">
						<div class="col-lg-8 col-md-7 col-sm-12 col-xs-12 ">

							<div class="module newsletter-footer1">
								<div class="newsletter"
									style="width: 100%; background-color: #fff;">

									<div class="title-block">
										<div class="page-heading font-title">Signup for
											Newsletter</div>
										<div class="promotext">We’ll never share your email
											address with a third-party.</div>
									</div>

									<div class="block_content">
										<form method="post" id="signup" name="signup"
											class="form-group form-inline signup send-mail">
											<div class="form-group">
												<div class="input-box">
													<input type="email" placeholder="Your email address..."
														value="" class="form-control" id="txtemail"
														name="txtemail" size="55">
												</div>
												<div class="subcribe">
													<button class="btn btn-primary btn-default font-title"
														type="submit" onclick="return subscribe_newsletter();"
														name="submit">Subscribe</button>
												</div>
											</div>
										</form>
									</div>
									<!--/.modcontent-->
								</div>
							</div>

						</div>
						<div class="col-lg-4 col-md-5 col-sm-12 col-xs-12 ">
							<ul class="socials">
								<li class="facebook"><a class="_blank"
									href="https://www.facebook.com/MagenTech" target="_blank"><i
										class="fa fa-facebook"></i><span>Facebook</span></a></li>
								<li class="twitter"><a class="_blank"
									href="https://twitter.com/smartaddons" target="_blank"><i
										class="fa fa-twitter"></i><span>Twitter</span></a></li>
								<li class="google_plus"><a class="_blank"
									href="https://plus.google.com/u/0/+Smartaddons/posts"
									target="_blank"><i class="fa fa-google-plus"></i><span>Google
											Plus</span></a></li>
								<li class="pinterest"><a class="_blank"
									href="https://www.pinterest.com/smartaddons/" target="_blank"><i
										class="fa fa-pinterest"></i><span>Pinterest</span></a></li>
							</ul>


						</div>
					</div>
				</div>
			</section>
			<!-- /Footer Top Container -->

			<div class="footer-middle ">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 col-style">
							<div class="infos-footer">
								<a href="#"><img
									src="${pageContext.request.contextPath}/resources/user/image/catalog/logo-footer.png"
									alt="image"></a>
								<ul class="menu">
									<li class="adres">San Luis potosí, centro historico,
										78000 san luis potosí, SPL, Mexico</li>
									<li class="phone">(+0214)0 315 215 - (+0214)0 315 215</li>
									<li class="mail"><a
										href="mailto:contact@opencartworks.com">contact@opencartworks.com</a>
									</li>
									<li class="time">Open time: 8:00AM - 6:00PM</li>
								</ul>
							</div>


						</div>
						<div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 col-style">
							<div class="box-information box-footer">
								<div class="module clearfix">
									<h3 class="modtitle">Information</h3>
									<div class="modcontent">
										<ul class="menu">
											<li><a href="#">About Us</a></li>
											<li><a href="#">FAQ</a></li>
											<li><a href="#">Warranty And Services</a></li>
											<li><a href="#">Support 24/7 page</a></li>
											<li><a href="#">Product Registration</a></li>
											<li><a href="#">Product Support</a></li>
										</ul>
									</div>
								</div>
							</div>

						</div>
						<div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 col-style">
							<div class="box-account box-footer">
								<div class="module clearfix">
									<h3 class="modtitle">My Account</h3>
									<div class="modcontent">
										<ul class="menu">
											<li><a href="#">Brands</a></li>
											<li><a href="#">Gift Certificates</a></li>
											<li><a href="#">Affiliates</a></li>
											<li><a href="#">Specials</a></li>
											<li><a href="#">FAQs</a></li>
											<li><a href="#">Custom Link</a></li>
										</ul>
									</div>
								</div>
							</div>


						</div>
						<div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 col-style">
							<div class="box-service box-footer">
								<div class="module clearfix">
									<h3 class="modtitle">Services</h3>
									<div class="modcontent">
										<ul class="menu">
											<li><a href="#">Contact Us</a></li>
											<li><a href="#">Returns</a></li>
											<li><a href="#">Support</a></li>
											<li><a href="#">Site Map</a></li>
											<li><a href="#">Customer Service</a></li>
											<li><a href="#">Custom Link</a></li>
										</ul>
									</div>
								</div>
							</div>

						</div>
						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 col-style">


							<div class="module box-footer so-instagram-gallery-ltr">

								<h4 class="modtitle">Instagram Gallery</h4>


								<div class="form-group"></div>

								<div class="modcontent">
									<div class="so-instagram-gallery button-type2 4"
										id="instagram17356972741514990310">
										<div
											class="instagram-items-inner instagram00-5 instagram01-4 instagram02-3 instagram03-2 instagram04-1">

											<div class="instagram-item 0  first-item ">

												<div class="instagram_users">
													<div class="img_users">
														<a title="Emarket"
															data-href="https://www.instagram.com/p/BWcLaN9DQfW/"
															class="instagram_gallery_image gallery_image_instagram17356972741514990310"
															href="https://scontent.cdninstagram.com/t51.2885-15/s320x320/e35/19985119_1789473437940076_2055170824985378816_n.jpg?taken-by=swhotdeal">
															<img class="image_users"
															src="https://scontent.cdninstagram.com/t51.2885-15/s320x320/e35/19985119_1789473437940076_2055170824985378816_n.jpg"
															title="Emarket" alt="Emarket">
														</a>
													</div>
												</div>


											</div>

											<div class="instagram-item 1 ">

												<div class="instagram_users">
													<div class="img_users">
														<a title="Emarket"
															data-href="https://www.instagram.com/p/BWcLY9XDLRu/"
															class="instagram_gallery_image gallery_image_instagram17356972741514990310"
															href="https://scontent.cdninstagram.com/t51.2885-15/s320x320/e35/19955766_152435575317196_2812535432292597760_n.jpg?taken-by=swhotdeal">
															<img class="image_users"
															src="https://scontent.cdninstagram.com/t51.2885-15/s320x320/e35/19955766_152435575317196_2812535432292597760_n.jpg"
															title="Emarket" alt="Emarket">
														</a>
													</div>
												</div>


											</div>

											<div class="instagram-item 2 ">

												<div class="instagram_users">
													<div class="img_users">
														<a title="Emarket"
															data-href="https://www.instagram.com/p/BWcLT-rD17U/"
															class="instagram_gallery_image gallery_image_instagram17356972741514990310"
															href="https://scontent.cdninstagram.com/t51.2885-15/s320x320/e35/19933192_2345189812372940_1937990403319922688_n.jpg?taken-by=swhotdeal">
															<img class="image_users"
															src="https://scontent.cdninstagram.com/t51.2885-15/s320x320/e35/19933192_2345189812372940_1937990403319922688_n.jpg"
															title="Emarket" alt="Emarket">
														</a>
													</div>
												</div>


											</div>

											<div class="instagram-item 3 ">

												<div class="instagram_users">
													<div class="img_users">
														<a title="Emarket"
															data-href="https://www.instagram.com/p/BWcLS_vjGhx/"
															class="instagram_gallery_image gallery_image_instagram17356972741514990310"
															href="https://scontent.cdninstagram.com/t51.2885-15/s320x320/e35/19984602_1912942795641671_1075249881506906112_n.jpg?taken-by=swhotdeal">
															<img class="image_users"
															src="https://scontent.cdninstagram.com/t51.2885-15/s320x320/e35/19984602_1912942795641671_1075249881506906112_n.jpg"
															title="Emarket" alt="Emarket">
														</a>
													</div>
												</div>


											</div>

											<div class="instagram-item 4 ">

												<div class="instagram_users">
													<div class="img_users">
														<a title="Emarket"
															data-href="https://www.instagram.com/p/BWcLSNnDpJp/"
															class="instagram_gallery_image gallery_image_instagram17356972741514990310"
															href="https://scontent.cdninstagram.com/t51.2885-15/s320x320/e35/19985191_1485570878166875_6297995079118225408_n.jpg?taken-by=swhotdeal">
															<img class="image_users"
															src="https://scontent.cdninstagram.com/t51.2885-15/s320x320/e35/19985191_1485570878166875_6297995079118225408_n.jpg"
															title="Emarket" alt="Emarket">
														</a>
													</div>
												</div>


											</div>


										</div>
										<!--/.instagram-items-inner-->

									</div>
								</div>
								<!-- /.modcontent-->


							</div>
						</div>

						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-style">
							<ul class="footer-links font-title">
								<li><a href="#">Online Shopping</a></li>
								<li><a href="#">Promotions</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Site Map</a></li>
								<li><a href="#">Orders and Returns</a></li>
								<li><a href="#">Help</a></li>
								<li><a href="#">Contact Us</a></li>
								<li><a href="#">Support</a></li>
								<li><a href="#">Most Populars</a></li>
								<li><a href="#">New Arrivals</a></li>
								<li><a href="#">Special Products</a></li>
								<li><a href="#">Manufacturers</a></li>
								<li><a href="#">Shipping</a></li>
								<li><a href="#">Payments</a></li>
								<li><a href="#">Returns</a></li>
								<li><a href="#">Refunds</a></li>
								<li><a href="#">Warantee</a></li>
								<li><a href="#">Promotions</a></li>
								<li><a href="#">Customer Service</a></li>
								<li><a href="#">Our Stores</a></li>
								<li><a href="#">Discount</a></li>
								<li><a href="#">Checkout</a></li>
							</ul>

						</div>
						<div class="col-lg-12 col-xs-12 text-center">
							<img
								src="${pageContext.request.contextPath}/resources/user/image/catalog/demo/payment/payment.png"
								alt="imgpayment">
						</div>
					</div>
				</div>
			</div>

			<!-- Footer Bottom Container -->
			<div class="footer-bottom ">
				<div class="container">
					<div class="copyright">
						eMarket © 2018 Demo Store. All Rights Reserved. Designed by <a
							href="http://www.opencartworks.com/" target="_blank">OpenCartWorks.Com</a>
					</div>
				</div>
			</div>
			<!-- /Footer Bottom Container -->

			<!--Back To Top-->
			<div class="back-to-top">
				<i class="fa fa-angle-up"></i>
			</div>
			<!--Back To Top-->
			<div class="back-to-top">
				<i class="fa fa-angle-up"></i>
			</div>
		</footer>
		<!-- //end Footer Container -->

	</div>


	<!-- End Color Scheme
============================================ -->



	<!-- Include Libs & Plugins
============================================ -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/jquery-2.2.4.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/themejs/libs.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/unveil/jquery.unveil.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/countdown/jquery.countdown.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/datetimepicker/moment.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/jquery-ui/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/modernizr/modernizr-2.6.2.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/minicolors/jquery.miniColors.min.js"></script>

	<!-- Theme files
============================================ -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/themejs/application.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/themejs/homepage.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/themejs/toppanel.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/themejs/so_megamenu.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/themejs/addtocart.js"></script>
	<!-- Them files
============================================ -->




</body>
</html>