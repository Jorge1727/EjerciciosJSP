<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tarrina de helados</title>
</head>
<body>
	<h1>Maquina de helados</h1>
	<p>Seleccione los porcentajes para preparar su helado</p>
	<form method="post" action="maquinaHelados.jsp">
		<p>Cocolate</p>
		<input type="number" name="chocolate">%
		<p>Fresa</p>
		<input type="number" name="fresa">%
		<p>Vainilla</p>
		<input type="number" name="vainilla">%
		<br>
		<br>
		<input type="submit" name="enviar" value="Preparar helado">
	</form>
</body>
</html>