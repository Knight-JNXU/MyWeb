<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list</title>
<link href="<%=request.getContextPath() %>/css/adminstyle.css" rel='stylesheet' type='text/css' />
</head>
<body>
<div style="margin-top: 50px;">
	<table css="meslist" border="1" align="center">
		<tr>
			<th>姓名</th>
			<th>邮箱</th>
			<th>留言</th>
			<th>时间</th>
		</tr>
		<c:forEach var="item" items="${messages}">
		<tr>
			<td>${item.name }</td>
			<td>${item.email }</td>
			<td>${item.mes }</td>
			<td><fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>