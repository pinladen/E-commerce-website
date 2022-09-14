<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<mt:template_superadmin title="User">
	<jsp:attribute name="content">
		<div id="main-content">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h2>Store Detail</h2>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item">Store Management</li>
                        <li class="breadcrumb-item active">User Detail</li>
                    </ul>
                    
                </div>
            </div>
        </div>    
        <div class="container-fluid">           

            <div class="row clearfix">
                <div class="col-lg-4 col-md-12">
                    <div class="card profile-header">
                        <div class="body text-center">
                            <div class="profile-image mb-3"><img style="box-shadow: rgba(9, 30, 66, 0.25) 0px 4px 8px -2px, rgba(9, 30, 66, 0.08) 0px 0px 0px 1px;" width="150" height="150" src="${pageContext.request.contextPath}/assets/uploads/stores/${store.image }" class="rounded-circle" alt=""></div>
                            <div>
                                <h4 class="mb-0"><strong>${store.name}</strong> Store</h4>
                                <!-- calculator total rating --> 
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
													<span class="font700"> <fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
													 <div class="small-ratings "> <i class="fa fa-star rating-color "></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> </div>	
												</c:when>
												<c:when test="${total1 > 3.5 && total1 <= 4.5}">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star"></i> </div>													
												</c:when>
												<c:when test="${total1 > 2.5 && total1 <= 3.5 }">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>													
												</c:when>
												<c:when test="${total1 > 1.5 && total1 <= 2.5 }">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star"></i> </div>												
												</c:when>
												<c:when test="${total1 >= 1 && total1 <= 1.5 }">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star"></i> </div>												
												</c:when>
												<c:when test="${total1 < 1 }">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star"></i> </div>												
												</c:when>
												
											</c:choose>
	                                                                                      	
                                            	
                                            	<!-- /Caculate total rating --> 
                                <span>${store.address}</span>
                            </div>
                            <div class="mt-3">
                                <button class="btn btn-outline-secondary">Message</button>
                            </div>                            
                        </div>
                    </div>

                    <div class="card">
                        <div class="header">
                            <h2>Info</h2>
                            <ul class="header-dropdown dropdown dropdown-animated scale-left">
                                <li> <a href="javascript:void(0);" data-toggle="cardloading" data-loading-effect="pulse"><i class="icon-refresh"></i></a></li>
                                <li><a href="javascript:void(0);" class="full-screen"><i class="icon-size-fullscreen"></i></a></li>
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another Action</a></li>
                                        <li><a href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <small class="text-muted">Address: </small>
                            <p>${store.address}</p>
                            <hr>
                            <small class="text-muted">Email address: </small>
                            <p>${store.user.email}</p>                            
                            <hr>
                            <small class="text-muted">Mobile: </small>
                            <p>${store.user.phone}</p>
                            <hr>
                            <small class="text-muted">Birth Date: </small>
                            <p class="m-b-0">October 22th, 1990</p>
                            <hr>
                            <small class="text-muted">Social: </small>
                            <p><i class="fa fa-twitter m-r-5"></i> twitter.com/example</p>
                            <p><i class="fa fa-facebook  m-r-5"></i> facebook.com/example</p>
                            <p><i class="fa fa-github m-r-5"></i> github.com/example</p>
                            <p><i class="fa fa-instagram m-r-5"></i> instagram.com/example</p>
                        </div>
                    </div>

                    
                </div>

                <div class="col-lg-8 col-md-12">    
                    <div class="card">
                        <div class="body">
                            <ul class="nav nav-tabs-new">
                                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#Overview">Overview</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#Settings">Settings</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content padding-0">
                        <div class="tab-pane blog-page active" id="Overview">
                            <div class="row clearfix text-center">
                                <div class="col-lg-3 col-md-6">
                                    <div class="card">
                                        <div class="body">
                                            <p class="display-4 font-weight-bold">${store.products.size()}</p>
                                            <h6 class="mb-0 mt-3 text-info">Product</h6>
                                            <spapn>In Stock</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="card">
                                        <div class="body">
                                            <p class="display-4 font-weight-bold">${store.orderses.size()}</p>
                                            <h6 class="mb-0 mt-3 text-primary">Order</h6>
                                            <span>8 of this month</span>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-6 col-md-5">
                                    <div class="card">
                                        <div class="body p-2">
                                        <c:set var="total" value="${0 }"></c:set>
                                        	<c:forEach items="${store.orderses }" var="order">
                                        		<c:forEach items="${order.orderDetails }" var="orderdetail">
                                        			<c:set var="total" value="${total + ((orderdetail.product.price-((orderdetail.product.price/100)*orderdetail.discount.discoutPercent))*orderdetail.quantity) }"></c:set>
                                        		</c:forEach>
                                        	</c:forEach>
                                            <p class="display-3 text-success font-weight-bold "><fmt:formatNumber type="number" maxIntegerDigits="4" value="${sale}" />$</p>                       
                                            <h6 class="mb-0 mt-3 ">Sale</h6>
                                            <span>2 of this month</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="header">
                                    <h2>Products<small>All products available in store</small></h2>
                                    <ul class="header-dropdown dropdown dropdown-animated scale-left">
                                        <li> <a href="javascript:void(0);" data-toggle="cardloading" data-loading-effect="pulse"><i class="icon-refresh"></i></a></li>
                                        <li><a href="javascript:void(0);" class="full-screen"><i class="icon-size-fullscreen"></i></a></li>
                                        <li class="dropdown">
                                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
                                            <ul class="dropdown-menu">
                                                <li><a href="javascript:void(0);">Action</a></li>
                                                <li><a href="javascript:void(0);">Another Action</a></li>
                                                <li><a href="javascript:void(0);">Something else</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="body">
                                    <div class="table-responsive">
                                       
                                        <table class="table table-bordered table-hover">
                                            <thead class="thead-dark">
                                                <tr>
                                                    <th>#</th>
                                                    <th>Photo</th>
                                                    <th>Name</th>
                                                    <th>Rating</th>
                                                    <th>Price</th>
                                                    <th>InStock</th>
                                                    <th>Store</th>
                                                    <th>Category</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody class="font-weight-bold">
	                                           	 <c:choose>
													<c:when test="${store.products.size() == 0}">
														<tr>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            	</tr>
													</c:when>
												</c:choose>                                           
                                            	<c:forEach items="${store.products }" var="product" begin="0" end="5">
                                            		 <tr>
                                                    <th scope="row">${product.productId }</th>
                                                    <td><img width="50" height="75" style="overflow:hidden;padding:2px;box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;" src="${pageContext.request.contextPath}/assets/uploads/products/${product.images[0].name}"  class="rounded" alt=""> </td>
                                                    <td class="text-truncate font-weight-bold" style="max-width: 200px;">${product.name }</td>
                                                   	<td>
                                                   		<!-- calculator total rating product --> 
				                                           <c:set var="total" value="${0}"/>
				                                           <c:set var="total1" value="${0}"/>
				                                           <c:set var="size" value="${0}"/>
				                                           <!-- calculator total rating -->                                      
																<c:forEach var="productrv" items="${product.productReviews}">
																 	 <c:set var="total" value="${(total + (productrv.rating/5))}" />								 	 
																</c:forEach>													
																<c:set var="size" value="${product.productReviews.size()}"/>
																<c:set var="total1" value="${(total/size)*5 }"/>
				                                           <c:choose>
															<c:when test="${total1 > 4.5 && total1 <= 5 }">
																<span class="font700"><fmt:formatNumber type="number" maxIntegerDigits="4" maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
																 <div class="small-ratings "> <i class="fa fa-star rating-color "></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> </div>	
															</c:when>
															<c:when test="${total1 > 3.5 && total1 <= 4.5}">
																	<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
																	<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star"></i> </div>													
															</c:when>
															<c:when test="${total1 > 2.5 && total1 <= 3.5 }">
																	<span class="font700">${total1 } / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
																	<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>													
															</c:when>
															<c:when test="${total1 > 1.5 && total1 <= 2.5 }">
																	<span class="font700">${total1 } / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
																	<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star"></i> </div>												
															</c:when>
															<c:when test="${total1 >= 1 && total1 <= 1.5 }">
																	<span class="font700">${total1 } / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
																	<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star"></i> </div>												
															</c:when>
															<c:when test="${size < 1 }">
																	<span class="font700">${total } / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
																	<div class="small-ratings "> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star"></i> </div>												
															</c:when>																										
														</c:choose>						
                                            	<!-- /Caculate total rating --> 
                                                   	</td>
                                                    <td>${product.price } $</td>
                                                    <td>${product.quantity }</td>
                                                    <td>${product.store.name }</td>
                                                    <td>${product.category.name }</td>
                                                    <td class="text-success text-lg-center">ACTIVE</td>
                                                    <td>
                                                        <a href="#" class="btn btn-info text-light" title="Edit"><i class="fa fa-edit"></i></a>
                                                        <a href="#" data-type="confirm" class="btn btn-danger js-sweetalert text-light" title="Delete"><i class="fa fa-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                            	</c:forEach>
                                            	
                                            </tbody>
                                        </table>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="header">
                                    <h2>Orders<small>Sales invoice of the store</small></h2>
                                    <ul class="header-dropdown dropdown dropdown-animated scale-left">
                                        <li> <a href="javascript:void(0);" data-toggle="cardloading" data-loading-effect="pulse"><i class="icon-refresh"></i></a></li>
                                        <li><a href="javascript:void(0);" class="full-screen"><i class="icon-size-fullscreen"></i></a></li>
                                        <li class="dropdown">
                                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
                                            <ul class="dropdown-menu">
                                                <li><a href="javascript:void(0);">Action</a></li>
                                                <li><a href="javascript:void(0);">Another Action</a></li>
                                                <li><a href="javascript:void(0);">Something else</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="body">
                                    <div class="table-responsive">
                                        
                                        <table class="table table-bordered table-hover">
                                            <thead class="thead-dark" >
                                                <tr>
                                                    <th>ID</th>                                                  
                                                    <th>Customer</th>                                                 
                                                    <th>Store</th>
                                                    <th>Start</th>
                                                    <th>Finish</th>
                                                    <th>UnitPrice</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody >
                                            <c:choose>
													<c:when test="${orders.size() == 0}">
														<tr>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            		<td>--</td>
		                                            	</tr>
													</c:when>
											</c:choose>  
                                           	<c:forEach items="${orders }" var="order">
                                           		<tr>
                                                   <td scope="row">${order.orderId }</td>
                                                   <td style="max-width: 120px;"><a  href="${pageContext.request.contextPath}/superadmin/user/detail/${order.user.userId}">${order.user.fullname }</a></td>                                               
                                                   <td>${order.store.name }</td>
                                                   <td>${order.orderOfStart }</td>
                                                   <td>${order.orderOfFinish }</td>
                                                   <td>
                                                    	<c:set var="total" value="${0}"/>
                                                   	<c:forEach items="${order.orderDetails }" var="orderdetail">
                                                   		<c:set var="total" value="${total + ((orderdetail.product.price-((orderdetail.product.price/100)*orderdetail.discount.discoutPercent))*orderdetail.quantity)}"/>
                                                   	</c:forEach>
                                                    $${total }
                                                   </td>
                                                   <td class="text-success text-lg-center">
                                                   		<!-- Status  -->
		                                            	<c:choose>
		                                            		<c:when test="${order.status.statusId == 1 }">
		                                            			<strong style="color: #fa5252">${order.status.name}  <i class="fa fa-ban"></i></strong>
		                                            		</c:when>
		                                            		<c:when test="${order.status.statusId == 2 }">
		                                            			<strong style="color: #37b24d">${order.status.name}  <i class="fa fa-check"></i></strong>
		                                            		</c:when>
		                                            		<c:when test="${order.status.statusId == 3 }">
		                                            			<strong style="color: #313552">${order.status.name}  <i class="fa fa-exclamation"></i></strong>
		                                            		</c:when>
		                                            		<c:when test="${order.status.statusId == 4 }">
		                                            			<strong style="color: #f76707">${order.status.name}  <i class="fa fa-circle"></i></strong>
		                                            		</c:when>
		                                            		<c:when test="${order.status.statusId == 5 }">
		                                            			<strong style="color: #313552">${order.status.name} <i class="fa fa-check"></i></strong>
		                                            		</c:when>
		                                            		<c:when test="${order.status.statusId == 6 }">
		                                            			<strong style="color: #313552">${order.status.name}  <i class="fa fa-check"></i></strong>
		                                            		</c:when>
		                                            		<c:when test="${order.status.statusId == 7 }">
		                                            			<strong style="color: #e03131">${order.status.name}  <i class="fa fa-undo"></i></strong>
		                                            			
		                                            		</c:when>
		                                            		<c:when test="${order.status.statusId == 8 }">
		                                            			<strong style="color: #313552">${order.status.name}  <i class="fa fa-circle"></i></strong>
		                                            		</c:when>
		                                            		<c:when test="${order.status.statusId == 9 }">
		                                            			<strong  style="color: #92A9BD">${order.status.name}  <i class="fa fa-clock-o"></i></strong>
		                                            		</c:when>                                       
		                                            	</c:choose>
		                                            	<!-- /Status  -->
                                                   </td>
                                                   <td><a href="${pageContext.request.contextPath}/superadmin/order/detail/${order.orderId }" class="btn btn-info">Detail</a></td>
                                               </tr>
                                           	</c:forEach>
                                           </tbody>
                                       </table>                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="Settings">

                            <div class="card">
                                <div class="header bline">
                                    <h2>Basic Information</h2>
                                    <ul class="header-dropdown dropdown dropdown-animated scale-left">
                                        <li> <a href="javascript:void(0);" data-toggle="cardloading" data-loading-effect="pulse"><i class="icon-refresh"></i></a></li>
                                        <li><a href="javascript:void(0);" class="full-screen"><i class="icon-size-fullscreen"></i></a></li>
                                        <li class="dropdown">
                                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"></a>
                                            <ul class="dropdown-menu">
                                                <li><a href="javascript:void(0);">Action</a></li>
                                                <li><a href="javascript:void(0);">Another Action</a></li>
                                                <li><a href="javascript:void(0);">Something else</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="body">
                                    <div class="row clearfix">
                                        <div class="col-lg-6 col-md-12">
                                        	<s:form id="basic-form" method="post" modelAttribute="store" action="${pageContext.request.contextPath}/superadmin/store/edit" >
				                        		<div class="form-group">
				                                    <label>Name</label>
				                                    <s:input path="name" cssClass="form-control"   />
				                                    <s:errors path="name" cssClass="text-danger"></s:errors>                                   
				                                </div>
				                                <div class="form-group">
				                                    <label>Address</label>
				                                    <s:textarea path="address" class="form-control" rows="4"/>
				                                    <s:errors path="name" cssClass="text-danger"></s:errors>                                   
				                                </div>
				  								<s:hidden path="userId"/>
				                               	<button type="submit" class="btn btn-primary">Update</button> &nbsp;&nbsp;
                                    			<a href="#" class="btn btn-default">Cancel</a>
                                    		</s:form>   
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
	</jsp:attribute>
</mt:template_superadmin>