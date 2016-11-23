<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="Shortcut Icon" href="images/cartoon_s.jpg">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath() %>/css/adminstyle.css" rel='stylesheet' type='text/css' />
<title>joke</title>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script>
	function object2Str() {
		var str = document.getElementById("jokes").value;
		var jokeobj = eval("(" + str + ")");
		var result = jokeobj.result;
		var data = result.data;
		var jokelist = document.getElementById("jokelist");
		for (var i = 0; i < data.length; i++) {
			data[i].content = data[i].content.replace(/\r\n/mg,'<br>')
			data[i].content = data[i].content.replace(/\?/mg,'')
			jokelist.innerHTML += "NO." + i + ":<br>" + data[i].content
					+ "<br>" + data[i].updatetime + "<br><br>";
		}
	}
</script>
</head>
<body>
	<div style="padding-left: 5%; float:left;">
	<input type="hidden" id="jokes" value='${jokes }'>
	<input type="button" value="刷新" onclick="window.location.reload();">
	<input type="button" value="返回" onclick="window.location='<%=request.getContextPath() %>/'">
	<div id="jokelist"></div>
	<script>object2Str()</script>
	</div>
</body>
</html>