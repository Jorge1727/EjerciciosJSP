<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ecuación de segundo grado</title>
</head>
<body>
	ax²+bx+c = 0 
	<br>
	<form method="post" action="ecuacion2grado.jsp">
		<p>Dime el numero a:</p>
		<input type="number" name="a">
		<p>Dime el numero b:</p>
		<input type="number" name="b">
		<p>Dime el numero c:</p>
		<input type="number" name="c">
		<input type="submit" value="Enviar">
	</form>
</body>
</html>