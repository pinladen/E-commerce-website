<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<mt:template_home title="Category">
	<jsp:attribute name="content">
				<ul class="breadcrumb">
			<li><a href="#"><i class="fa fa-home"></i></a></li>
			<li><a href="#">Shopping Cart</a></li>
		</ul>
		
		<div class="row">
			<!--Middle Part Start-->
        <div id="content" class="col-sm-12">
          <h2 class="title">Shopping Cart</h2>
          <c:if test="${not empty message }">
          	<h4 style="color:red">${message }</h4>
          </c:if>
            <div class="table-responsive form-group">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <td class="text-center">Image</td>
                    <td class="text-left">Product Name</td>
                    <td class="text-left">Store</td>
                    <td class="text-left">Quantity</td>
                    <td class="text-right">Unit Price</td>
                    <td class="text-right">Total</td>
                  </tr>
                </thead>
                <tbody>
                	<c:set var="total" value="${0 }"></c:set>
                	<c:forEach items="${sessionScope.cart }" var="item">
	                  <tr>
	                    <td class="text-center"><a href="${pageContext.request.contextPath}/user/product/${item.product.productId}"><img width="70px" src="${pageContext.request.contextPath}/assets/uploads/products/${item.product.images[0].name}" alt="Aspire Ultrabook Laptop" title="Aspire Ultrabook Laptop" class="img-thumbnail" /></a></td>
	                    <td class="text-left"><a href="${pageContext.request.contextPath}/user/product/${item.product.productId}">${item.product.name }</a><br />
	                     </td>
	                    <td class="text-left"><a href="${pageContext.request.contextPath}/user/store/${item.product.store.userId}" class="cart_product_name">${item.product.store.name }</a></td>
	                    <td class="text-left" width="200px">
	                    	<form  action="${pageContext.request.contextPath}/user/cart/update">
	                    		<div class="input-group btn-block quantity">
	                        		<input type="number" min="1" name="quantity" value="${item.quantity }"  class="form-control" />
	                        		<input type="hidden" name="product_id" value="${item.product.productId }">
	                        		<span class="input-group-btn">
	                        		<button type="submit" title="Update" class="btn btn-primary"><i class="fa fa-refresh"></i></button>
	                        		<a href="${pageContext.request.contextPath}/user/cart/remove/${item.product.productId}" title="Remove" class="btn btn-danger" onClick="return confirm('Are you sure ?');"><i class="fa fa-times-circle"></i></a>
	                        		</span>
	                        	</div>
	                        </form>
	                        </td>
		                    <td class="text-right">
		                    <div class="price">
	                             <c:choose > 
		                           	<c:when test="${item.product.discount.discoutPercent >0 }">
		                           		<span class="price-old">$${item.product.price }</span>
		                           		<span class="price-new" style="color: dark">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${item.product.price -((item.product.price/100) * item.product.discount.discoutPercent) }" /></span>		                             	
		                           	</c:when>
	                               	<c:when test="${item.product.discount.discoutPercent <= 0 }">
	                               		<span >$${item.product.price }</span>
	                               	</c:when>
	                              </c:choose>
	                         </div>
		                    </td>
	                    <td class="text-right">
	                    	<c:choose > 
		                       <c:when test="${item.product.discount.discoutPercent >0 }">		                         
		                           	<span class="price-new">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${(item.product.price -((item.product.price/100) * item.product.discount.discoutPercent))*item.quantity }" /></span>
		                            <c:set var="total" value="${total +((item.product.price -((item.product.price/100) * item.product.discount.discoutPercent))*item.quantity) }"></c:set>
		                       </c:when>
	                          	<c:when test="${item.product.discount.discoutPercent <= 0 }">
	                               	<span >$${item.product.price * item.quantity}</span>
	                               	<c:set var="total" value="${total + (item.product.price * item.quantity) }"></c:set>
	                            </c:when>
	                    </c:choose>  
	                    </td>
	                  </tr>
                  </c:forEach>
                  <c:if test="${ empty sessionScope.cart}}">
                  	<td>--</td>
                  	<td>No product</td>
                  	<td>--</td>
                  	<td>--</td>
                  	<td>--</td>
                  	<td>--</td>
                  </c:if>    
                </tbody>
              </table>
            </div>
		<c:choose>
			<c:when test="${not empty sessionScope.cart}">
					<div class="row">
						<div class="col-sm-4 col-sm-offset-8">
							<table class="table table-bordered">
								<tbody>
									<tr>
										<td class="text-right">
											<strong>Sub-Total:</strong>
										</td>
										<td class="text-right">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${total }"/></td>
									</tr>
									<tr>
										<td class="text-right">
											<strong>Flat Shipping Rate:</strong>
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
									</tr>
									<tr>
										<td class="text-right">
											<strong>Total:</strong>
										</td>
										<td class="text-right"><strong style="color:green">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${totalSub }"/></strong></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="buttons">
			            <div class="pull-left"><a href="${pageContext.request.contextPath}/" class="btn btn-primary">Continue Shopping</a></div>
			            <div class="pull-right"><a href="${pageContext.request.contextPath}/user/checkout/index" class="btn btn-primary">Checkout</a></div>
			       </div>
			</c:when>
		</c:choose>
        </div>
        <!--Middle Part End -->
			
		</div>
				<br><br><br>
	</jsp:attribute>
</mt:template_home>
