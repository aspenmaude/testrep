<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//String message = (String)request.getAttribute("message");
%>
<c:set var ="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload file</title>
</head>
<body>
	<h1>Upload File</h1>
	<p>${message} -> Expression Language(EL)</p>
	<form action="${contextPath}/upload.do" method="post" enctype="multipart/form-data">
		File 1: <input type="file" name="file1"> <br/>
		File 2: <input type="file" name="file2">  <br/>
		Param1 : <input type="text" name="param1"> <br/>
		Param2 : <input type="text" name="param2"> <br/>
		<input type="submit" value="Upload Files">
	</form>
	
	<p><a href="${contextPath }/download.do?fname=download.jpg">Download</a></p>
	
</body>
</html>