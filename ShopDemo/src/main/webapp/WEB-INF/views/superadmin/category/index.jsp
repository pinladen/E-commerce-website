<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<mt:template_superadmin title="category">
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
                            <h2>Category List</h2>
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
                            <h6>List size : ${categories.size() }</h6>
                            <div class="table-responsive">
                                <table class="table table-hover js-basic-example dataTable table-custom mb-0">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>ID</th>
                                            <th>Photo</th>
                                            <th>Category name</th> 
                                            <th>Products</th>                    
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${categories }" var="category">
                                    		<tr>
	                                            <td>${category.categoryId }</td>
	                                            <td><img width="50" height="50" style="overflow:hidden;" src="${pageContext.request.contextPath}/assets/uploads/categories/${category.image}"  class="rounded shadow p-1 mb-2 " alt=""></td>
	                                            <td>${category.name }</td>
	                                            <td>${category.products.size() }</td>
	                                            
	                                               <c:choose>
														<c:when test="${category.status == true }">
															 <td>
															 	<a class="text-success font-weight-bold" href="${pageContext.request.contextPath}/superadmin/category/categoryid/${category.categoryId}/status/false"
															 	onclick="return confirm('Are you sure you want to change this?');">Active</a>
															 </td>	
														</c:when>
														<c:when test="${category.status == false }">
															<td class="text-danger font-weight-bold">
																<a class="text-danger font-weight-bold" href="${pageContext.request.contextPath}/superadmin/category/categoryid/${category.categoryId}/status/true"
																onclick="return confirm('Are you sure you want to change this?');">Inactive</a>
															</td>
														</c:when>
													</c:choose>	
	                                          
	                                            <td>
	                                                <a href="${pageContext.request.contextPath}/superadmin/category/edit/${category.categoryId}" class="btn btn-info round fa fa-edit"></a>	                                               
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
                            <h2>New category</h2>
                            <small>Create a new product category</small>
                        </div>
                        <div class="body">
                            <form id="basic-form" method="post" action="${pageContext.request.contextPath}/superadmin/category/new" enctype="multipart/form-data"  novalidate>
                                <div class="form-group">
                                    <label>Category name </label>
                                    <input type="text" name="name" class="form-control" required>
       								<span class="text-danger">${nameerros }</span>                          
                                </div>
                                <div class="form-group">
                                    <label>Category image</label>
                                    <div class="input-group mb-3 ">        
                                        <div class="custom-file">
                                            <input type="file" name="file" class="custom-file-input"  id="inputGroupFile01" accept="image/gif, image/jpg, image/jpeg, image/png">
                                            <label class="custom-file-label border border-info" for="inputGroupFile01">Choose Image</label>
                                        </div>
                                    </div>                           
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