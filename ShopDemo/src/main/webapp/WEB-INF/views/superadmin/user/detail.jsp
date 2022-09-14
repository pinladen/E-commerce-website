<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<mt:template_superadmin title="Product">
	<jsp:attribute name="content">
			<div id="main-content">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h2>INFOR USER</h2>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item">User Management</li>
                        <li class="breadcrumb-item active">Infor</li>
                    </ul>                 
                </div>
            </div>
        </div>
        <div class="container-fluid">
           
            <div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Information User</h2>
                        </div>
                        <div class="body">
                            <form id="basic-form" method="post" novalidate>
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="text" class="form-control" value="${user.username }" readonly="readonly">
                                </div>
                                <div class="form-group">
                                    <label>Fullname</label>
                                    <input type="email" class="form-control" value="${user.fullname }" readonly="readonly">
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" class="form-control" value="${user.email }" readonly="readonly">
                                </div>
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input type="email" class="form-control" value="${user.phone }" readonly="readonly">
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <input type="email" class="form-control" value="${user.address }" readonly="readonly">
                                </div>
                                <div class="form-group">
                                    <label>Store name</label>
                                    <input type="email" class="form-control" value="${user.store.name }" readonly="readonly">
                                </div>
                                
                                 <div class="form-group">
                                    <label>Role</label>
                                    <br/>
                                    <c:forEach items="${user.roles }" var="item">
                                    	<label class="fancy-checkbox">
                                        <input type="checkbox" name="checkbox" required data-parsley-errors-container="#error-checkbox" checked="checked" readonly="readonly">
                                        <span>${item.name }</span>
                                    </label>
                                    </c:forEach>
                                </div>
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Order User</h2>
                            <small>All orders by <strong>${user.fullname }</strong>: ${order.size() } </small>
                        </div>
                        <div class="body">
                           
                            <div class="table-responsive">
                                <table class="table table-hover  js-basic-example dataTable table-custom mb-0">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>ID</th>
                                            <th>Store</th>
                                            <th>Shipper</th>
                                            <th>Created</th>
                                            <th>Start</th>
                                            <th>Finish</th>
                                            <th>address</th>
                                            <th>payment</th>
                                            <th>Total</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:if test="${empty order }">
                                    		<tr >
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		<td> --- </td>
                                    		</tr>
                                    	</c:if>
                                    
                                    
                                    	<c:forEach items="${order}" var="orders" >
                                    		 <tr>
                                            <td class="text-dark"><strong>#${orders.orderId }</strong></td>
                                            <td class="text-truncate" style="max-width: 150px;"><a  href="${pageContext.request.contextPath}/superadmin/store/detail/${orders.store.userId}">${orders.store.name }</a></td>
                                            <td>${orders.shippers.companyName }</td>
                                            <td>${orders.created }</td>
                                            <td>${orders.orderOfStart }</td>
                                            <td>${orders.orderOfFinish }</td>
                                            <td><i class="fa fa-map-marker"></i> ${orders.address } </td>
                                            <td>${orders.payment }</td>
                                            <td>
                                            	<c:set var="total" value="${0}"/>
                                                 	<c:forEach items="${orders.orderDetails }" var="orderdetail">
                                                 		<c:set var="total" value="${total + ((orderdetail.product.price-((orderdetail.product.price/100)*orderdetail.discount.discoutPercent))*orderdetail.quantity)}"/>
                                                 	</c:forEach>
                                                <span class="font-weight-bold">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${total }" /> </span>
                                            </td>
                                            <td>
                                            	<!-- Status  -->
                                            	<c:choose>
                                            		<c:when test="${orders.status.statusId == 1 }">
                                            			<strong style="color: #fa5252">${orders.status.name}  <i class="fa fa-ban"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 2 }">
                                            			<strong style="color: #37b24d">${orders.status.name}  <i class="fa fa-check"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 3 }">
                                            			<strong style="color: #313552">${orders.status.name}  <i class="fa fa-exclamation"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 4 }">
                                            			<strong style="color: #f76707">${orders.status.name}  <i class="fa fa-circle"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 5 }">
                                            			<strong style="color: #313552">${orders.status.name} <i class="fa fa-check"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 6 }">
                                            			<strong style="color: #313552">${orders.status.name}  <i class="fa fa-check"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 7 }">
                                            			<strong style="color: #e03131">${orders.status.name}  <i class="fa fa-undo"></i></strong>
                                            			
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 8 }">
                                            			<strong style="color: #313552">${orders.status.name}  <i class="fa fa-circle"></i></strong>
                                            		</c:when>
                                            		<c:when test="${orders.status.statusId == 9 }">
                                            			<strong  style="color: #92A9BD">${orders.status.name}  <i class="fa fa-clock-o"></i></strong>
                                            		</c:when>                                       
                                            	</c:choose>
                                            	<!-- /Status  -->
                                            </td>
                                            <td><a href="${pageContext.request.contextPath}/superadmin/order/detail/${orders.orderId}" class="btn btn-info">Detail</a></td>
                                        </tr>
                                    	</c:forEach>                        
                                    </tbody>
                                </table>
                                	
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>	
	</jsp:attribute>
</mt:template_superadmin>