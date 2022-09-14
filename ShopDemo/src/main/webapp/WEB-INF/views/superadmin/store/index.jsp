<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<mt:template_superadmin title="User">
	<jsp:attribute name="content">
		<div id="main-content">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h2>View</h2>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item">Store Management</li>
                        <li class="breadcrumb-item active">View</li>
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
                                            <h6>Store</h6>
                                            <span class="font700">15</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-blue mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="100"></div>
                                    </div>
                                    <small class="text-muted">19% compared to last week</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x fa-bar-chart-o text-col-green"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>Sales</h6>
                                            <span class="font700">$500</span>
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
                                            <i class="fa fa-2x fa-shopping-cart text-col-red"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>Orders</h6>
                                            <span class="font700">215</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-red mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="41"></div>
                                    </div>
                                    <small class="text-muted">19% compared to last week</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x fa-star text-col-yellow"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>Rating</h6>
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
                            <h2>Store List</h2>
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
                                <input type="text" class="form-control" placeholder="Search here...">
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary" type="button">Search</button>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover table-striped js-basic-example dataTable table-custom mb-0">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Id</th>
                                            <th>Av</th>
                                            <th>Name</th>
                                            <th>By User</th>
                                            <th>Address</th>
                                            <th>Products</th>
                                            <th>Order</th>
                                            <th>Created</th>
                                            <th>Rating</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                    	<c:forEach items="${stores}" var="store">
                                    		<tr>
                                            <td><strong>#</strong>${store.userId }</td>
                                            <td><img width="50" height="50" src="${pageContext.request.contextPath}/assets/uploads/stores/${store.image }" class="rounded-circle avatar border" alt=""></td>
                                            <td><strong>${store.name }</strong></td>
                                            <td><a href="${pageContext.request.contextPath}/superadmin/user/detail/${store.user.userId}">${store.user.username }</a></td>
                                            <td>${store.address }</td>
                                            <td>${store.products.size() }</td>
                                            <td>${store.orderses.size() }</td>
                                            <td>${store.created }</td>
                                            <td>
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
                                            	<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
                                            	<!-- /Caculate total rating --> 
                                            </td>
                                            <c:choose>
												<c:when test="${store.status == true }">
													 <td>
													 	<a class="text-success font-weight-bold" href="${pageContext.request.contextPath}/superadmin/store/storeid/${store.userId}/status/false">Active</a>
													 </td>	
												</c:when>
												<c:when test="${store.status == false }">
													<td class="text-danger font-weight-bold">
														<a class="text-danger font-weight-bold" href="${pageContext.request.contextPath}/superadmin/store/storeid/${store.userId}/status/true">Inactive</a>
													</td>
												</c:when>
											</c:choose>	                                                                               
                                            <td><a href="${pageContext.request.contextPath}/superadmin/store/detail/${store.userId }" class="btn btn-info">VIEW</a></td>
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