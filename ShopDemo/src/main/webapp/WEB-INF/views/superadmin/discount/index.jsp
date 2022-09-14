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
                    <h2>Category management</h2>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item active">Category management</li>
                        <li class="breadcrumb-item active">View</li>
                    </ul>
                </div>
            </div>
        </div>
    
        <div class="container-fluid">
        	 <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>New discount</h2>
                            <small>product promotion</small>
                        </div>
                        <div class="body">
                            <form id="basic-form" method="post" action="${pageContext.request.contextPath}/superadmin/discount/new"   novalidate>
                                <div class="form-group">
                                    <label>Discount name </label>
                                    <input type="text" name="name" class="form-control" required>
       								<span class="text-danger">${nameError }</span>                          
                                </div>
                                <div class="form-group">
                                    <label>Percent</label>
                                    <input type="number" name="percent" max="100" min="0" class="form-control" required>
       								<span class="text-danger">${percentError }</span>   
       								                       
                                </div>
                                                   
                                <div class="form-group">
                                    <label>Status</label>
                                    <br />
                                    <label class="fancy-radio">
                                        <input type="radio" name="status" value="1" required data-parsley-errors-container="#error-radio" checked>
                                        <span><i></i>Accept</span>
                                    </label>
                                    <label class="fancy-radio">
                                        <input type="radio" name="status" value="0">
                                        <span><i></i>Cancel</span>
                                    </label>
                                    <p id="error-radio"></p>
                                </div>                      
                                <br>
                                <button type="submit" class="btn btn-primary">Save </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>Discount List</h2>
                            <small>Discount for each product</small>
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
                            <h6>List size : ${discounts.size() }</h6>
                            <div class="table-responsive">
                                <table class="table table-hover js-basic-example dataTable table-custom mb-0">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Discount Percent</th> 
                                            <th>Created</th>                    
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${discounts }" var="discount">
                                    		<tr>
	                                            <td>${discount.id }</td>                                           
	                                            <td>${discount.name }</td>
	                                            <td >- <span class="font-weight-bold text-danger">${discount.discoutPercent }</span> %</td>
	                                            <td>${discount.created }</td>
	                                               <c:choose>
														<c:when test="${discount.status == true }">
															 <td>
															 	<a class="text-success font-weight-bold" href="${pageContext.request.contextPath}/superadmin/discount/discountid/${discount.id}/status/false"
															 	onclick="return confirm('Are you sure you want to change this?');">Active</a>
															 </td>	
														</c:when>
														<c:when test="${discount.status == false }">
															<td class="text-danger font-weight-bold">
																<a class="text-danger font-weight-bold" href="${pageContext.request.contextPath}/superadmin/discount/discountid/${discount.id}/status/true"
																onclick="return confirm('Are you sure you want to change this?');">Inactive</a>
															</td>
														</c:when>
													</c:choose>	
	                                          
	                                            <td>
	                                                <a href="${pageContext.request.contextPath}/superadmin/discount/edit/${discount.id}" class="btn btn-info round fa fa-edit"></a>	                                               
	                                            </td>
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