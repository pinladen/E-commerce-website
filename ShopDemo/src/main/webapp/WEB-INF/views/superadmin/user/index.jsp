<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>


<mt:template_superadmin title="User">
	<jsp:attribute name="content">
		 <div id="main-content">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h2>Account management</h2>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a
								href="index.html"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item active">Account management</li>
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
                                            <i class="fa fa-2x fa-users text-col-blue"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>USER</h6>
                                            <span class="font700">${users.size()}</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-blue mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="100"></div>
                                    </div>
                                    <small class="text-muted">All account </small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x fa-user-circle text-col-yellow"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>SupperAdmin</h6>
                                            <span class="font700">${coutSuperAdmin }</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-lightseagreen mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="${precentCountRoleSupperAdmin }"></div>
                                    </div>
                                    <small class="text-muted">${precentCountRoleSupperAdmin }% of the total number of users</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x icon-user-following text-col-green"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>Active</h6>
                                            <span class="font700">${active }</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-green mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="${precentCountStatusActive }"></div>
                                    </div>
                                    <small class="text-muted">${precentCountStatusActive }% compared to last week</small>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="body">
                                    <div class="clearfix">
                                        <div class="float-left">
                                            <i class="fa fa-2x icon-user-unfollow text-col-red"></i>
                                        </div>
                                        <div class="number float-right text-right">
                                            <h6>InActive</h6>
                                            <span class="font700">${inactive }</span>
                                        </div>
                                    </div>
                                    <div class="progress progress-xs progress-transparent custom-color-orange mb-0 mt-3">
                                        <div class="progress-bar" data-transitiongoal="${precentCountStatusInActive }"></div>
                                    </div>
                                    <small class="text-muted">${precentCountStatusInActive }% compared to last week</small>
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
                            <h2>Account List</h2>
                            
                            <ul
									class="header-dropdown dropdown dropdown-animated scale-left">
                                <li> <a href="javascript:void(0);"
										data-toggle="cardloading" data-loading-effect="pulse"><i
											class="icon-refresh"></i></a></li>
                                <li><a href="javascript:void(0);"
										class="full-screen"><i class="icon-size-fullscreen"></i></a></li>
                                <li class="dropdown">
                                    <a href="javascript:void(0);"
										class="dropdown-toggle" data-toggle="dropdown" role="button"
										aria-haspopup="true" aria-expanded="false"></a>
                                    <ul class="dropdown-menu">
                                        <li><a
												href="javascript:void(0);">Action</a></li>
                                        <li><a
												href="javascript:void(0);">Another Action</a></li>
                                        <li><a
												href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control"
										placeholder="Search here...">
                                <div class="input-group-append">
                                    <button
											class="btn btn-outline-secondary" type="button">Search</button>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table
										class="table table-hover js-basic-example dataTable table-custom mb-0">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Id</th>
                                            <th>Username</th>
                                            <th>Full Name</th>
                                            <th>Address</th>
                                            <th>Email</th>
                                            <th>Phone</th>                                      
                                            <th>Role</th>
                                            <th>Status 
                                            	<c:choose>
													<c:when test="${status == true}">
														<a href="${pageContext.request.contextPath}/superadmin/user/search/status/${status}">
                                            				<i class="icon-lock text-danger "></i>
                                            			</a>
													</c:when>
													<c:when test="${status == false }">
														 <a href="${pageContext.request.contextPath}/superadmin/user/search/status/${status}">
                                            				<i class="icon-lock-open text-success"></i>
                                            			</a>
													</c:when>
													<c:when test="${empty status}">
														 <a href="${pageContext.request.contextPath}/superadmin/user/search/status/true">
		                                          			<i class="fa fa-circle-o text-success"></i>
		                                          		</a>
													</c:when>															
												</c:choose>	
                                            
                                            	
                                            </th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="user" items="${users }">
												<tr>
													<td>${user.userId }</td>
													<td class="text-truncate" style="max-width: 150px;" >${user.username }</td>												
													<td>${user.fullname }</td>
													<td class="text-truncate" style="max-width: 150px;">${user.address }</td>
													<td class="text-truncate" style="max-width: 150px;">${user.email }</td>
													<td>${user.phone }</td>
													<td style="max-width: 200px">
														<c:forEach var="role" items="${user.roles }">
															<c:choose>
																<c:when test="${role.name == 'ROLE_SUPER_ADMIN' }">
																	 <label class="badge badge-dark">SuperAdmin</label>
																</c:when>
																<c:when test="${role.name == 'ROLE_STORE' }">
																	 <label class="badge badge-primary">Store</label>
																</c:when>
																<c:when test="${role.name == 'ROLE_USER' }">
																	 <label class="badge badge-success badge-pill">User</label>
																</c:when>															
															</c:choose>	
															
														</c:forEach>
													</td>												
													<c:choose>
														<c:when test="${user.status == true }">
															 <td>
															 	<a class="text-success font-weight-bold" 
															 	href="${pageContext.request.contextPath}/superadmin/user/userid/${user.userId}/status/false" 
															 	onclick="return confirm('Are you sure you want to change this?');">Active</a>
															 </td>	
														</c:when>
														<c:when test="${user.status == false }">
															<td class="text-danger font-weight-bold">
																<a class="text-danger font-weight-bold" 
																href="${pageContext.request.contextPath}/superadmin/user/userid/${user.userId}/status/true"
																onclick="return confirm('Are you sure you want to change this?');">Inactive</a>
															</td>
														</c:when>
													</c:choose>	
													 <td>
														 <a href="${pageContext.request.contextPath}/superadmin/user/detail/${user.userId}"
															class="btn btn-warning round fa fa-eye"></a>
		                                                <a href="${pageContext.request.contextPath}/superadmin/user/edit/${user.userId}"
															class="btn btn-info round fa fa-edit"></a>	
																	                                             
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

