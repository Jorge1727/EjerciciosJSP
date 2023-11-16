<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Media notas</title>
</head>
<body>
	<form method="post" action="calculoMedia.jsp">
		Introduce la primera nota:
		<input type="number" name="nota1">
		Introduce la segunda nota:
		<input type="number" name="nota2">
		Introduce la tercera nota:
		<input type="number" name="nota3">
		Hacer media:
		<input type="submit" value="Enviar">
	</form>
</body>
</html>