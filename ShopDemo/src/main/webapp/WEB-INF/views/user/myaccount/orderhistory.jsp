<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<mt:template_home title="Category">
	<jsp:attribute name="content">
				<ul class="breadcrumb">
			<li><a href="#"><i class="fa fa-home"></i></a></li>
			<li><a href="#">Order History</a></li>
		</ul>
		<!--Right Part Start -->
			<aside class="col-sm-3 hidden-xs" id="column-right">
				<h2 class="subtitle">My Account</h2>
				<div class="list-group">
					<ul class="list-item">
						<li> <a href="${pageContext.request.contextPath}/user/myaccount"><i class="fa fa-user-circle"></i> <span style="margin-left: 10px">Profile</span> </a>
						</li>
						<li><a href="${pageContext.request.contextPath}/user/myaccount/password"><i class="fa fa-key"></i>	<span style="margin-left: 10px">Change Password</span> </a>
						</li>
						<li><a href="${pageContext.request.contextPath}/user/myaccount/order"><i class="fa fa-file-text-o"></i> <span style="margin-left: 10px">Order History</span> </a>
						</li>
						<li><a href="${pageContext.request.contextPath}/user/myaccount/mystore"><i class="fa fa-tasks"></i> <span style="margin-left: 10px">My Store</span> </a>
						</li>				
					</ul>
				</div>
			</aside>
		<!--Right Part End -->
		
		<div class="row">
			<!--Middle Part Start-->
			<div id="content" class="col-sm-9">
				<h2 class="title">Order History</h2>
				
				<div class="table-responsive" style="padding: 15px;box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px; margin-bottom: 30px">
					<div class="buttons">
						<div class="buttons">
							<c:choose>
								<c:when test="${empty pan }">
									<a href="${pageContext.request.contextPath}/user/myaccount/order/search/all" class="btn btn-light col-sm-2 colorA" style="border-bottom: 4px solid red; ">All</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/topay" class="btn btn-light col-sm-2">To Pay</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toship" class="btn btn-light col-sm-2">To Ship</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toreceive" class="btn btn-light col-sm-2">To Receive</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocompleted" class="btn btn-light col-sm-2">To Completed</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocancelled" class="btn btn-light col-sm-2">To Cancelled</a>	
								</c:when>
								<c:when test="${pan == 1}">
									<a href="${pageContext.request.contextPath}/user/myaccount/order/search/all" class="btn btn-light col-sm-2 colorA" style="border-bottom: 4px solid red; ">All</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/topay" class="btn btn-light col-sm-2">To Pay</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toship" class="btn btn-light col-sm-2">To Ship</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toreceive" class="btn btn-light col-sm-2">To Receive</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocompleted" class="btn btn-light col-sm-2">To Completed</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocancelled" class="btn btn-light col-sm-2">To Cancelled</a>	
								</c:when>
								<c:when test="${pan == 2 }">
									<a href="${pageContext.request.contextPath}/user/myaccount/order/search/all" class="btn btn-light col-sm-2 colorA" >All</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/topay" class="btn btn-light col-sm-2" style="border-bottom: 4px solid red;">To Pay</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toship" class="btn btn-light col-sm-2">To Ship</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toreceive" class="btn btn-light col-sm-2">To Receive</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocompleted" class="btn btn-light col-sm-2">To Completed</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocancelled" class="btn btn-light col-sm-2">To Cancelled</a>	
								</c:when>
								<c:when test="${pan == 3 }">
									<a href="${pageContext.request.contextPath}/user/myaccount/order/search/all" class="btn btn-light col-sm-2 colorA" >All</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/topay" class="btn btn-light col-sm-2">To Pay</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toship" class="btn btn-light col-sm-2" style="border-bottom: 4px solid red;">To Ship</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toreceive" class="btn btn-light col-sm-2">To Receive</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocompleted" class="btn btn-light col-sm-2">To Completed</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocancelled" class="btn btn-light col-sm-2">To Cancelled</a>	
								</c:when>
								<c:when test="${pan == 4 }">
									<a href="${pageContext.request.contextPath}/user/myaccount/order/search/all" class="btn btn-light col-sm-2 colorA" >All</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/topay" class="btn btn-light col-sm-2">To Pay</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toship" class="btn btn-light col-sm-2">To Ship</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toreceive" class="btn btn-light col-sm-2" style="border-bottom: 4px solid red;">To Receive</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocompleted" class="btn btn-light col-sm-2">To Completed</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocancelled" class="btn btn-light col-sm-2">To Cancelled</a>	
								</c:when>
								<c:when test="${pan == 5 }">
									<a href="${pageContext.request.contextPath}/user/myaccount/order/search/all" class="btn btn-light col-sm-2 colorA" >All</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/topay" class="btn btn-light col-sm-2">To Pay</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toship" class="btn btn-light col-sm-2">To Ship</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toreceive" class="btn btn-light col-sm-2">To Receive</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocompleted" class="btn btn-light col-sm-2" style="border-bottom: 4px solid red;">To Completed</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocancelled" class="btn btn-light col-sm-2">To Cancelled</a>	
								</c:when>
								<c:when test="${pan == 6 }">
									<a href="${pageContext.request.contextPath}/user/myaccount/order/search/all" class="btn btn-light col-sm-2 colorA" >All</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/topay" class="btn btn-light col-sm-2">To Pay</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toship" class="btn btn-light col-sm-2">To Ship</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/toreceive" class="btn btn-light col-sm-2">To Receive</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocompleted" class="btn btn-light col-sm-2">To Completed</a>
					            	<a href="${pageContext.request.contextPath}/user/myaccount/order/search/tocancelled" class="btn btn-light col-sm-2" style="border-bottom: 4px solid red;">To Cancelled</a>	
								</c:when>
							</c:choose>
			            	
			            </div>
					</div>
				</div>
				<c:if test="${empty order }">
					<div class="table-responsive text-center" style="padding: 15px;box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px; margin-bottom: 30px">
						<h1>No orders yet</h1>
					</div>
				</c:if>
				<c:if test="${not empty sessionScope.msg }">
					<div class="table-responsive text-center" style="padding: 15px;box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px; margin-bottom: 30px">
						<h3 style="color:green">${sessionScope.msg }</h3>
					</div>
				</c:if>
				<c:forEach items="${order }" var="item">
				<div class="table-responsive" style="padding: 15px;box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px; margin-bottom: 30px">
						<p><strong>Store name : <a style="font-size: 16px" href="#">${item.store.name }</a></strong> </p>
						<table class="table  table-hover">
						<thead>
							<tr>
								<td class="text-center"><strong>Order ID : <span class="text-info">#${item.orderId }</span></strong>  </td>
								<td class="text-center"><strong>Shipper :</strong> ${item.shippers.companyName }</td>
								<td class="text-center"><strong>Payment :</strong> ${item.payment }</td>
								<td class="text-center"><strong>Date Added :</strong> ${item.created }</td>
								<td class="text-center"><strong>Status :</strong>
									<c:choose>
                                  		<c:when test="${item.status.statusId == 1 }">
                                  			<strong style="color: #fa5252">${item.status.name}  <i class="fa fa-ban"></i></strong>
                                  		</c:when>
                                  		<c:when test="${item.status.statusId == 2 }">
                                  			<strong style="color: #37b24d">${item.status.name}  <i class="fa fa-check"></i></strong>
                                  		</c:when>
                                  		<c:when test="${item.status.statusId == 3 }">
                                  			<strong style="color: #313552">${item.status.name}  <i class="fa fa-exclamation"></i></strong>
                                  		</c:when>
                                  		<c:when test="${item.status.statusId == 4 }">
                                  			<strong style="color: #f76707">${item.status.name}  <i class="fa fa-circle"></i></strong>
                                  		</c:when>
                                  		<c:when test="${item.status.statusId == 5 }">
                                  			<strong style="color: #313552">${item.status.name} <i class="fa fa-check"></i></strong>
                                  		</c:when>
                                  		<c:when test="${item.status.statusId == 6 }">
                                  			<strong style="color: #313552">${item.status.name}  <i class="fa fa-check"></i></strong>
                                  		</c:when>
                                  		<c:when test="${item.status.statusId == 7 }">
                                  			<strong style="color: #e03131">${item.status.name}  <i class="fa fa-undo"></i></strong>
                                  			
                                  		</c:when>
                                  		<c:when test="${item.status.statusId == 8 }">
                                  			<strong style="color: #313552">${item.status.name}  <i class="fa fa-circle"></i></strong>
                                  		</c:when>
                                  		<c:when test="${item.status.statusId == 9 }">
                                  			<strong  style="color: #92A9BD">${item.status.name}  <i class="fa fa-clock-o"></i></strong>
                                  		</c:when>                                       
                                  	</c:choose>
								</td>
							</tr>
						</thead>
					</table>
					
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<td class="text-center">Image</td>
								<td class="text-left">Product Name</td>
								<td class="text-center">Qty</td>
								<td class="text-center">Unit Price</td>
								<td class="text-center">Total</td>
							</tr>
						</thead>
						<tbody>
							<c:set var="total" value="${0 }"></c:set>
							<c:forEach items="${item.orderDetails }" var="orderDetail">				
								<tr>
									<td class="text-center">
										<a href="product.html"><img width="85" class="img-thumbnail" title="Aspire Ultrabook Laptop" alt="Aspire Ultrabook Laptop" src="${pageContext.request.contextPath}/assets/uploads/products/${orderDetail.product.images[0].name}">
										</a>
									</td>
									<td class="text-left" style="word-wrap:break-word;max-width: 200px"><a href="product.html">${orderDetail.product.name }</a>
									</td>
									<td class="text-center">x${orderDetail.quantity }</td>
									<td class="text-center">
										<div class="price">
				                             <c:choose > 
					                           	<c:when test="${orderDetail.product.discount.discoutPercent >0 }">
					                           		<span class="price-old">$${orderDetail.product.price }</span>
					                           		<span class="price-new" style="color: dark">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${orderDetail.product.price -((orderDetail.product.price/100) * orderDetail.product.discount.discoutPercent) }" /></span>		                             	
					                           	</c:when>
				                               	<c:when test="${orderDetail.product.discount.discoutPercent <= 0 }">
				                               		<span >$${orderDetail.product.price }</span>
				                               	</c:when>
				                              </c:choose>
				                         </div>
									</td>
									<td class="text-center">
										<c:choose > 
					                       <c:when test="${orderDetail.product.discount.discoutPercent >0 }">		                         
					                           	<span class="price-new">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${(orderDetail.product.price -((orderDetail.product.price/100) * orderDetail.product.discount.discoutPercent))*orderDetail.quantity }" /></span>
					                            <c:set var="total" value="${total +((orderDetail.product.price -((orderDetail.product.price/100) * orderDetail.product.discount.discoutPercent))*orderDetail.quantity) }"></c:set>
					                       </c:when>
				                          	<c:when test="${orderDetail.product.discount.discoutPercent <= 0 }">
				                               	<span >$${orderDetail.product.price * orderDetail.quantity}</span>
				                               	<c:set var="total" value="${total + (orderDetail.product.price * orderDetail.quantity) }"></c:set>
				                            </c:when>
					                    </c:choose>  
									</td>								
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="row">
						<div class="col-sm-4 col-sm-offset-8">
							<h3>Order Total : 
								<c:if test="${total < 50 }">
									<c:set var="total" value="${total + 3 }"></c:set>
								</c:if>
								  <strong style="font-size: 24px ;color: #DD4A48; float: right;">$ <fmt:formatNumber type="number"  maxFractionDigits="2" value="${total }"/></strong>
							</h3>
						</div>
					</div>
					<c:choose>
                  		<c:when test="${item.status.statusId == 4 || item.status.statusId == 5 || item.status.statusId == 6 || item.status.statusId == 8 || item.status.statusId == 9}">
                  			<div class="buttons">
					            <div class="pull-right" style="margin-top: 10px">
					            	<a href="${pageContext.request.contextPath}/user/myaccount/orderdetail/${item.orderId}" class="btn btn-info">Detail</a>	
					            	<a onclick="return confirm('Are you sure ?');" href="${pageContext.request.contextPath}/user/myaccount/status/cancel/${item.orderId}" class="btn btn-default">Cancel</a>
					            </div>
			       			</div>
                  		</c:when>
                  		<c:when test="${item.status.statusId == 1 || item.status.statusId == 3 || item.status.statusId == 7}">
                  			<div class="buttons">
					            <div class="pull-right" style="margin-top: 10px">
					            	<a href="${pageContext.request.contextPath}/user/myaccount/orderdetail/${item.orderId}" class="btn btn-info">Detail</a>					       
					            </div>
			       			</div>
                  		</c:when>
                  		<c:when test="${item.status.statusId == 2 }">
                  			<div class="buttons">
					            <div class="pull-right" style="margin-top: 10px">
					            	<a href="${pageContext.request.contextPath}/user/myaccount/orderdetail/${item.orderId}" class="btn btn-info">Detail</a>
					            	<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModal" >Write Review</button>				              	
					            </div>
			       			</div>
                  		</c:when>
                   </c:choose>
				</div>
				</c:forEach>
			</div>	
			
			<!--Middle Part End-->
		</div>
	
	</jsp:attribute>
</mt:template_home>
