<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<mt:template_home title="Category">
	<jsp:attribute name="content">
				<ul class="breadcrumb">
			<li><a href="#"><i class="fa fa-home"></i></a></li>
			<li><a href="#">Order Infomation</a></li>
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
				<h2 class="title">Order Information</h2>

				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<td colspan="2" class="text-left">Order Details</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width: 50%;" class="text-left"> <b>Order ID:</b> #${order.orderId }
								<br>
								<b>Date Added:</b> ${order.created }</td>
							<td style="width: 50%;" class="text-left"> <b>Payment Method:</b> ${order.payment }
								<br>
								<b>Shipping Method:</b> ${order.shippers.companyName } </td>
						</tr>
					</tbody>
				</table>
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<td style="width: 50%; vertical-align: top;" class="text-left">Payment Address</td>
							<td style="width: 50%; vertical-align: top;" class="text-left">Shipping Address</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text-left">${order.address }
								
							<td class="text-left">${order.address }
						</tr>
					</tbody>
				</table>
				<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<td class="text-center">Image</td>
								<td class="text-left">Product Name</td>
								<td class="text-center">Qty</td>
								<td class="text-center">Unit Price</td>
								<td class="text-center">Total</td>
								<td class="text-center">Review</td>
							</tr>
						</thead>
						<tbody>
							<c:set var="total" value="${0 }"></c:set>
							<c:forEach items="${order.orderDetails }" var="orderDetail">				
								<tr>
									<td class="text-center">
										<a href="product.html"><img width="85" class="img-thumbnail" title="Aspire Ultrabook Laptop" alt="Aspire Ultrabook Laptop" src="${pageContext.request.contextPath}/assets/uploads/products/${orderDetail.product.images[0].name}">
										</a>
									</td>
									<td class="text-left" style="word-wrap:break-word;max-width: 200px"><a href="${pageContext.request.contextPath}/user/product/${orderDetail.product.productId}">${orderDetail.product.name }</a>
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
									<td >
										<c:if test="${order.status.statusId == 2 }">
											<c:if test="${orderDetail.status == false}">
												<form action="${pageContext.request.contextPath}/user/myaccount/rating" method="post">
													<h5>Write Review</h5>
													<textarea name="review" rows="2" cols="50"></textarea>
													<br>
													<h5>Rating</h5>
													<input type="radio" name="rating" value="5" checked="checked"> <i class="fa fa-star rating-color "></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i><br>
													<input type="radio" name="rating" value="4"> <i class="fa fa-star rating-color "></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star "></i><br> 
													<input type="radio" name="rating" value="3"> <i class="fa fa-star rating-color "></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i><br> 
													<input type="radio" name="rating" value="2"> <i class="fa fa-star rating-color "></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i><br> 
													<input type="radio" name="rating" value="1"> <i class="fa fa-star rating-color "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star r"></i> <i class="fa fa-star "></i><br>  
													<button style="float: right;" type="submit" class="btn btn-success">Write review</button>
													<input type="hidden" name="productId" value="${orderDetail.product.productId }">
													<input type="hidden" name="orderDetail" value="${orderDetail.orderDetailId }">
													<input type="hidden" name="orderId" value="${order.orderId }">
												</form>
											</c:if>
											<c:if test="${orderDetail.status == true}">
												<strong style="color: #37b24d">Rating<i class="fa fa-check"></i></strong>
											</c:if>
										</c:if>
									</td>						
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td colspan="2">
										
									</td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="3"></td>
								<td class="text-right"><b>Sub-Total</b>
								</td>
								<td class="text-right">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${total }"/></td>
								<td></td>
							</tr>
							<tr>
								<td colspan="3"></td>
								<td class="text-right"><b>Flat Shipping Rate</b>
								</td>
								<td class="text-right">
									<c:set var="totalSub" value="${0 }"></c:set>
										<c:choose>
											<c:when test="${total >= 50 }">
												Free shipping
											<c:set var="totalSub" value="${total }"></c:set>
											</c:when>
										</c:choose>
										<c:choose>
											<c:when test="${total < 50 }">
												+ $3
												<c:set var="totalSub" value="${total +3}"></c:set>
											</c:when>
										</c:choose>
								</td>
								<td></td>
							</tr>
							<tr>
								<td colspan="3"></td>
								<td class="text-right"><b>Total</b>
								</td>
								<td class="text-right"><strong style="color:green">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${totalSub }"/></strong></td>
								<td></td>
							</tr>
							<tr>
								<td colspan="3"></td>
								<td class="text-right"><b>Status</b>
								</td>
								<td class="text-right">
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
								</td>
								<td></td>
							</tr>
						</tfoot>
					</table>
				</div>
				<div class="buttons clearfix" style="margin-bottom: 30px">
					<div class="pull-right"><a class="btn btn-primary" href="${pageContext.request.contextPath}/user/myaccount/order">Continue</a>
					</div>
				</div>



			</div>

		</div>
	
				
	</jsp:attribute>
</mt:template_home>
