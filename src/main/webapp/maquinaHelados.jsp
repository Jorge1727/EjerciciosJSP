<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./estiloMaquinaHelados.css">
<title>Maquina</title>
</head>
<body>
<section class="contenedor">	
	<%
	int chocolate = Integer.parseInt(request.getParameter("chocolate"));
	int fresa = Integer.parseInt(request.getParameter("fresa"));
	int vainilla = Integer.parseInt(request.getParameter("vainilla"));
	
	String escribeChocolate = (chocolate > 0)? "Chocolate" : "";
	String escribeFresa = (fresa > 0)? "Fresa" : "";
	String escribeVainilla = (vainilla > 0)? "Vainilla" : "";
	
	int suma = chocolate + fresa + vainilla; 
	if(suma > 100)
	{
		out.print("La suma de los porcentajes debe ser menor o igual que 100.");
	}
	else
	{
	%>
	<h1>Aquí tiene su tarrina de helado</h1>
	<div class="tarrina">
		<div class="chocolate" style='height:<%out.print(chocolate);%>%;'><%out.print(escribeChocolate + " " + chocolate + "%");%></div>
		<div class="fresa" style='height:<%out.print(fresa);%>%;'><%out.print(escribeFresa + " " + fresa + "%");%></div>
		<div class="vainilla" style='height:<%out.print(vainilla);%>%;'><%out.print(escribeVainilla + " " + vainilla + "%");%></div>
	</div>
	<%
	}
	
	%>
</section>	
</body>
</html>