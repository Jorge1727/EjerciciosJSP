<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Conversor</title>
</head>
<body>
	<%
		double dolares = Double.parseDouble(request.getParameter("dolares"));
		double euros = dolares * 0.92;
		
		out.print(dolares + " a euros son = " + euros);
	%>
</body>
</html>