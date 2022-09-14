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
                    <h2>Shipper management</h2>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item active">Shipper management</li>
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
                            <h2>Shipper List</h2>
                            <small>Catalog for products</small>
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
                            <h6>List size : ${shippers.size() }</h6>
                            <div class="table-responsive">
                                <table class="table table-hover js-basic-example dataTable table-custom mb-0">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>ID</th>                                       
                                            <th>Company Name</th> 
                                            <th>Cost</th>                    
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${shippers }" var="shippers">
                                    		<tr>
	                                            <td>${shippers.shipperId }</td>                                           
	                                            <td>${shippers.companyName }</td>
	                                            <td> <span class="font-weight-bold">$ ${shippers.cost }</span> <i class="fa fa-money text-success"></i></td>
	                                               <c:choose>
														<c:when test="${shippers.status == 1 }">
															 <td>
															 	<a class="text-success font-weight-bold" href="${pageContext.request.contextPath}/superadmin/shipper/shipperid/${shippers.shipperId}/status/0"
															 	onclick="return confirm('Are you sure you want to change this?');">Active</a>
															 </td>	
														</c:when>
														<c:when test="${shippers.status == 0 }">
															<td class="text-danger font-weight-bold">
																<a class="text-danger font-weight-bold" href="${pageContext.request.contextPath}/superadmin/shipper/shipperid/${shippers.shipperId}/status/1"
																onclick="return confirm('Are you sure you want to change this?');">Inactive</a>
															</td>
														</c:when>
													</c:choose>	
	                                            <td>
	                                                <a href="${pageContext.request.contextPath}/superadmin/shipper/edit/${shippers.shipperId}" class="btn btn-info round fa fa-edit"></a>	                                               
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
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2>New Shipper</h2>
                            <small>Create a new shipper</small>
                        </div>
                        <div class="body">
                            <form id="basic-form" method="post" action="${pageContext.request.contextPath}/superadmin/shipper/new" novalidate>
                                <div class="form-group">
                                    <label>Company name </label>
                                    <input type="text" name="name" class="form-control" required>
       								<span class="text-danger">${nameError }</span>                          
                                </div>  
                                <div class="form-group">
                                    <label>Cost </label>
                                    <input type="text" name="cost" class="form-control" required>
       								<span class="text-danger">${costError }</span>                          
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
        </div>
    </div>
	</jsp:attribute>
</mt:template_superadmin>