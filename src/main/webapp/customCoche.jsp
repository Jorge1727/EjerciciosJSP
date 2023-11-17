<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customizador</title>
</head>
<body>
	<%
	String colorTapizadoRequest =  request.getParameter("tapiceria");
	String colorMolduraRequest =  request.getParameter("moldura");
	String colorTapizado = "";
	String colorMoldura = "";
	
	switch(colorTapizadoRequest)
	{
	case "Blanco":
		colorTapizado = "white";
		break;
	case "Negro":
		colorTapizado = "black";
		break;
	case "Berenjena":
		colorTapizado = "#6a3896";
		break;
	}
		
	switch(colorMolduraRequest)
	{
	
	case "Carbono":
		colorMoldura = "#908e91";
		break;
	case "Madera":
		colorMoldura = "#916903";
		break;
	}
	
	
	out.print("<h1>el tapizado del coche es <span style='color: " + colorTapizado + ";'>color</span> " + colorTapizadoRequest + "</h1>");
	out.print("<h1>y la moldura del coche es <span style='color: " + colorMoldura + ";'>color</span> " + colorMolduraRequest + "</h1>");
	
	%>	
</body>
</html>