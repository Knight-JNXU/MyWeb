<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="Shortcut Icon" href="images/cartoon_s.jpg">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test JDBC</title>
</head>
<body>
	<c:forEach var="item" items="${users}">
	username:${item.username }<br>
	password:${item.password }<br>
	</c:forEach>

</body>
</html>