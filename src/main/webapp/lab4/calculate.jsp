<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>
    <c:url value="/calculate" var="cal"/>
    <form method="post">
        <input name="a"><br>
        <input name="b"><br>
        <button formaction="${cal}/add">+</button>
        <button formaction="${cal}/sub">-</button>
    </form>
    ${message}
</body>
</html>