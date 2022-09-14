<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<mt:template_home title="Category">
	<jsp:attribute name="content">
				<ul class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/"><i
					class="fa fa-home"></i></a></li>
			<li><a
				href="${pageContext.request.contextPath}/user/category/${product.category.categoryId }">${product.category.name }</a></li>
			<li><a href="#">${product.name }</a></li>
		</ul>
		
		<div class="row">

			<!--Middle Part Start-->
			<div id="content" class="col-md-9 col-sm-8">
				
				<div class="product-view">
					<div class="left-content-product">
						<div class="row">
							<div class="content-product-left col-md-6 col-sm-12 col-xs-12">
								<div id="thumb-slider-vertical" class="thumb-vertical-outer">
									<!-- <span class="btn-more prev-thumb nt"><i class="fa fa-angle-up"></i></span>
									<span class="btn-more next-thumb nt"><i class="fa fa-angle-down"></i></span> -->
									<ul class="thumb-vertical">
										
										<c:forEach items="${product.images }" var="image">
											<li class="owl2-item">
												<a data-index="1" class="img thumbnail "
												data-image="${pageContext.request.contextPath}/assets/uploads/products/${image.name}"
												title="Chicken swinesha">
													<img
													src="${pageContext.request.contextPath}/assets/uploads/products/${image.name}"
													title="Chicken swinesha" alt="Chicken swinesha">
												</a>
											</li>							
										</c:forEach>
										
									</ul>
								</div>
								<div class="large-image  vertical">								
									<img itemprop="image" class="product-image-zoom"
										src="${pageContext.request.contextPath}/assets/uploads/products/${product.images[0].name}"
										data-zoom-image="${pageContext.request.contextPath}/assets/uploads/products/${product.images[0].name}"
										title="Chicken swinesha" alt="Chicken swinesha">
								</div>
								<a class="thumb-video pull-left"
									href="https://www.youtube.com/watch?v=HhabgvIIXik"><i
									class="fa fa-youtube-play"></i></a>
								
							</div>

							<div class="content-product-right col-md-6 col-sm-12 col-xs-12">
								<div class="title-product">
									<h1>${product.name }</h1>
								</div>
								<!-- Review ---->
								<div class="box-review form-group">
									<c:set var="total" value="${0}" />
                                    <c:set var="total1" value="${0}" />
                                    <c:set var="size" value="${0}" />
                                       <!-- calculator total rating -->                                      
										<c:forEach var="productrv" items="${product.productReviews}">
								 	 		<c:set var="total"
											value="${(total + (productrv.rating/5))}" />								 	 
										</c:forEach>													
											<c:set var="size" value="${product.productReviews.size()}" />
											<c:set var="total1" value="${(total/size)*5 }" />
                                         <c:choose>
											<c:when test="${total1 > 4.5 && total1 <= 5 }">												
												<div class="ratings">
													<div class="rating-box">
														<span
														style="color: #FF5403; margin: 5px; font: small-caps bold 18px/1 sans-serif; text-decoration: underline red solid"><fmt:formatNumber
															type="number" maxFractionDigits="1" value="${total1}" /> </span>
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
													</div>
												</div>	
											</c:when>
											<c:when test="${total1 > 3.5 && total1 <= 4.5}">
												<span
												style="color: #FF5403; margin: 5px; font: small-caps bold 18px/1 sans-serif; text-decoration: underline red solid"><fmt:formatNumber
													type="number" maxFractionDigits="1" value="${total1}" /> </span>
												<div class="ratings">
													<div class="rating-box">
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
													</div>
												</div>				
											</c:when>
											<c:when test="${total1 > 2.5 && total1 <= 3.5 }">
												<div class="ratings">
													<div class="rating-box">
														<span
														style="color: #FF5403; margin: 5px; font: small-caps bold 18px/1 sans-serif; text-decoration: underline red solid"><fmt:formatNumber
															type="number" maxFractionDigits="1" value="${total1}" /> </span>
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
													</div>
												</div>	
											</c:when>
											<c:when test="${total1 > 1.5 && total1 <= 2.5 }">
												<div class="ratings">
													<div class="rating-box">
														<span
														style="color: #FF5403; margin: 5px; font: small-caps bold 18px/1 sans-serif; text-decoration: underline red solid"><fmt:formatNumber
															type="number" maxFractionDigits="1" value="${total1}" /> </span>
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
													</div>
												</div>	
											</c:when>
											<c:when test="${total1 >= 1 && total1 <= 1.5 }">
												<div class="ratings">
													<div class="rating-box">
														<span
														style="color: #FF5403; margin: 5px; font: small-caps bold 18px/1 sans-serif; text-decoration: underline red solid"><fmt:formatNumber
															type="number" maxFractionDigits="1" value="${total1}" /> </span>
														<<span class="fa fa-stack"><i
														class="fa fa-star fa-stack-1x"></i><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
													</div>
												</div>												
											</c:when>
											<c:when test="${size < 1 }">
												<div class="ratings">
													<div class="rating-box">														
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
														<span class="fa fa-stack"><i
														class="fa fa-star-o fa-stack-1x"></i></span>
													</div>
												</div>												
											</c:when>	
										</c:choose>								
									<a class="reviews_button" href=""
										onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"> ${product.productReviews.size() } reviews</a>	| 
									<a class="write_review_button" href=""
										onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">Write a review</a> |
									<span>${product.unitOnOrder} Sold</span>
								</div>

								<div class="product-label form-group">
									<div class="product_page_price price" itemprop="offerDetails"
										itemscope="" itemtype="http://data-vocabulary.org/Offer">
										<c:set var="unitPirce" value="${0 }"></c:set>
										<c:choose> 
                                        	<c:when
												test="${product.discount.discoutPercent > 0 }">
                                        		<span class="price-new"
													itemprop="price">$<fmt:formatNumber type="number"
														maxFractionDigits="2"
														value="${product.price -((product.price/100) * product.discount.discoutPercent) }" /></span>
												<c:set var="unitPirce" value="${product.price -((product.price/100) * product.discount.discoutPercent) }"></c:set>
                                          		<span class="price-old">$${product.price }</span>
                                        	</c:when>
                                        	<c:when
												test="${product.discount.discoutPercent <= 0 }">
												<c:set var="unitPirce" value="${product.price }"></c:set>
                                        		<span>$${product.price }</span>
                                        	</c:when>
                                        </c:choose>    
										
									</div>
									<div class="stock">
										<span>Availability:</span> <span class="status-stock">In Stock</span>
									</div>
								</div>

								<div class="product-box-desc">
									<div class="inner-box-desc">
										<div class="price-tax">
											<span>Products on offer at:</span> ${product.address }</div>									
										<div class="brand">
											<span>Brand:</span><a href="#"> ${product.brand }</a>		</div>
										<div class="model">
											<span>Product Code:</span> Product ${product.productId }</div>
										<div class="reward">
											<span>Made-In:</span> ${product.madeIn }</div>
										<div class="reward">
											<span>Store name:</span><a
												href="${pageContext.request.contextPath}/user/store/${product.store.userId}"
												style="color: blue"> ${product.store.name }</a> <span
												class="fa fa-hand-o-left"></span>
										</div>
										
									</div>
								</div>
								<c:if test="${unitPirce >= 50 }">
									<div class="product-box-desc">
										<div class="inner-box-ship">
											<div class="shipping">
												<span>Shipping:</span> <span ><img src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span>
													 Free shipping for orders over $50
											</div>									
										</div>
									</div>							
								</c:if>								
								<div class="short_description form-group">
									<h4>OverView</h4>
									${product.content }
								</div>
								<span style="border: solid #2EB086; border-radius: 8px; padding: 5px"><strong>${product.quantity }</strong>  piece available</span>
								<div id="product">
									<form method="get" action="${pageContext.request.contextPath}/user/cart/addcart">							
										<div class="form-group box-info-product">
											<div class="option quantity">
												<div class="input-group quantity-control" unselectable="on"
													style="-webkit-user-select: none;">
													<label>Quantity</label>
													<input type="hidden" name="product_id"
														value="${product.productId }">
													<input type="number" min="1" max="${product.quantity }" value="1" name="quantity">
												</div>
											</div>
											
											<div class="cart">
												<input type="submit" data-toggle="tooltip" title=""
													value="Add to Cart" data-loading-text="Loading..."
													id="button-cart" class="btn btn-mega btn-lg"
													onclick="cart.add('42', '1');"
													data-original-title="Add to Cart">
											</div>										
										</div>
									</form>	
								</div>
								<!-- end box info product -->

							</div>
						</div>
					</div>
					
				
				</div>
				
				<!-- Product Tabs -->
				<div class="producttab ">
					<div class="tabsslider horizontal-tabs  col-xs-12">
						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#tab-1">Description</a></li>
							<li class="item_nonactive"><a data-toggle="tab"
								href="#tab-review">Reviews (${product.productReviews.size() })</a></li>
							<li class="item_nonactive"><a data-toggle="tab"
								href="#tab-4">Tags</a></li>
							<li class="item_nonactive"><a data-toggle="tab"
								href="#tab-5">Custom Tab</a></li>
						</ul>
						<div class="tab-content col-xs-12">
							<div id="tab-1" class="tab-pane fade active in">
								${product.content }
							</div>
							<div id="tab-review" class="tab-pane fade">
								<c:forEach items="${product.productReviews }" var="prR">
									
										<div id="review">
										<table class="table table-striped table-bordered">
											<tbody>
												<tr>
													<td style="width: 50%;"><strong>${prR.user.fullname  }</strong></td>
													<td class="text-right">${prR.created  }</td>
												</tr>
												<tr>
													<td colspan="2">
														<small style="color: red">Verified Purchase</small>
														<p>${prR.coments  }</p>
															 <c:choose>
																<c:when test="${prR.rating == 5 }">												
																	<div class="ratings">
																		<div class="rating-box">																	
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																		</div>
																	</div>	
																</c:when>
																<c:when test="${prR.rating == 4 }">														
																	<div class="ratings">
																		<div class="rating-box">
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																		</div>
																	</div>				
																</c:when>
																<c:when test="${prR.rating == 3 }">
																	<div class="ratings">
																		<div class="rating-box">															
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																		</div>
																	</div>	
																</c:when>
																<c:when test="${prR.rating == 2 }">
																	<div class="ratings">
																		<div class="rating-box">																	
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																		</div>
																	</div>	
																</c:when>
																<c:when test="${prR.rating == 1 }">
																	<div class="ratings">
																		<div class="rating-box">																	
																			<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-1x"></i><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																			class="fa fa-star-o fa-stack-1x"></i></span>
																		</div>
																	</div>												
																</c:when>															
														</c:choose>
													</td>
												</tr>
											</tbody>
										</table>
										<div class="text-right"></div>
									</div>
								</c:forEach>
								
									
									
																	
							</div>
							<div id="tab-4" class="tab-pane fade">
								<a href="#">Monitor</a>,
								<a href="#">Apple</a>				
							</div>
							<div id="tab-5" class="tab-pane fade">
								<p>Lorem ipsum dolor sit amet, consetetur
									sadipscing elitr, sed diam nonumy eirmod
									tempor invidunt ut labore et dolore
									magna aliquyam erat, sed diam voluptua.
									At vero eos et accusam et justo duo
									dolores et ea rebum. Stet clita kasd
									gubergren, no sea takimata sanctus est
									Lorem ipsum dolor sit amet. Lorem ipsum
									dolor sit amet, consetetur sadipscing
									elitr, sed diam nonumy eirmod tempor
									invidunt ut labore et dolore magna aliquyam
									erat, sed diam voluptua. </p>
								<p>At vero eos et accusam et justo duo dolores
									et ea rebum. Stet clita kasd gubergren,
									no sea takimata sanctus est Lorem ipsum
									dolor sit amet. Lorem ipsum dolor sit
									amet, consetetur sadipscing elitr.</p>
								<p>Sed diam nonumy eirmod tempor invidunt
									ut labore et dolore magna aliquyam erat,
									sed diam voluptua. At vero eos et accusam
									et justo duo dolores et ea rebum. Stet
									clita kasd gubergren, no sea takimata
									sanctus est Lorem ipsum dolor sit amet.</p>
							</div>
						</div>
					</div>
				</div>
				<!-- //Product Tabs -->
				
				<!-- FROM THE SAME SHOP -->
			<div class="related titleLine products-list grid module ">
				<h3 class="modtitle">FROM THE SAME SHOP  </h3>		
				<div class="releate-products yt-content-slider products-list"
						data-rtl="no" data-loop="yes" data-autoplay="no"
						data-autoheight="no" data-autowidth="no" data-delay="4"
						data-speed="0.6" data-margin="30" data-items_column0="5"
						data-items_column1="3" data-items_column2="3"
						data-items_column3="2" data-items_column4="1" data-arrows="yes"
						data-pagination="no" data-lazyload="yes" data-hoverpause="yes">
					<c:forEach items="${products }" var="item">
						<div class="item">
	                        <div
									class="item-inner product-layout transition product-grid">
	                            <div class="product-item-container"
										style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;">
	                                                    <div
											class="left-block">
	                                                        <div
												style="max-height: 210px; min-height: 210px"
												class="product-image-container second_img">
	                                              <a href="${pageContext.request.contextPath}/user/product/${item.productId}" target="_self" title="Pastrami bacon">
	                                                                <img
													src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[0].name}"
													class="img-1 img-responsive">
	                                                                <img
													src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[1].name}"
													class="img-2 img-responsive">
	                                                            </a>
	                                                        </div>
	                                                        <c:if
												test="${item.discount.discoutPercent >0 }">
	                                                        	<div
													class="box-label"> <span
														class="label-product label-sale"> -${item.discount.discoutPercent}% </span>
												</div>
	                                                        </c:if>	                                                        
	                                                        <div
												class="button-group so-quickview cartinfo--left">
	                                                            <button
													type="button" class="addToCart btn-button"
													title="Add to cart" onclick="cart.add('60 ');">  <i
														class="fa fa-shopping-basket"></i>
	                                                                <span>Add to cart </span>   
	                                                            </button>
	                                                            <button
													type="button" class="wishlist btn-button"
													title="Add to Wish List" onclick="wishlist.add('60');">
													<i class="fa fa-heart"></i><span>Add to Wish List</span>
	                                                            </button>
	                                                            <button
													type="button" class="compare btn-button"
													title="Compare this Product " onclick="compare.add('60');">
													<i class="fa fa-refresh"></i><span>Compare this Product</span>
	                                                            </button>
	                                                            <!--quickview-->                                                      
	                                                            <a
													class="iframe-link btn-button quickview quickview_handler visible-lg"
													href="quickview.html" title="Quick view"
													data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>                                                        
	                                                            <!--end quickview-->
	                                                        </div>
	                                                    </div>
	                                                    <div
											class="right-block">
	                                                        <div
												class="caption">
	                                                            <c:set
													var="total" value="${0}" />
							                                    <c:set var="total1"
													value="${0}" />
							                                    <c:set var="size"
													value="${0}" />
						                                       <!-- calculator total rating -->                                      
																<c:forEach var="productrv"
													items="${item.productReviews}">
														 	 		<c:set var="total"
														value="${(total + (productrv.rating/5))}" />								 	 
																</c:forEach>													
																	<c:set var="size" value="${item.productReviews.size()}" />
																	<c:set var="total1" value="${(total/size)*5 }" />
						                                         <c:choose>
																	<c:when test="${total1 > 4.5 && total1 <= 5 }">												
																		<div class="ratings">
																			<div class="rating-box">													
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 3.5 && total1 <= 4.5}">											
																		<div class="ratings">
																			<div class="rating-box">
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>				
																	</c:when>
																	<c:when test="${total1 > 2.5 && total1 <= 3.5 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 1.5 && total1 <= 2.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 >= 1 && total1 <= 1.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>
																	<c:when test="${size < 1 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>	
																</c:choose>                             
	                                                            <h4
													class=" formattext">
													<a href="${pageContext.request.contextPath}/user/product/${item.productId}" title="Pastrami bacon"
														target="_self">${item.name }</a>
												</h4>
	                                                            <div
													class="price">
	                                                            	<c:choose> 
	                                                            		<c:when
															test="${item.discount.discoutPercent >0 }">
	                                                            			<span
																class="price-old">$${item.price }</span>
	                                                            			<span
																class="price-new">$<fmt:formatNumber
																	type="number" maxFractionDigits="2"
																	value="${item.price -((item.price/100) * item.discount.discoutPercent) }" /></span>
                                                               				<c:if
																test="${item.price >= 50}">
                                                               					<span
																	style="float: right;"><img width="25"
																	height="25"
																	src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span>
                                                               				</c:if>
                                                               				
	                                                            		</c:when>
	                                                            		<c:when
															test="${item.discount.discoutPercent <= 0 }">
	                                                            			<span>$${item.price }</span>
	                                                            			<c:if
																test="${item.price >= 50}">
                                                               					<span
																	style="float: right;"><img width="25"
																	height="25"
																	src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span>
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

			<!-- end Related  Products-->
			
			<div class="related titleLine products-list grid module ">
				<h3 class="modtitle">Related to items you've viewed  </h3>		
				<div class="releate-products yt-content-slider products-list"
						data-rtl="no" data-loop="yes" data-autoplay="no"
						data-autoheight="no" data-autowidth="no" data-delay="4"
						data-speed="0.6" data-margin="30" data-items_column0="5"
						data-items_column1="3" data-items_column2="3"
						data-items_column3="2" data-items_column4="1" data-arrows="yes"
						data-pagination="no" data-lazyload="yes" data-hoverpause="yes">
					<c:forEach items="${productsRelated }" var="item">
							 <div class="ltabs-item">
                                 <div
									class="item-inner product-layout transition product-grid">
                                     <div class="product-item-container"
										style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;">
	                                                    <div
											class="left-block">
	                                                        <div
												style="max-height: 210px; min-height: 210px"
												class="product-image-container second_img">
	                                                            <a
													href="${pageContext.request.contextPath}/user/product/${item.productId}"
													target="_self" title="Pastrami bacon">
	                                                                <img
													src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[0].name}"
													class="img-1 img-responsive">
	                                                                <img
													src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[1].name}"
													class="img-2 img-responsive">
	                                                            </a>
	                                                        </div>
	                                                        <c:if
												test="${item.discount.discoutPercent >0 }">
	                                                        	<div
													class="box-label"> <span
														class="label-product label-sale"> -${item.discount.discoutPercent}% </span>
												</div>
	                                                        </c:if>	                                                        
	                                                        <div
												class="button-group so-quickview cartinfo--left">
	                                                            <button
													type="button" class="addToCart btn-button"
													title="Add to cart" onclick="cart.add('60 ');">  <i
														class="fa fa-shopping-basket"></i>
	                                                                <span>Add to cart </span>   
	                                                            </button>
	                                                            <button
													type="button" class="wishlist btn-button"
													title="Add to Wish List" onclick="wishlist.add('60');">
													<i class="fa fa-heart"></i><span>Add to Wish List</span>
	                                                            </button>
	                                                            <button
													type="button" class="compare btn-button"
													title="Compare this Product " onclick="compare.add('60');">
													<i class="fa fa-refresh"></i><span>Compare this Product</span>
	                                                            </button>
	                                                            <!--quickview-->                                                      
	                                                            <a
													class="iframe-link btn-button quickview quickview_handler visible-lg"
													href="quickview.html" title="Quick view"
													data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>                                                        
	                                                            <!--end quickview-->
	                                                        </div>
	                                                    </div>
	                                                    <div
											class="right-block">
	                                                        <div
												class="caption">
	                                                            <c:set
													var="total" value="${0}" />
							                                    <c:set var="total1"
													value="${0}" />
							                                    <c:set var="size"
													value="${0}" />
						                                       <!-- calculator total rating -->                                      
																<c:forEach var="productrv"
													items="${item.productReviews}">
														 	 		<c:set var="total"
														value="${(total + (productrv.rating/5))}" />								 	 
																</c:forEach>													
																	<c:set var="size" value="${item.productReviews.size()}" />
																	<c:set var="total1" value="${(total/size)*5 }" />
						                                         <c:choose>
																	<c:when test="${total1 > 4.5 && total1 <= 5 }">												
																		<div class="ratings">
																			<div class="rating-box">													
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 3.5 && total1 <= 4.5}">											
																		<div class="ratings">
																			<div class="rating-box">
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>				
																	</c:when>
																	<c:when test="${total1 > 2.5 && total1 <= 3.5 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 1.5 && total1 <= 2.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 >= 1 && total1 <= 1.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-1x"></i><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>
																	<c:when test="${size < 1 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																	class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>	
																</c:choose>                             
	                                                            <h4
													class=" formattext">
													<a href="${pageContext.request.contextPath}/user/product/${item.productId}" title="Pastrami bacon"
														target="_self">${item.name }</a>
												</h4>
	                                                            <div
													class="price">
	                                                            	<c:choose> 
	                                                            		<c:when
															test="${item.discount.discoutPercent >0 }">
	                                                            			<span
																class="price-old">$${item.price }</span>
	                                                            			<span
																class="price-new">$<fmt:formatNumber
																	type="number" maxFractionDigits="2"
																	value="${item.price -((item.price/100) * item.discount.discoutPercent) }" /></span>
                                                               				<c:if
																test="${item.price >= 50}">
                                                               					<span
																	style="float: right;"><img width="25"
																	height="25"
																	src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span>
                                                               				</c:if>
                                                               				
	                                                            		</c:when>
	                                                            		<c:when
															test="${item.discount.discoutPercent <= 0 }">
	                                                            			<span>$${item.price }</span>
	                                                            			<c:if
																test="${item.price >= 50}">
                                                               					<span
																	style="float: right;"><img width="25"
																	height="25"
																	src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span>
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
			</div>
			<!--Middle Part End-->
			<!--Left Part Start -->
			<aside class="col-sm-4 col-md-3 content-aside" id="column-left">
				<div class="module category-style">
                	<h3 class="modtitle">Categories</h3>
                	<div class="modcontent">
                		<div class="box-category">
                			<ul id="cat_accordion" class="list-group">
                				<c:forEach items="${categories }" var="item">
                					<li class=""><a
										href="${pageContext.request.contextPath}/user/category/${item.categoryId }"
										class="cutom-parent">${item.name }</a>  <span
										class="dcjq-icon"></span></li>
                				</c:forEach>
                			</ul>
                		</div>
                	</div>
                </div>
                <div class="module banner-left hidden-xs ">
                	<div class="banner-sidebar banners">
                      <div>
                        <a title="Banner Image" href="#"> 
                          <img
								src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/6434483.jpg"
								alt="Banner Image"> 
                        </a>
                      </div>
                    </div>
                </div>
            </aside>
            <!--Left Part End -->
		</div>
		
	</jsp:attribute>
</mt:template_home>
