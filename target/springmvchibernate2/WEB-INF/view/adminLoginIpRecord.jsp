<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>

<form action="readIpRecords" method="post">
管理员账号：<input type="text" name="adminUser" id="adminUser"><br>
管理员密码：<input type="password" name="adminPassword" id="adminPassword"><br>
<input type="submit" value="登录">
<input type="reset" value="重置">
</form>
</body>
</html>