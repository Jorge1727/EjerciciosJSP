<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tabla resuelta de multiplicar</title>
</head>
<body>
	<%int numero = Integer.parseInt(request.getParameter("numero"));%>

	<h1>Tabla del <% out.print(numero); %></h1>
	<table border="2">
		<% 
		for(int i = 1; i < 11; i++)
		{
		%>
		<tr>
		<%
			out.print("<td>" + i + " * " + numero + "</td>");
			out.print("<td>" + (i * numero) + "</td>");
		
		%>
		</tr>
		<%
		}
		%>
	</table>
	
</body>
</html>