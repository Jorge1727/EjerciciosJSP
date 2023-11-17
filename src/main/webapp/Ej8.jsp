<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Configurado de vehículo</title>
</head>
<body>
	<form method="post" action="customCoche.jsp">
		<p>Elije el color de la tapicería:</p>
		<select name="tapiceria">
			<option>Blanco</option>
			<option>Negro</option>
			<option>Berenjena</option>
		</select>
		<p>Elije el material de las molduras:</p>
		<select name="moldura">
			<option name="carbono">Carbono</option>
			<option name="madera">Madera</option>
		</select>
		<br>
		<br>
		<input type="submit" name="enviar">
	</form>
</body>
</html>