<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>	
	<h1>List User</h1>
	
	<table id="tableUser" border="1">
		<tr>
			<th>ID</th>
			<th>Username</th>
			<th>Password</th>
			<th>Fullname</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Address</th>
			<th>Created</th>
			<th>Status</th>
			<th>comment</th>
		</tr>
		<c:forEach var="user" items="${users }" >
			<tr>
				<td>${user.userId }</td>
				<td>${user.username }</td>
				<td>${user.password }</td>
				<td>${user.fullname }</td>
				<td>${user.email }</td>
				<td>${user.phone }</td>
				<td>${user.address }</td>
				<td>${user.created }</td>
				<td>${user.status }</td>
			</tr>
		</c:forEach>
	</table>
	
	
	<table id="tableUser" border="1">
		<tr>
			<th>ID</th>
			<th>name</th>
			<th>price</th>
			<th>quantity</th>
			<th>Store</th>
			<th>Brand</th>
			<th>Made-in</th>
			<th>Created</th>
			<th>Status</th>
			<th>Description</th>
		</tr>
		<c:forEach var="product" items="${products }" >
			<tr>
				<td>${product.productId }</td>
				<td>${product.name }</td>
				<td>${product.price }</td>
				<td>${product.quantity }</td>
				<td>${product.store.name }</td>
				<td>${product.brand }</td>
				<td>${product.madeIn }</td>
				<td>${product.created }</td>
				<td>${product.status }</td>
				<td>${product.content }</td>
				<td>
					<c:forEach items="${product.images}"  var="image">
						<img src="${pageContext.request.contextPath}/assets/uploads/products/${image.name}" style="max-height:150px; overflow:hidden;" >
					</c:forEach>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	
	
</body>
</html>