<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Micro Expression</title>
</head>
<body>
	<img src="G:/Expression/Surprise/Surprise3.png"/><br>
	<c:forEach var="item" items="${datas }">
	<img alt="${item.expression }" src="${item.pictureUrl }"/>
	${item.expression }<br>
	${item.pictureUrl }<br>
	</c:forEach>
</body>
</html>