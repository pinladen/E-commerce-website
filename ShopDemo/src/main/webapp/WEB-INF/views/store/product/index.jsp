<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<mt:template_store title="Product">
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
                        <li class="breadcrumb-item">Product Management</li>
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
                                            <i class="fa fa-2x icon-social-dropbox text-col-blue"></i>                                         
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>Products</h6>
                                            <span class="font700">${products.size() }</span>
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
                                            <i class="fa fa-2x icon-social-dropbox text-col-green"></i>
                                            <i class="fa fa-1x fa-chevron-circle-down text-col-green"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>Accepted</h6>
                                            <span class="font700">
                                            	<c:set var="totalActive" value="${0}"></c:set>
                                            	<c:forEach items="${products}" var="product">
                                            		<c:if test="${product.status == true }">
                                            			<c:set var="totalActive" value="${totalActive + 1}"></c:set>
                                            		</c:if>
                                            	
                                            	</c:forEach>
                                            ${totalActive }
                                            </span>
                                        </div>
                                    </div>
                                    <c:set var="totalActivePrecent" value="${(totalActive*100)/products.size()}"></c:set>
                                    <div class="progress progress-xs progress-transparent custom-color-green mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="<fmt:formatNumber type="number"  maxFractionDigits="1" value="${totalActivePrecent}" />"></div>
                                    </div>
                                    <small class="text-muted"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${totalActivePrecent}" />% of all items are licensed.</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x icon-social-dropbox text-col-green"></i>
                                            <i class="fa fa-1x fa-ban text-col-green"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>Not Accepted</h6>
                                            <span class="font700 text-danger">
                                            	<c:set var="totalinActive" value="${0}"></c:set>
                                            	<c:forEach items="${products}" var="product">
                                            		<c:if test="${product.status == false }">
                                            			<c:set var="totalinActive" value="${totalinActive + 1}"></c:set>
                                            		</c:if>
                                            	
                                            	</c:forEach>
                                            ${totalinActive }
                                            </span>
                                        </div>
                                    </div>                               
                                    <c:set var="totalinActivePrecent" value="${(totalinActive*100)/products.size()}"></c:set>
                                    <div class="progress progress-xs progress-transparent custom-color-orange mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="<fmt:formatNumber type="number"  maxFractionDigits="1" value="${totalinActivePrecent}" />"></div>
                                    </div>
                                    <small class="text-muted"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${totalinActivePrecent}" />% of all items are unlicensed.</small>
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
                                            <span class="font700">
                                            	<c:set var="totalRating" value="${0}"></c:set>
                                            	<c:forEach items="${products}" var="product">
                                            		<c:forEach items="${product.productReviews }" var="proRv">
                                            			<c:set var="totalRating" value="${totalRating + proRv.rating }"></c:set>
                                            		</c:forEach>
                                            	
                                            	</c:forEach>
                                            ${totalRating }
                                            </span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-yellow mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="100"></div>
                                    </div>
                                    <small class="text-muted">total number of stars awarded</small>
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
                            <h2>Product List</h2>
                            <small><marquee>All of the store's items</marquee></small>
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
                                    <div class="input-group-append col-sm-4">
                                        <input type="text" class="form-control" placeholder="Search here...">
                                        <button class="btn btn-outline-secondary" type="button">Search</button>
                                    </div>
                                    <div class="input-group col-sm-3">
                                        <select class="custom-select" id="inputGroupSelect04">
                                            <option selected>Category</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary" type="button">Search</button>
                                        </div>
                                    </div>
                                    <div class="input-group col-sm">
                                        <select class="custom-select" id="inputGroupSelect04">
                                            <option selected>Price</option>
                                            <option value="lth">Low to High</option>
                                            <option value="htl">High to Low</option>
                                        </select>
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary" type="button">Search</button>
                                        </div>
                                    </div>
                                    <div class="input-group col-sm">
                                        <select class="custom-select" id="inputGroupSelect04">
                                            <option selected>Status</option>
                                            <option value="lth">Accept</option>
                                            <option value="htl">Cancel</option>
                                        </select>
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary" type="button">Search</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover  js-basic-example dataTable table-custom mb-0">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>ID</th>
                                            <th>Photo</th>
                                            <th>Name</th>
                                            <th>Category</th>
                                            <th>Store</th>
                                            <th>Address</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Rating</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${products}" var="product" >
                                    		 <tr>
                                            <td><strong>#</strong>${product.productId }</td>
                                            <td><img width="50" height="70" style="overflow:hidden;" src="${pageContext.request.contextPath}/assets/uploads/products/${product.images[0].name}"  class="rounded shadow p-1 mb-2 " alt=""></td>
                                            <td class="text-truncate" style="max-width: 150px;"><marquee scrollamount="2"  hspace="20"><strong>${product.name }</strong></marquee></td>
                                            <td>${product.category.name }</td>
                                            <td>${product.store.name }</td>
                                            <td><i class="fa fa-map-marker"></i> ${product.address } </td>
                                            <td>
                                            	<c:choose>
                                            		<c:when test="${product.discount.discoutPercent == 0 }">
                                            			$${product.price }
                                            		</c:when>
                                            		<c:when test="${product.discount.discoutPercent >= 1 }">
                                            			$<span style="text-decoration: line-through">${product.price }</span>                                         			
	                                            		<small class="text-danger">-${product.discount.discoutPercent }%</small>  
	                                            		<br>                                          
	                                            		<span class="font-weight-bold">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${product.price -((product.price/100) * product.discount.discoutPercent) }" /> </span> 
                                            		</c:when>
                                            	</c:choose>
                                            </td>
                                            <td>${product.quantity }</td>
                                            <td>
                                            	<c:set var="total" value="${0}"/>
												<c:forEach var="productrv" items="${product.productReviews}">
												 	 <c:set var="total" value="${total + productrv.rating}" />
												</c:forEach> 
												 <span class="font700">${total }</span><i class="fa fa-1x fa-star text-warning"></i>                                     
                                            </td>
                                            <c:choose>
												<c:when test="${product.status == true }">
													 <td>
													 	<a class="text-success font-weight-bold " href="${pageContext.request.contextPath}/store/product/productid/${product.productId}/status/false"
													 	onclick="return confirm('Are you sure you want to change this?');">Active</a>
													 </td>	
												</c:when>
												<c:when test="${product.status == false }">
													<td class="text-danger font-weight-bold">
														<a class="text-danger font-weight-bold  " href="${pageContext.request.contextPath}/store/product/productid/${product.productId}/status/true"
														onclick="return confirm('Are you sure you want to change this?');">Inactive</a>
													</td>
												</c:when>
											</c:choose>	
                                            <td><a href="${pageContext.request.contextPath}/store/product/edit/${product.productId}" class="btn btn-info">Edit</a></td>
                                        </tr>
                                    	</c:forEach>                        
                                    </tbody>
                                </table>
                                <ul class="pagination pagination-primary ">
                                    <li class="page-item "><a class="page-link" href="javascript:void(0);">Previous</a></li>
                                    <li class="page-item active"><a class="page-link" href="javascript:void(0);">1</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">Next</a></li>
                                </ul> 
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
    </div>
	</jsp:attribute>
</mt:template_store>