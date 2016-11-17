<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath() %>/css/adminstyle.css" rel='stylesheet' type='text/css' />
<title>admin</title>
</head>
<body>
<div style="margin:0 auto;text-align:center;">
	<c:if test="${user.type == 1 }">
		欢迎超级管理员${user.username }！<br>
		<input class="button" type="button" value="Message" onclick="location='<%=request.getContextPath() %>/message/list'"><br>
		<input class="button" type="button" value="Add Manager" onclick="location='<%=request.getContextPath() %>/user/add'"><br>
	</c:if>
	<c:if test="${user.type != 1 }">
		欢迎管理员${user.username }！<br>
		<input class="button" type="button" value="Message" onclick="location='<%=request.getContextPath() %>/message/list'"><br>
	</c:if>
	
</div>
</body>
</html>