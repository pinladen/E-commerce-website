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
                            <h2>New category</h2>
                            <small>Create a new product category</small>
                        </div>
                        <div class="body">
                            <form id="basic-form" method="post" action="${pageContext.request.contextPath}/superadmin/discount/edit"   novalidate>
                                <div class="form-group">
                                    <label>Category id  </label>
                                    <input type="text" name="id" class="form-control" value="${discount.id }" readonly required>         
                                </div>
                                <div class="form-group">
                                    <label>Discount name  </label>
                                    <input type="text" name="name" class="form-control" value="${discount.name }" required>
       								<span class="text-danger">${nameError }</span>                          
                                </div>
                                <div class="form-group">
                                    <label>Discount percent  </label>
                                    <input type="number" name="percent" class="form-control" value="${discount.discoutPercent }" required>
       								<span class="text-danger">${percentError }</span>                          
                                </div>         
                                <div class="form-group">
                                    <label>Status</label>
                                    <br />
                                    <c:choose>
                                    	<c:when test="${discount.status == true }">
                                    		<label class="fancy-radio">
		                                        <input type="radio" name="status" value="1" required data-parsley-errors-container="#error-radio" checked>
		                                        <span><i></i>Accept</span>
		                                    </label>
		                                    <label class="fancy-radio">
		                                        <input type="radio" name="status" value="0">
		                                        <span><i></i>Cancel</span>
		                                    </label>
                                    	</c:when>
                                    	<c:when test="${discount.status == false }">
                                    		<label class="fancy-radio">
		                                        <input type="radio" name="status" value="1" required data-parsley-errors-container="#error-radio" >
		                                        <span><i></i>Accept</span>
		                                    </label>
		                                    <label class="fancy-radio">
		                                        <input type="radio" name="status" value="0" checked>
		                                        <span><i></i>Cancel</span>
		                                    </label>
                                    	</c:when>
                                    </c:choose>                                  
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