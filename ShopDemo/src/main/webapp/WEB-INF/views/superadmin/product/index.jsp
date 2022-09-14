<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<mt:template_superadmin title="Product">
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
                                            <span class="font700">${allproducts.size() }</span>
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
                                            <span class="font700">${produtcsaccept.size() }</span>
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
                                            <i class="fa fa-2x icon-social-dropbox text-col-green"></i>
                                            <i class="fa fa-1x fa-ban text-col-green"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>Not Accepted</h6>
                                            <span class="font700 text-danger">${produtcscancell.size() }</span>
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
                            <h2>Product List</h2>
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
                                	<form action="${pageContext.request.contextPath}/superadmin/product/searchByProductId" method="get">
	                                    <div class="input-group-append col-sm-12">
	                                        <input type="number" class="form-control" placeholder="Search by ProductId..." name="productId">
	                                        <button class="btn btn-outline-secondary" type="submit">Search</button>
	                                    </div>
                                    </form>
                                    <form action="${pageContext.request.contextPath}/superadmin/product/searchByCategoryId" method="get">
	                                    <div class="input-group col-sm-12">
	                                        <select class="custom-select" id="inputGroupSelect04" name="categoryId">
	                                        	<option selected="selected">Categories</option>
	                                            <c:forEach items="${categories }" var="item">
	                                            	<option value="${item.categoryId }">${item.name }</option>
	                                            </c:forEach>
	                                        </select>
	                                        <div class="input-group-append">
	                                            <button class="btn btn-outline-secondary" type="submit">Search</button>
	                                        </div>
	                                    </div>
                                    </form>
                                    <form action="${pageContext.request.contextPath}/superadmin/product/searchByStatus" method="get">
                                    <div class="input-group col-sm">

                                        <select class="custom-select" id="inputGroupSelect04" name="status">
                                        	<option selected="selected">Status</option>
                                            <option value="1">Accept</option>
                                            <option value="0">Cancel</option>
                                        </select>
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary" type="submit">Search</button>
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
                                            <th>Photo</th>
                                            <th>Name</th>
                                            <th>Category</th>
                                            <th>Store</th>
                                            <th>Address</th>
                                            <th>Price</th>
                                            <th>In Stock</th>
                                            <th>In Order</th>
                                            <th>Rating</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:if test="${empty products }">
                                    		<tr>
                                    			<td>--</td>
                                    			<td>--</td>
                                    			<td>--</td>
                                    			<td>--</td>
                                    			<td>--</td>
                                    			<td>--</td>
                                    			<td>--</td>
                                    			<td>--</td>
                                    			<td>--</td>
                                    			<td>--</td>
                                    			<td>--</td>
                                    			<td>--</td>
                                    		</tr>
                                    	</c:if>
                                    
                                    	<c:forEach items="${products}" var="product" >
                                    		 <tr>
                                            <td><strong>#</strong>${product.productId }</td>
                                            <td><img width="50" height="70" style="overflow:hidden;" src="${pageContext.request.contextPath}/assets/uploads/products/${product.images[0].name}"  class="rounded shadow p-1 mb-2 " alt=""></td>
                                            <td class="text-truncate" onmouseover="this.stop();" style="max-width: 150px;"><marquee scrollamount="2"  hspace="20"><strong>${product.name }</strong></marquee></td>
                                            <td>${product.category.name }</td>
                                            <td>
                                            	<a class="text-infor" href="${pageContext.request.contextPath}/superadmin/store/detail/${product.store.userId}">
                                            		<strong>${product.store.name }</strong>
                                            	</a>
                                            </td>
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
                                            <td>${product.unitOnOrder }</td>
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
													 	<a class="text-success font-weight-bold " href="${pageContext.request.contextPath}/superadmin/product/productid/${product.productId}/status/false"
													 	onclick="return confirm('Are you sure you want to change this?');">Active</a>
													 </td>	
												</c:when>
												<c:when test="${product.status == false }">
													<td class="text-danger font-weight-bold">
														<a class="text-danger font-weight-bold  " href="${pageContext.request.contextPath}/superadmin/product/productid/${product.productId}/status/true"
														onclick="return confirm('Are you sure you want to change this?');">Inactive</a>
													</td>
												</c:when>
											</c:choose>	
                                            <td><a href="${pageContext.request.contextPath}/superadmin/product/edit/${product.productId}" class="btn btn-info">Edit</a></td>
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