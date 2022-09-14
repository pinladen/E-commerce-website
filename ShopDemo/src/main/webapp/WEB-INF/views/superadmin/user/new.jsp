<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<mt:template_superadmin title="Product">
	<jsp:attribute name="content">
		<div id="main-content">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h2>NEW USER</h2>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item">User Management</li>
                        <li class="breadcrumb-item active">New user</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container-fluid">
           
            <div class="row clearfix">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2>Basic Validation</h2>
                        </div>
                        <div class="body">
                        	<s:form id="basic-form" method="post" modelAttribute="user" action="${pageContext.request.contextPath}/superadmin/user/new" >
                        		<div class="form-group">
                                    <label>Username</label>
                                    <s:input path="username" cssClass="form-control"  />
                                    <s:errors path="username" cssClass="text-danger"></s:errors>                                   
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <s:password path="password" cssClass="form-control" />
                                    <s:errors path="password"></s:errors>                             
                                </div>
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <s:input path="fullname" cssClass="form-control" />
                                    <s:errors path="fullname"></s:errors>                          
                                </div>
                                <div class="form-group">
                                    <label>Phone</label>
                                    <s:input path="phone" cssClass="form-control" />
                                    <s:errors path="phone"></s:errors>                             
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <s:input path="email" cssClass="form-control" />
                                    <s:errors path="email"></s:errors>
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <s:input path="address" cssClass="form-control"/>
                                    <s:errors path="address"></s:errors>                   
                                </div>                                     
                                <br>
                                <button type="submit" class="btn btn-primary">Save </button>                                              	
                        	</s:form>               
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
	</jsp:attribute>
</mt:template_superadmin>