<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>


<mt:template_home title="Category">
	<jsp:attribute name="content">
				<ul class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i></a></li>
					<li><a href="#">My Account</a></li>
					<li><a href="#"> Change Password</a></li>
				</ul>
			<!--Right Part Start -->
			<aside class="col-sm-3 hidden-xs" id="column-right">
				<h2 class="subtitle">My Account</h2>
				<div class="list-group">
					<ul class="list-item">
						<li> <a href="${pageContext.request.contextPath}/user/myaccount"><i class="fa fa-user-circle"></i> <span style="margin-left: 10px">Profile</span> </a>
						</li>
						<li><a href="${pageContext.request.contextPath}/user/myaccount/password"><i class="fa fa-key"></i>	<span style="margin-left: 10px">Change Password</span> </a>
						</li>
						<li><a href="${pageContext.request.contextPath}/user/myaccount/order"><i class="fa fa-file-text-o"></i> <span style="margin-left: 10px">Order History</span> </a>
						</li>
						<li><a href="${pageContext.request.contextPath}/user/myaccount/mystore"><i class="fa fa-tasks"></i> <span style="margin-left: 10px">My Store</span> </a>
						</li>			
					</ul>
				</div>
			</aside>
			<!--Right Part End -->
		
		<div class="row" >
			<!--Middle Part Start-->
			<div class="col-sm-8" id="content" style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 1px 3px 1px; margin-bottom: 100px;padding: 50px">
				<h2 class="title">Change Password</h2>
				<p class="lead">For your account's security, do not share your password with anyone else</p>
				<form method="post" action="${pageContext.request.contextPath}/user/myaccount/changepassword">
					<div class="row" >
						<div class="col-sm-12">
							<fieldset id="personal-details">
								<div class="form-group required">
									<label for="input-newpassword" class="control-label">Current Password</label>
									<input type="password" class="form-control"  name="currentpassword">
									<small style="color:red">${msgerrorcurrent }</small>
								</div>
								<div class="form-group required">
									<label for="input-newpassword" class="control-label">New Password</label>
									<input type="password" class="form-control"  name="newpassword">
									<small style="color:red">${msgerrornewpassword }</small>
								</div>
								<div class="form-group required">
									<label for="input-confirmpassword" class="control-label">Confirm Password</label>
									<input type="password" class="form-control"  name="confirmpassword">
									<small style="color:red">${msgerrorconfirmpassword }</small>
								</div>
								
							</fieldset>
							<br>
						</div>
					</div>
					<h4 style="color:green">${success }</h4>
					<h4 style="color:red">${error }</h4>
					<div class="buttons clearfix" style="margin: 10px">
						<div class="pull-right">
							<input type="submit" class="btn btn-md btn-primary" value="Save Changes">
						</div>
					</div>
				</form>
			</div>
			<!--Middle Part End-->
		
		</div>
	
	</jsp:attribute>
</mt:template_home>
