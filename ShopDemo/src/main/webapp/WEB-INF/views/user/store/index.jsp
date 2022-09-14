<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<mt:template_home title="store">
	<jsp:attribute name="content">
	
		<div class="row">
			<div id="content" class="col-sm-12 align-middle">
				<div class="table-responsive" style="padding: 15px;box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px; margin-bottom: 30px">
					<div class="col-sm-2 text-center">
						<img style="border-radius: 50% ; box-shadow: rgba(9, 30, 66, 0.25) 0px 4px 8px -2px, rgba(9, 30, 66, 0.08) 0px 0px 0px 1px;" width="100" height="100" src="${pageContext.request.contextPath}/assets/uploads/stores/${store.image }"><br><br>
						 <c:set var="total" value="${0}"/>
	                                           <c:set var="total1" value="${0}"/>
	                                           <c:set var="size" value="${0}"/>
	                                           <!-- calculator total rating -->                                      
	                                           <c:forEach items="${store.products}" var="product">
													<c:forEach var="productrv" items="${product.productReviews}">
													 	 <c:set var="total" value="${(total + (productrv.rating/5))}" />
													</c:forEach> 
												<c:set var="size" value="${size + product.productReviews.size()}" />
												<c:set var="total1" value="${(total/size)*5}" />
												
	                                           </c:forEach>
	                                           
	                                           <c:choose>
												<c:when test="${total1 > 4.5 && total1 <= 5 }">
													<span class="font700"> <fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star rating-color"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
													 <div class="small-ratings "> <i class="fa fa-star rating-color "></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> </div>	
												</c:when>
												<c:when test="${total1 > 3.5 && total1 <= 4.5}">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star rating-color"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star"></i> </div>													
												</c:when>
												<c:when test="${total1 > 2.5 && total1 <= 3.5 }">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star rating-color"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>													
												</c:when>
												<c:when test="${total1 > 1.5 && total1 <= 2.5 }">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star rating-color"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star"></i> </div>												
												</c:when>
												<c:when test="${total1 >= 1 && total1 <= 1.5 }">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star rating-color"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star"></i> </div>												
												</c:when>
												<c:when test="${total1 < 1 }">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star rating-color"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star"></i> </div>												
												</c:when>
												<c:when test="${size < 1 }">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="0" /> / 5 </span><i class="fa fa-1x fa-star rating-color"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star"></i> </div>											
												</c:when>	
												
											</c:choose>
					</div>
					<div class="col-sm-4 ">
						<table>
							<tr>
								<td><h1>${store.name } Store</h1></td>
							</tr>
							<tr>
								<td><h3><i class="fa fa-archive"></i> Products : <span style="color:#D9534F">${store.products.size() }</span></h3></td>
								<td><h3><i class="fa fa-check"></i> Joined : <span style="color:#D9534F">${store.created }</span></h3></td>
							</tr>
							<tr>
								<td>
								<h3><i class="fa fa-star-o"></i> Rating : <span style="color:#D9534F">
									<fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /></span></h3>
								</td>
								<td><a href="#" class="btn btn-default">Chat</a></td>
							</tr>
						</table>
					</div>
						<div class="col-sm-4 ">
						<table>
							
							
							
						</table>
					</div>
				</div>
			</div>
				
		</div>
	
		<div class="row">
			<!--Left Part Start -->
			
				
			<aside class="col-sm-4 col-md-3 content-aside" id="column-left" >
				<div class="module " style="box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;">
                	<h3 class="modtitle">Categories</h3>
                	<div class="modcontent">
                		<div class="box-category">
                			<ul id="cat_accordion" class="list-group">
                					<li>
                						<a href="${pageContext.request.contextPath}/user/store/${store.userId}/0" class="cutom-parent">All Products</a>
                					</li>
                				<c:forEach items="${store.categories }" var="item">
                					<li><a
										href="${pageContext.request.contextPath}/user/store/${store.userId}/${item.categoryId}"
										class="cutom-parent">${item.name }</a></li>
                				
                				</c:forEach>
                			</ul>
                		</div>
                		
                		
                	</div>
                </div>
                
            </aside>
            <!--Left Part End -->
			
        	<!--Middle Part Start-->
        	<div id="content" class="col-md-9 col-sm-8">
        		<div class="products-category">
                    <h3 class="title-category ">All Product</h3>
        			<!-- Filters -->
                    <div class="product-filter product-filter-top filters-panel">
                        
                    </div>
                    <!-- //end Filters -->
        			<!--changed listings-->
                    <div class="products-list row nopadding-xs so-filter-gird grid">
                    	<c:forEach items="${products }" var="item">
	        				<div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
		                      	<div class="product-item-container" style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;">
                                     <div class="left-block">
                                         <div style="max-height: 210px;min-height: 210px" class="product-image-container second_img">
                                             <a href="${pageContext.request.contextPath}/user/product/${item.productId }" target="_self" title="Pastrami bacon">
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
                                  </div> <br>
                                  <span style="float:right;color:#557C55" ><strong>${item.unitOnOrder }</strong> sold</span> 
                              </div>
                          </div>
                      	</div>	
              			</div>
                       </c:forEach>
                    </div>
        			<!--// End Changed listings-->
        			<!-- Filters -->
        			<div class="product-filter product-filter-bottom filters-panel">
                        <div class="row">
                            <div class="col-sm-6 text-left"></div>
                            <div class="col-sm-6 text-right">Showing 1 to 15 of 15 (1 Pages)</div>
                        </div>
                    </div>
        			<!-- //end Filters -->
        		</div>
        	</div>       
        	<!--Middle Part End-->
        </div>
   
	</jsp:attribute>
</mt:template_home>
