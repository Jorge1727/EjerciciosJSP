<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href="./estiloDatosPersonales.css">
<title>Datos personales con css</title>
</head>
<body>
<h1>Nombre</h1>

<%
String nombre = "Jorge Alexander";

out.println("<p>" + nombre + "</p>");
%>

<h1>Apellidos</h1>

<%
String apellidos = "Tapia Cajas";

out.println("<p>" + apellidos + "</p>");
%>

<h1>Edad</h1>

<%
int edad = 22;
out.println("<p>" + edad + "</p>");
%>

</body>
</html>