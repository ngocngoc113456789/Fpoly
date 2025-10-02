<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload File</title>
</head>
<body>
    <h2>Upload File</h2>
    <c:url value="/upload" var="url"/>
    <form action="${url}" method="post" enctype="multipart/form-data">
        <input name="photo" type="file"><br><br>
        <button>Upload</button>
    </form>

    <c:if test="${not empty message}">
        <p style="color:blue">${message}</p>
        <img src="${pageContext.request.contextPath}/static/file/${filename}" 
             width="200"/>
    </c:if>
</body>
</html>