<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<mt:template_home title="Home">
	<jsp:attribute name="content">
		<div id="content">
        <div class="box-top hidden-lg hidden-md hidden-sm ">
            <div class="module sohomepage-slider ">
                <div class="yt-content-slider"  data-rtl="yes" data-autoplay="no" data-autoheight="no" data-delay="4" data-speed="0.6" data-margin="0" data-items_column0="1" data-items_column1="1" data-items_column2="1"  data-items_column3="1" data-items_column4="1" data-arrows="no" data-pagination="yes" data-lazyload="yes" data-loop="no" data-hoverpause="yes">
                    <div class="yt-content-slide">
                        <a href="#"><img src="${pageContext.request.contextPath}/resources/user/image/catalog/slideshow/home1/slider-1.jpg" alt="slider1" class="img-responsive"></a>
                    </div>
                    <div class="yt-content-slide">
                        <a href="#"><img src="${pageContext.request.contextPath}/resources/user/image/catalog/slideshow/home1/slider-2.jpg" alt="slider2" class="img-responsive"></a>
                    </div>
                    <div class="yt-content-slide">
                        <a href="#"><img src="${pageContext.request.contextPath}/resources/user/image/catalog/slideshow/home1/slider-3.jpg" alt="slider3" class="img-responsive"></a>
                    </div>
                </div>
                
                <div class="loadeding"></div>
            </div>                                             
        </div>
        <div class="row">
            
            <div class="col-lg-2 col-md-3 col-sm-4 col-xs-12 main-left sidebar-offcanvas">
                
                <div class="module">
                    <div class="banners banners2">
                        <div class="banner">
                            <a href="#"><img src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/6434483.jpg" alt="image"></a>
                        </div>
                    </div>
                </div>

                <div class="module product-simple">
                    <h3 class="modtitle">
                        <span>Latest products</span>
                    </h3>
                    <div class="modcontent">
                        <div id="so_extra_slider_1" class="extraslider" >
                            <!-- Begin extraslider-inner -->
                            <div class="yt-content-slider extraslider-inner" data-rtl="yes" data-pagination="yes" data-autoplay="no" data-delay="4" data-speed="0.6" data-margin="0" data-items_column0="1" data-items_column1="1" data-items_column2="1" data-items_column3="1" data-items_column4="1" data-arrows="no" data-lazyload="yes" data-loop="no" data-buttonpage="top">
                                <div class="item ">                               	
                                	<c:forEach items="${listProductTrending1 }" var="item" begin="0" end="3">
                                		 <div class="product-layout item-inner style1 ">
	                                        <div class="item-image">
	                                            <div class="item-img-info" style="max-height: 50px;min-height: 60px">
	                                                <a href="#" target="_self" title="Mandouille short ">
	                                               		 <img width="80" height="90" style="max-height: 90px;min-height: 90px ,overflow:hidden;" src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[0].name}" class="img-1 img-responsive" >
	                                                 </a>
	                                            </div>                                       
	                                        </div>
	                                        <div class="item-info">
	                                            <div class="item-title ">
	                                            	<h5 class="formattext1"><a href="#" target="_self" title="Mandouille short">${item.name } </a></h5>
	                                            </div>
	                                            <div class="rating">
	                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
	                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
	                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
	                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
	                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
	                                            </div>
	                                            <div class="content_price price">
	                                                <span class="price-new product-price">$55.00 </span>&nbsp;&nbsp;
	                                                <span class="price-old">$76.00 </span>&nbsp;
	                                            </div>
	                                        </div>
	                                        <!-- End item-info -->
	                                        <!-- End item-wrap-inner -->
	                                    </div>
                                	</c:forEach>                                  
                                    <!-- End item-wrap -->
                                </div>
                                <div class="item ">
                                    <div class="product-layout item-inner style1 ">
                                        <div class="item-image">
                                            <div class="item-img-info">
                                                <a href="#" target="_self" title="Qeserunt shortloin ">
                                                <img src="${pageContext.request.contextPath}/resources/user/image/catalog/demo/product/80/5.jpg" alt="Qeserunt shortloin">
                                                </a>
                                            </div>
                                           
                                        </div>
                                        <div class="item-info">
                                            <div class="item-title">
                                                <a href="#" target="_self" title="Qeserunt shortloin">
                                        Qeserunt shortloin 
                                    </a>
                                            </div>
                                            <div class="rating">
                                                <span class="fa fa-stack">
                                        <i class="fa fa-star fa-stack-2x"></i>
                                    </span>
                                                <span class="fa fa-stack">
                                        <i class="fa fa-star fa-stack-2x"></i>
                                    </span>
                                                <span class="fa fa-stack">
                                        <i class="fa fa-star fa-stack-2x"></i>
                                    </span>
                                                <span class="fa fa-stack">
                                        <i class="fa fa-star fa-stack-2x"></i>
                                    </span>
                                                <span class="fa fa-stack">
                                        <i class="fa fa-star fa-stack-2x"></i>
                                    </span>
                                            </div>
                                            <div class="content_price price">
                                                <span class="price product-price">
                                            $88.00 
                                        </span>
                                            </div>
                                        </div>
                                        <!-- End item-info -->
                                        <!-- End item-wrap-inner -->
                                    </div>
                                    <!-- End item-wrap -->
                                    <div class="product-layout item-inner style1 ">
                                        <div class="item-image">
                                            <div class="item-img-info">
                                                <a href="#" target="_self" title="Consecte quichuck ">
                                                <img src="${pageContext.request.contextPath}/resources/user/image/catalog/demo/product/80/6.jpg" alt="Consecte quichuck">
                                                </a>
                                            </div>
                                            
                                        </div>
                                        <div class="item-info">
                                            <div class="item-title">
                                                <a href="#" target="_self" title="Consecte quichuck">
                                        	Consecte quichuck 
                                    </a>
                                            </div>
                                            <div class="rating">
                                                <span class="fa fa-stack">
                                            <i class="fa fa-star fa-stack-2x"></i>
                                        </span>
                                                <span class="fa fa-stack">
                                            <i class="fa fa-star fa-stack-2x"></i>
                                        </span>
                                                <span class="fa fa-stack">
                                            <i class="fa fa-star fa-stack-2x"></i>
                                        </span>
                                                <span class="fa fa-stack">
                                            <i class="fa fa-star fa-stack-2x"></i>
                                        </span>
                                                <span class="fa fa-stack">
                                            <i class="fa fa-star fa-stack-2x"></i>
                                        </span>
                                            </div>
                                            <div class="content_price price">
                                                <span class="price-new product-price">$55.00 </span>&nbsp;&nbsp;
                                                <span class="price-old">$61.00 </span>&nbsp;
                                            </div>
                                        </div>
                                        <!-- End item-info -->
                                        <!-- End item-wrap-inner -->
                                    </div>
                                    <!-- End item-wrap -->
                                    <div class="product-layout item-inner style1 ">
                                        <div class="item-image">
                                            <div class="item-img-info">
                                                <a href="#" target="_self" title="Neatball bresaola ">
                                            <img src="${pageContext.request.contextPath}/resources/user/image/catalog/demo/product/80/7.jpg" alt="Neatball bresaola">
                                            </a>
                                            </div>
                                            
                                        </div>
                                        <div class="item-info">
                                            <div class="item-title">
                                                <a href="#" target="_self" title="Neatball bresaola">
                                        Neatball bresaola 
                                    </a>
                                            </div>
                                            <div class="rating">
                                                <span class="fa fa-stack">
                                                <i class="fa fa-star fa-stack-2x"></i>
                                            </span>
                                                <span class="fa fa-stack">
                                                <i class="fa fa-star fa-stack-2x"></i>
                                            </span>
                                                <span class="fa fa-stack">
                                                <i class="fa fa-star fa-stack-2x"></i>
                                            </span>
                                                <span class="fa fa-stack">
                                                <i class="fa fa-star fa-stack-2x"></i>
                                            </span>
                                                <span class="fa fa-stack">
                                                <i class="fa fa-star fa-stack-2x"></i>
                                            </span>
                                            </div>
                                            <div class="content_price price">
                                                <span class="price-new product-price">$65.00 </span>&nbsp;&nbsp;

                                                <span class="price-old">$71.00 </span>&nbsp;
                                            </div>
                                        </div>
                                        <!-- End item-info -->
                                        <!-- End item-wrap-inner -->
                                    </div>
                                    <!-- End item-wrap -->
                                    <div class="product-layout item-inner style1 ">
                                        <div class="item-image">
                                            <div class="item-img-info">
                                                <a href="#" target="_self" title="Yutculpa ullamco ">
                                                <img src="${pageContext.request.contextPath}/resources/user/image/catalog/demo/product/80/8.jpg" alt="Yutculpa ullamco">
                                                </a>
                                            </div>
                                            
                                        </div>
                                        <div class="item-info">
                                            <div class="item-title">
                                                <a href="#" target="_self" title="Yutculpa ullamco">
                                                    Yutculpa ullamco 
                                                </a>
                                            </div>
                                            <div class="rating">
                                                <span class="fa fa-stack">
                                                    <i class="fa fa-star fa-stack-2x"></i>
                                                </span>
                                                <span class="fa fa-stack">
                                                    <i class="fa fa-star fa-stack-2x"></i>
                                                </span>
                                                <span class="fa fa-stack">
                                                    <i class="fa fa-star fa-stack-2x"></i>
                                                </span>
                                                <span class="fa fa-stack">
                                                    <i class="fa fa-star fa-stack-2x"></i>
                                                </span>
                                                <span class="fa fa-stack">
                                                    <i class="fa fa-star fa-stack-2x"></i>
                                                </span>
                                            </div>
                                            <div class="content_price price">
                                                <span class="price-new product-price">$60.00 </span>&nbsp;&nbsp;

                                                <span class="price-old">$77.00 </span>&nbsp;



                                            </div>
                                        </div>
                                        <!-- End item-info -->
                                        <!-- End item-wrap-inner -->
                                    </div>
                                    <!-- End item-wrap -->
                                </div>
                            </div>
                            <!--End extraslider-inner -->
                        </div>
                    </div>
                </div>

                <div class="module">
                    <ul class="block-infos">
                        <li class="info1">
                            <div class="inner">
                                <i class="fa fa-file-text-o"></i>
                                <div class="info-cont">
                                    <a href="#">free delivery</a>
                                    <p>On order over $49.86</p>
                                </div>
                            </div>
                        </li>
                        <li class="info2">
                            <div class="inner">
                                <i class="fa fa-shield"></i>
                                <div class="info-cont">
                                    <a href="#">order protecttion</a>
                                    <p>secured information</p>
                                </div>
                            </div>
                        </li>
                        <li class="info3">
                            <div class="inner">
                                <i class="fa fa-gift"></i>
                                <div class="info-cont">
                                    <a href="#">promotion gift</a>
                                    <p>special offers!</p>
                                </div>
                            </div>
                        </li>
                        <li class="info4">
                            <div class="inner">
                                <i class="fa fa-money"></i>
                                <div class="info-cont">
                                    <a href="#">money back</a>
                                    <p>return over 30 days</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>

                
            </div>
            <div class="col-lg-10 col-md-9 col-sm-8 col-xs-12 main-right">
                <div class="slider-container row"> 
                                
                    <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 col2">
                        <div class="module sohomepage-slider ">
                            <div class="yt-content-slider"  data-rtl="yes" data-autoplay="no" data-autoheight="no" data-delay="4" data-speed="0.6" data-margin="0" data-items_column0="1" data-items_column1="1" data-items_column2="1"  data-items_column3="1" data-items_column4="1" data-arrows="no" data-pagination="yes" data-lazyload="yes" data-loop="no" data-hoverpause="yes">
                                <div class="yt-content-slide">
                                    <a href="#"><img src="${pageContext.request.contextPath}/resources/user/image/catalog/slideshow/home1/6539139.jpg" alt="slider1" class="img-responsive"></a>
                                </div>
                                <div class="yt-content-slide">
                                    <a href="#"><img src="${pageContext.request.contextPath}/resources/user/image/catalog/slideshow/home1/6539139.jpg" alt="slider2" class="img-responsive"></a>
                                </div>
                                <div class="yt-content-slide">
                                    <a href="#"><img src="${pageContext.request.contextPath}/resources/user/image/catalog/slideshow/home1/6539139.jpg" alt="slider3" class="img-responsive"></a>
                                </div>
                            </div>
                            
                            <div class="loadeding"></div>
                        </div>
                        
                    </div>
                    
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 col3">
                        <div class="modcontent clearfix">
                            <div class="banners banners1"> 
                                <div class="b-img">
                                        <a href="#"><img width="390" height="200" src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/realistic-valentine-s-day-background_52683-55773.jpg" alt="banner1"></a>
                                </div>
                                <div class="b-img2">
                                        <a href="#"><img height="190" src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/free-shipping-concept-illustration_114360-2308.jpg" alt="banner2"></a>
                                </div>    
                                   
                                
                            </div>
                        </div>
                    </div>                
                </div>

                <div class="banners banners3">
                    <div class="banner">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/banner3c.jpg" alt="image">
                        </a>
                    </div>
                </div>

                <!-- Deals -->
                <div class="module deals-layout1">
                    <h3 class="modtitle"><span>Daily Deals</span></h3>
                    <div class="modcontent">
                        <div id="so_deal_1" class="so-deal style2">
                            <div class="extraslider-inner products-list yt-content-slider" data-rtl="yes" data-autoplay="no" data-autoheight="no" data-delay="4" data-speed="0.6" data-margin="30" data-items_column0="2" data-items_column1="1" data-items_column2="1"  data-items_column3="1" data-items_column4="1" data-arrows="yes" data-pagination="yes" data-lazyload="yes" data-loop="no" data-hoverpause="yes">  
                                <c:forEach items="${listProductTrending1 }" var="item" begin="0" end="7">
	                                <div class="item">
	                                    <div class="product-thumb ">
	                                        <div class="row">
	                                            <div class="inner">
	                                                <div class="item-left col-lg-6 col-md-5 col-sm-5 col-xs-12">
	                                                    <div class="image"> 
	                                                    	<c:if test="${item.discount.discoutPercent >0 }">
		                                                       <span class="label-product label-product-sale"> -${item.discount.discoutPercent}% </span>
		                                                     </c:if>                                                 
	                                                        <a href="${pageContext.request.contextPath}/user/product/${item.productId}" target="_self" title="Xancetta bresao">
	                                                        	<img src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[0].name}" class="img-responsive" >	                                                           
	                                                        </a>
	                                                        <div class="button-group so-quickview">
	                                                            <button class="btn-button addToCart" title="Add to Cart" type="button" onclick="cart.add('75');"><i class="fa fa-shopping-basket"></i>  <span>Add to Cart</span>
	                                                            </button>
	                                                            <button class="btn-button wishlist" type="button" title="Add to Wish List" onclick="wishlist.add('75');"><i class="fa fa-heart"></i><span>Add to Wish List</span>
	                                                            </button>
	                                                            <button class="btn-button compare" type="button" title="Compare this Product" onclick="compare.add('75');"><i class="fa fa-refresh"></i><span>Compare this Product</span>
	                                                            </button>
	                                                            <!--quickview-->                                                      
	                                                            <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>                                                        
	                                                            <!--end quickview-->
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                                <div class="item-right col-lg-6 col-md-7 col-sm-7 col-xs-12">
	                                                    <div class="caption">
	                                                        <h4 class="formattext"><a href="${pageContext.request.contextPath}/user/product/${item.productId}" target="_self" title="Xancetta bresao">${item.name }</a></h4>
	                                                        <p class="price">
	                                                        	<c:choose > 
                                                            		<c:when test="${item.discount.discoutPercent >0 }">
                                                            			<span class="price-new">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${item.price -((item.price/100) * item.discount.discoutPercent) }" /></span>
                                                              				<span class="price-old">$${item.price }</span>
                                                            		</c:when>
                                                            		<c:when test="${item.discount.discoutPercent <= 0 }">
                                                            			<span >$${item.price }</span>
                                                            		</c:when>
                                                            	</c:choose>                                                        
	                                                        </p>
	                                                        <p class="desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore..</p>
	                                                        <div class="item-available">
	                                                            <div class="row">
	                                                                <p class="col-xs-6 a1">Available: <b>${item.quantity }</b> 
	                                                                </p>
	                                                                <p class="col-xs-6 a2">Sold: <b>${item.unitOnOrder }</b> 
	                                                                </p>
	                                                            </div>
	                                                            <c:set var="precent" value="${(item.unitOnOrder/item.quantity)*100 }"></c:set>
	                                                            <div class="available"> <span class="color_width" data-title="0%" data-toggle="tooltip" title="75%" style="width: 10%"></span>
	                                                            </div>
	                                                        </div>
	                                                        <!--countdown box-->
	                                                        <div class="item-time-w">
	                                                            <div class="time-title"><span>Hurry Up!</span> Offer ends in:60</div>
	                                                            <div class="item-time">
	                                                                <div class="item-timer">
	                                                                    <div class="defaultCountdown-30">dd11</div>
	                                                                </div>
	                                                            </div>                                                                                                  
	                                                        </div>                                                    
	                                                        <!--end countdown box-->
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
                                </c:forEach>                              
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Deals -->

                <div class="banners banners6">
                    <div class="banner">
                        <a href="#">
                            <img src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/6412122.jpg" alt="image">
                        </a>
                    </div>
                </div>
                
                
                

                <!-- Listing tabs -->
                <div class="module listingtab-layout1">
                    <h3 class="modtitle"><span>Trending items</span></h3>
                    <div id="so_listing_tabs_1" class="so-listing-tabs first-load">
                        <div class="loadeding"></div>
                        <div class="ltabs-wrap">
                            <div class="ltabs-tabs-container" data-delay="300" data-duration="600" data-effect="starwars" data-ajaxurl="" data-type_source="0" data-lg="5" data-md="3" data-sm="2" data-xs="1" data-margin="30">
                                <!--Begin Tabs-->
                                <div class="ltabs-tabs-wrap"> 
                                <span class="ltabs-tab-selected">Bathroom</span> <span class="ltabs-tab-arrow">▼</span>
                                    <div class="item-sub-cat">
                                        <ul class="ltabs-tabs cf">
                                            <li class="ltabs-tab tab-sel" data-category-id="20" data-active-content=".items-category-20"> <span class="ltabs-tab-label">Bedroom</span> </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- End Tabs-->
                            </div>
                        
                            <div class="ltabs-items-container products-list grid">
                                <!--Begin Items-->
                                <div class="ltabs-items ltabs-items-selected items-category-20" data-total="16">
                                    <div class="ltabs-items-inner ltabs-slider">
                                        <!-- item listing tab -->
                                        <c:forEach items="${listProductTrending1 }" var="item" begin="0" end="14">
                                        	 <div class="ltabs-item">
	                                            <div class="item-inner product-layout transition product-grid">
	                                                <div class="product-item-container" style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;">
	                                                    <div class="left-block">
	                                                        <div style="max-height: 210px;min-height: 210px" class="product-image-container second_img">
	                                                            <a href="${pageContext.request.contextPath}/user/product/${item.productId}" target="_self" title="Pastrami bacon">
	                                                                <img  src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[0].name}" class="img-1 img-responsive" >
	                                                                <img  src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[1].name}" class="img-2 img-responsive" >
	                                                            </a>
	                                                        </div>
	                                                        <c:if test="${item.discount.discoutPercent >0 }">
	                                                        	<div class="box-label"> <span class="label-product label-sale"> -${item.discount.discoutPercent}% </span></div>
	                                                        </c:if>	                                                        
	                                                        <div class="button-group so-quickview cartinfo--left">
	                                                            <button type="button" class="addToCart btn-button" title="Add to cart" onclick="cart.add('60 ');">  <i class="fa fa-shopping-basket"></i>
	                                                                <span>Add to cart </span>   
	                                                            </button>
	                                                            <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i><span>Add to Wish List</span>
	                                                            </button>
	                                                            <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i><span>Compare this Product</span>
	                                                            </button>
	                                                            <!--quickview-->                                                      
	                                                            <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>                                                        
	                                                            <!--end quickview-->
	                                                        </div>
	                                                    </div>
	                                                    <div class="right-block">
	                                                        <div class="caption">
	                                                            <c:set var="total" value="${0}"/>
							                                    <c:set var="total1" value="${0}"/>
							                                    <c:set var="size" value="${0}"/>
						                                       <!-- calculator total rating -->                                      
																<c:forEach var="productrv" items="${item.productReviews}">
														 	 		<c:set var="total" value="${(total + (productrv.rating/5))}" />								 	 
																</c:forEach>													
																	<c:set var="size" value="${item.productReviews.size()}"/>
																	<c:set var="total1" value="${(total/size)*5 }"/>
						                                         <c:choose>
																	<c:when test="${total1 > 4.5 && total1 <= 5 }">												
																		<div class="ratings">
																			<div class="rating-box">													
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 3.5 && total1 <= 4.5}">											
																		<div class="ratings" >
																			<div class="rating-box">
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>				
																	</c:when>
																	<c:when test="${total1 > 2.5 && total1 <= 3.5 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 1.5 && total1 <= 2.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 >= 1 && total1 <= 1.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>
																	<c:when test="${size < 1 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>	
																</c:choose>                             
	                                                            <h4 class=" formattext" ><a href="${pageContext.request.contextPath}/user/product/${item.productId}" title="Pastrami bacon" target="_self">${item.name }</a></h4>
	                                                            <div class="price">
	                                                            	<c:choose > 
	                                                            		<c:when test="${item.discount.discoutPercent >0 }">
	                                                            			<span class="price-old">$${item.price }</span>
	                                                            			<span class="price-new">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${item.price -((item.price/100) * item.discount.discoutPercent) }" /></span>
                                                               				<c:if test="${item.price >= 50}">
                                                               					<span style="float:right;"><img width="25" height="25" src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span>
                                                               				</c:if>
                                                               				
	                                                            		</c:when>
	                                                            		<c:when test="${item.discount.discoutPercent <= 0 }">
	                                                            			<span >$${item.price }</span>
	                                                            			<c:if test="${item.price >= 50}">
                                                               					<span style="float:right;"><img width="25" height="25" src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span>
                                                               				</c:if>
	                                                            		</c:when>
	                                                            	</c:choose>                                                            
	                                                            </div>     
	                                                        </div>
	                                                    </div>
	                                                </div>	                                                
	                                            </div>                                  
                                        	</div>
                                        </c:forEach>
                                    </div>
                                    
                                </div>
                                <div class="ltabs-items items-category-18 grid" data-total="16">
                                    <div class="ltabs-loading"></div>
                                    
                                </div>
                                <div class="ltabs-items  items-category-25 grid" data-total="16">
                                    <div class="ltabs-loading"></div>
                                </div>
                                <!--End Items-->
                            </div>
                            
                              <div class="ltabs-items-container products-list grid">
                                <!--Begin Items-->
                                <div class="ltabs-items ltabs-items-selected items-category-20" data-total="16">
                                    <div class="ltabs-items-inner ltabs-slider">
                                        <!-- item listing tab -->
                                        <c:forEach items="${listProductTrending2 }" var="item" begin="0" end="14">
                                        	 <div class="ltabs-item">
	                                            <div class="item-inner product-layout transition product-grid">
	                                             <div class="product-item-container" style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;">
	                                                    <div class="left-block">
	                                                        <div style="max-height: 210px;min-height: 210px" class="product-image-container second_img">
	                                                            <a href="${pageContext.request.contextPath}/user/product/${item.productId}" target="_self" title="Pastrami bacon">
	                                                                <img  src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[0].name}" class="img-1 img-responsive" >
	                                                                <img  src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[1].name}" class="img-2 img-responsive" >
	                                                            </a>
	                                                        </div>
	                                                        <c:if test="${item.discount.discoutPercent >0 }">
	                                                        	<div class="box-label"> <span class="label-product label-sale"> -${item.discount.discoutPercent}% </span></div>
	                                                        </c:if>	                                                        
	                                                        <div class="button-group so-quickview cartinfo--left">
	                                                            <button type="button" class="addToCart btn-button" title="Add to cart" onclick="cart.add('60 ');">  <i class="fa fa-shopping-basket"></i>
	                                                                <span>Add to cart </span>   
	                                                            </button>
	                                                            <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i><span>Add to Wish List</span>
	                                                            </button>
	                                                            <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i><span>Compare this Product</span>
	                                                            </button>
	                                                            <!--quickview-->                                                      
	                                                            <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>                                                        
	                                                            <!--end quickview-->
	                                                        </div>
	                                                    </div>
	                                                    <div class="right-block">
	                                                        <div class="caption">
	                                                            <c:set var="total" value="${0}"/>
							                                    <c:set var="total1" value="${0}"/>
							                                    <c:set var="size" value="${0}"/>
						                                       <!-- calculator total rating -->                                      
																<c:forEach var="productrv" items="${item.productReviews}">
														 	 		<c:set var="total" value="${(total + (productrv.rating/5))}" />								 	 
																</c:forEach>													
																	<c:set var="size" value="${item.productReviews.size()}"/>
																	<c:set var="total1" value="${(total/size)*5 }"/>
						                                         <c:choose>
																	<c:when test="${total1 > 4.5 && total1 <= 5 }">												
																		<div class="ratings">
																			<div class="rating-box">													
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 3.5 && total1 <= 4.5}">											
																		<div class="ratings" >
																			<div class="rating-box">
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>				
																	</c:when>
																	<c:when test="${total1 > 2.5 && total1 <= 3.5 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 1.5 && total1 <= 2.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 >= 1 && total1 <= 1.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>
																	<c:when test="${size < 1 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>	
																</c:choose>                             
	                                                            <h4 class=" formattext" ><a href="${pageContext.request.contextPath}/user/product/${item.productId}" title="Pastrami bacon" target="_self">${item.name }</a></h4>
	                                                            <div class="price">
	                                                            	<c:choose > 
	                                                            		<c:when test="${item.discount.discoutPercent >0 }">
	                                                            			<span class="price-old">$${item.price }</span>
	                                                            			<span class="price-new">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${item.price -((item.price/100) * item.discount.discoutPercent) }" /></span>
                                                               				<c:if test="${item.price >= 50}">
                                                               					<span style="float:right;"><img width="25" height="25" src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span>
                                                               				</c:if>
                                                               				
	                                                            		</c:when>
	                                                            		<c:when test="${item.discount.discoutPercent <= 0 }">
	                                                            			<span >$${item.price }</span>
	                                                            			<c:if test="${item.price >= 50}">
                                                               					<span style="float:right;"><img width="25" height="25" src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span>
                                                               				</c:if>
	                                                            		</c:when>
	                                                            	</c:choose>                                                            
	                                                            </div>     
	                                                        </div>
	                                                    </div>
	                                                </div>                                                   
	                                            </div>                                  
                                        	</div>
                                        </c:forEach>
                                    </div>
                                    
                                </div>
                                <div class="ltabs-items items-category-18 grid" data-total="16">
                                    <div class="ltabs-loading"></div>
                                    
                                </div>
                                <div class="ltabs-items  items-category-25 grid" data-total="16">
                                    <div class="ltabs-loading"></div>
                                </div>
                                <!--End Items-->
                            </div>
                             <div class="ltabs-items-container products-list grid">
                                <!--Begin Items-->
                                <div class="ltabs-items ltabs-items-selected items-category-20" data-total="16">
                                    <div class="ltabs-items-inner ltabs-slider">
                                        <!-- item listing tab -->
                                        <c:forEach items="${listProductTrending3 }" var="item" begin="0" end="14">
                                        	 <div class="ltabs-item">
	                                            <div class="item-inner product-layout transition product-grid">
												<div class="product-item-container" style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;">
	                                                    <div class="left-block">
	                                                        <div style="max-height: 210px;min-height: 210px" class="product-image-container second_img">
	                                                            <a href="${pageContext.request.contextPath}/user/product/${item.productId}" target="_self" title="Pastrami bacon">
	                                                                <img  src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[0].name}" class="img-1 img-responsive" >
	                                                                <img  src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[1].name}" class="img-2 img-responsive" >
	                                                            </a>
	                                                        </div>
	                                                        <c:if test="${item.discount.discoutPercent >0 }">
	                                                        	<div class="box-label"> <span class="label-product label-sale"> -${item.discount.discoutPercent}% </span></div>
	                                                        </c:if>	                                                        
	                                                        <div class="button-group so-quickview cartinfo--left">
	                                                            <button type="button" class="addToCart btn-button" title="Add to cart" onclick="cart.add('60 ');">  <i class="fa fa-shopping-basket"></i>
	                                                                <span>Add to cart </span>   
	                                                            </button>
	                                                            <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i><span>Add to Wish List</span>
	                                                            </button>
	                                                            <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i><span>Compare this Product</span>
	                                                            </button>
	                                                            <!--quickview-->                                                      
	                                                            <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>                                                        
	                                                            <!--end quickview-->
	                                                        </div>
	                                                    </div>
	                                                    <div class="right-block">
	                                                        <div class="caption">
	                                                            <c:set var="total" value="${0}"/>
							                                    <c:set var="total1" value="${0}"/>
							                                    <c:set var="size" value="${0}"/>
						                                       <!-- calculator total rating -->                                      
																<c:forEach var="productrv" items="${item.productReviews}">
														 	 		<c:set var="total" value="${(total + (productrv.rating/5))}" />								 	 
																</c:forEach>													
																	<c:set var="size" value="${item.productReviews.size()}"/>
																	<c:set var="total1" value="${(total/size)*5 }"/>
						                                         <c:choose>
																	<c:when test="${total1 > 4.5 && total1 <= 5 }">												
																		<div class="ratings">
																			<div class="rating-box">													
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 3.5 && total1 <= 4.5}">											
																		<div class="ratings" >
																			<div class="rating-box">
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>				
																	</c:when>
																	<c:when test="${total1 > 2.5 && total1 <= 3.5 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 1.5 && total1 <= 2.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 >= 1 && total1 <= 1.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>
																	<c:when test="${size < 1 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>	
																</c:choose>                             
	                                                            <h4 class=" formattext" ><a href="${pageContext.request.contextPath}/user/product/${item.productId}" title="Pastrami bacon" target="_self">${item.name }</a></h4>
	                                                            <div class="price">
	                                                            	<c:choose > 
	                                                            		<c:when test="${item.discount.discoutPercent >0 }">
	                                                            			<span class="price-old">$${item.price }</span>
	                                                            			<span class="price-new">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${item.price -((item.price/100) * item.discount.discoutPercent) }" /></span>
                                                               				<c:if test="${item.price >= 50}">
                                                               					<span style="float:right;"><img width="25" height="25" src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span>
                                                               				</c:if>
                                                               				
	                                                            		</c:when>
	                                                            		<c:when test="${item.discount.discoutPercent <= 0 }">
	                                                            			<span >$${item.price }</span>
	                                                            			<c:if test="${item.price >= 50}">
                                                               					<span style="float:right;"><img width="25" height="25" src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span>
                                                               				</c:if>
	                                                            		</c:when>
	                                                            	</c:choose>                                                            
	                                                            </div>     
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>                                  
                                        	</div>
                                        </c:forEach>
                                    </div>
                                    
                                </div>
                                <div class="ltabs-items items-category-18 grid" data-total="16">
                                    <div class="ltabs-loading"></div>
                                    
                                </div>
                                <div class="ltabs-items  items-category-25 grid" data-total="16">
                                    <div class="ltabs-loading"></div>
                                </div>
                                <!--End Items-->
                            </div>
                        </div>   
                    </div>
                </div>
                <!-- end Listing tabs -->
                <!--banners 7-->
                <div class="banners banners7">
                    <div class="row">
                        <div class="banner1 col-lg-3 col-md-3 col-sm-12 col-xs-12">
                            <div class="b1">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/tet1.jpg" alt="image">
                                </a>
                            </div>
                            <div class="b2">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/tet2.jpg" alt="image">
                                </a>
                            </div>
                        </div>
                        <div class="banner2 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <a href="#">
                                <img height="400" src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/4834550.jpg" alt="image">
                            </a>
                        </div>
                        <div class="banner3 col-lg-3 col-md-3 col-sm-12 col-xs-12">
                            <div class="b1">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/tet3.jpg" alt="image">
                                </a>
                            </div>
                            <div class="b2">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/tet4.jpg" alt="image">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Listing tabs custom -->
                <div class="module listingtab1-custom listingtab-layout1">
                    <h3 class="modtitle"><span>New items</span></h3>
                    <div id="so_listing_tabs_2" class="so-listing-tabs first-load">
                        <div class="loadeding"></div>
                        <div class="ltabs-wrap">
                            <div class="ltabs-tabs-container" data-delay="300" data-duration="600" data-effect="starwars" data-ajaxurl="" data-type_source="0" data-lg="1" data-md="1" data-sm="1" data-xs="1" data-margin="0">
                                <!--Begin Tabs-->                            
                                <div class="ltabs-tabs-wrap">   
                                    <span class='ltabs-tab-selected'></span>
                                    <span class="ltabs-tab-arrow">▼</span>
                                    <ul class="ltabs-tabs cf list-sub-cat font-title">                                  
                                        <li class="ltabs-tab tab-sel" data-category-id="51" data-active-content=".items-category-51"><span class="ltabs-tab-label">Bathroom</span></li>
                                        <li class="ltabs-tab  " data-category-id="52" data-active-content=".items-category-52">   <span class="ltabs-tab-label">Bedroom</span></li>
                                        <li class="ltabs-tab  " data-category-id="53" data-active-content=".items-category-53">   <span class="ltabs-tab-label">Decor</span></li>                                                
                                    </ul>
                                </div>
                                <!-- End Tabs-->
                            </div>
                            <div class="ltabs-items-container products-list grid">
                                <!--Begin Items-->
                                <div class="ltabs-items ltabs-items-selected items-category-51" data-total="14">
                                    <div class="ltabs-items-inner ltabs-slider">
                                        <!-- item listing tab -->
                                        <div class="ltabs-item">
											<c:forEach items="${listProductTrending }" var="item">
												<div class="item-inner product-layout transition product-grid" >
	                                               <div class="product-item-container" style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;">
	                                                    <div class="left-block">
	                                                        <div style="max-height: 210px;min-height: 210px" class="product-image-container second_img">
	                                                            <a href="${pageContext.request.contextPath}/user/product/${item.productId}" target="_self" title="Pastrami bacon">
	                                                                <img  src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[0].name}" class="img-1 img-responsive" >
	                                                                <img  src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[1].name}" class="img-2 img-responsive" >
	                                                            </a>
	                                                        </div>
	                                                        <c:if test="${item.discount.discoutPercent >0 }">
	                                                        	<div class="box-label"> <span class="label-product label-sale"> -${item.discount.discoutPercent}% </span></div>
	                                                        </c:if>	                                                        
	                                                        <div class="button-group so-quickview cartinfo--left">
	                                                            <button type="button" class="addToCart btn-button" title="Add to cart" onclick="cart.add('60 ');">  <i class="fa fa-shopping-basket"></i>
	                                                                <span>Add to cart </span>   
	                                                            </button>
	                                                            <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i><span>Add to Wish List</span>
	                                                            </button>
	                                                            <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i><span>Compare this Product</span>
	                                                            </button>
	                                                            <!--quickview-->                                                      
	                                                            <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>                                                        
	                                                            <!--end quickview-->
	                                                        </div>
	                                                    </div>
	                                                    <div class="right-block">
	                                                        <div class="caption">
	                                                            <c:set var="total" value="${0}"/>
							                                    <c:set var="total1" value="${0}"/>
							                                    <c:set var="size" value="${0}"/>
						                                       <!-- calculator total rating -->                                      
																<c:forEach var="productrv" items="${item.productReviews}">
														 	 		<c:set var="total" value="${(total + (productrv.rating/5))}" />								 	 
																</c:forEach>													
																	<c:set var="size" value="${item.productReviews.size()}"/>
																	<c:set var="total1" value="${(total/size)*5 }"/>
						                                         <c:choose>
																	<c:when test="${total1 > 4.5 && total1 <= 5 }">												
																		<div class="ratings">
																			<div class="rating-box">													
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 3.5 && total1 <= 4.5}">											
																		<div class="ratings" >
																			<div class="rating-box">
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>				
																	</c:when>
																	<c:when test="${total1 > 2.5 && total1 <= 3.5 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 1.5 && total1 <= 2.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 >= 1 && total1 <= 1.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>
																	<c:when test="${size < 1 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>	
																</c:choose>                             
	                                                            <h4 class=" formattext" ><a href="${pageContext.request.contextPath}/user/product/${item.productId}" title="Pastrami bacon" target="_self">${item.name }</a></h4>
	                                                            <div class="price">
	                                                            	<c:choose > 
	                                                            		<c:when test="${item.discount.discoutPercent >0 }">
	                                                            			<span class="price-old">$${item.price }</span>
	                                                            			<span class="price-new">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${item.price -((item.price/100) * item.discount.discoutPercent) }" /></span>
                                                               				<c:if test="${item.price >= 50}">
                                                               					<span style="float:right;"><img width="25" height="25" src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span>
                                                               				</c:if>
                                                               				
	                                                            		</c:when>
	                                                            		<c:when test="${item.discount.discoutPercent <= 0 }">
	                                                            			<span >$${item.price }</span>
	                                                            			<c:if test="${item.price >= 50}">
                                                               					<span style="float:right;"><img width="25" height="25" src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span>
                                                               				</c:if>
	                                                            		</c:when>
	                                                            	</c:choose>                                                            
	                                                            </div>     
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>											
											</c:forEach>
                                        </div>
                                        <!-- end item listing tab -->
                                    </div>
                                </div>
                                <div class="ltabs-items items-category-52 grid" data-total="14">
                                    <div class="ltabs-loading"></div>                                
                                </div>

                                <div class="ltabs-items  items-category-53 grid" data-total="14">
                                    <div class="ltabs-loading"></div>
                                </div>
                                <!--End Items-->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end Listing tabs custom -->
                            
            </div>
            <div class="slider-brands col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="yt-content-slider contentslider" data-autoplay="no" data-delay="4" data-speed="0.6" data-margin="0" data-items_column0="8" data-items_column1="6" data-items_column2="3" data-items_column3="2" data-items_column4="1" data-arrows="yes"
                        data-pagination="no" data-lazyload="yes" data-loop="no">
                    <c:forEach items="${stores }" var="store">
                    	<div class="item">
                        <a href="${pageContext.request.contextPath}/user/store/${store.userId}">                       	
                            <img  width="140" height="120" src="${pageContext.request.contextPath}/assets/uploads/stores/${store.image}">
                        </a>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        
    </div>
		
	</jsp:attribute>
</mt:template_home>
