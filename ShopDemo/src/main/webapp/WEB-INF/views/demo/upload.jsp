<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Upload</h3>
	<form enctype="multipart/form-data"
		action="${pageContext.request.contextPath }/demo/singleupload"
		method="post">
			File <input type="file" name="file">
			<br>
			<input type="submit" value="Upload">
	</form>
	
	<h3>Uploads</h3>
	<form enctype="multipart/form-data"
		action="${pageContext.request.contextPath }/demo/multipleupload"
		method="post">
			Files <input type="file" name="files" multiple="multiple">
			<br>
			<input type="submit" value="Upload">
	</form>
	
	<s:form method="post" modelAttribute="product" action="${pageContext.request.contextPath}/superadmin/product/new" enctype="multipart/form-data">
		Name <s:input path="name"/>
		<br>
		<input type="file" name="files"  multiple="multiple">
		<br>
		<input type="submit" value="Upload">
	</s:form>
</body>
</html>