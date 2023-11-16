<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Saludo de tu nombre en idioma seleccionado</title>
</head>
<body>
	<h1>Saludo con tu idioma</h1>
	<form method="post" action="saludo.jsp">
		Introduce tu nombre:
		<input type="text" name="nombre">
		Ahora selecciona el idioma:
		<select name="idioma">
			<option>Español</option>
			<option>Portugués</option>
			<option>Inglés</option>
		</select>
		<input type="submit" value="Enviar">
	</form>
</body>
</html>