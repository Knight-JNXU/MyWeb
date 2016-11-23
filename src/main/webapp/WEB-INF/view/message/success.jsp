<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="Shortcut Icon" href="images/cartoon_s.jpg">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>send message</title>
</head>
<script type="text/javascript"> 
var i = 6; function shownum(){ 
	i=i-1; 
	document.getElementById("time").innerHTML=i+"秒后自动跳转登陆界面";
	setTimeout('shownum()',1000); 
} 
</script>
<body onload="shownum()">
	<br><br><br>
	<div style="text-align:center;margin:0 auto;">
	留言成功！<br>
	<label id="time"></label>
	<meta http-equiv="refresh" content ="5;url=<%=request.getContextPath() %>/">
	<br><a href="<%=request.getContextPath() %>/">跳转</a>
	</div>
</body>
</html>