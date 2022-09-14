	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<mt:template_store title="Order">
	<jsp:attribute name="content">
		 <div id="main-content">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h2>View All</h2>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item">Order Management</li>
                        <li class="breadcrumb-item active">View All</li>
                    </ul>
                </div>
            </div>
        </div>
        

        <div class="container-fluid">   
            <div class="row clearfix">
                <div class="col-12">
                    <div class="card top_report">
                        <div class="row clearfix">
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x icon-basket text-col-blue"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>ALL ORDER </h6>
                                            <span class="font700">150</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-blue mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="100"></div>
                                    </div>
                                    <small class="text-muted">Products are listed for sale</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x icon-basket text-col-green"></i>
                                            <i class="fa fa-1x fa-chevron-circle-down text-col-green"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>ORDER SUCCESS</h6>
                                            <span class="font700">100</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-green mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="28"></div>
                                    </div>
                                    <small class="text-muted">19% compared to last week</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x icon-basket text-col-green"></i>
                                            <i class="fa fa-1x fa-ban text-col-green"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>CANCELLED ORDER</h6>
                                            
                                            <span class="font700 text-danger">3</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-orange mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="41"></div>
                                    </div>
                                    <small class="text-muted">19% compared to last week</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x icon-basket text-col-green"></i>
                                             <i class="fa fa-1x icon-speedometer text-col-green"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>ORDER PENDING</h6>
                                            <span class="font700">21,215</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-yellow mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="75"></div>
                                    </div>
                                    <small class="text-muted">19% compared to last week</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>Order List</h2>
                            <small><marquee>The products are summarized from the stalls</marquee></small>
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
                            <div class="input-group mb-3">
                                <div class="row">
                                	<form action="${pageContext.request.contextPath}/store/order/searchbyid" method="get">
	                                    <div class="input-group-append col-sm-12">
	                                       <input type="number" min="0" class="form-control" placeholder="Search #OrderId" name="orderId">
	                                        <button class="btn btn-outline-secondary" type="submit">Search</button>
	                                    </div>
                                    </form> 
                                    <form action="${pageContext.request.contextPath}/store/order/status" method="get">                                
	                                    <div class="input-group col-sm">
	                                        <select class="custom-select" id="inputGroupSelect04" name="status_id">
	                                        	<option value="-1" selected>Default</option>
	                                        	<c:forEach items="${status }" var="item">
	                                        		<option value="${item.statusId }">${item.name }</option>
	                                        	</c:forEach>
	                                        </select>
	                                        <div class="input-group-append">
	                                            <button  class="btn btn-outline-secondary" type="submit">Search</button>
	                                        </div>
	                                    </div>
                                    </form>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover  js-basic-example dataTable table-custom mb-0">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>ID</th>
                                            <th>Customer</th>
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
                                    	<c:forEach items="${orderss}" var="orders" >
                                    		 <tr>
                                            <td class="text-primary"><strong>#</strong>${orders.orderId }</td>
                                            <td>${orders.user.fullname }</td>
                                            <td class="text-truncate" style="max-width: 150px;">${orders.store.name }</td>
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
                                            </td>
                                            <td><a href="${pageContext.request.contextPath}/store/order/detail/${orders.orderId}" class="btn btn-info">Detail</a></td>
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
</mt:template_store>