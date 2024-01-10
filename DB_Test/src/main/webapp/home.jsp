<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>forward action example</title>
	</head>
	<body>
		<h4>
     This content is of that resource on which request is forwarded.
    </h4>
    <%
	out.print("Website: " + request.getParameter("websiteName")); 
    %>
	</body>
</html>