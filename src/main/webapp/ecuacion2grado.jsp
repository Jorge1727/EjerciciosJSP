<%@page import="java.math.BigDecimal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ecuacion resuelta</title>
</head>
<body>
	<%
	BigDecimal a = BigDecimal.valueOf(Integer.parseInt(request.getParameter("a")));
    BigDecimal b = BigDecimal.valueOf(Integer.parseInt(request.getParameter("b")));
    BigDecimal c = BigDecimal.valueOf(Integer.parseInt(request.getParameter("c")));

    BigDecimal discriminante = b.pow(2).subtract(a.multiply(BigDecimal.valueOf(4)).multiply(c));

    if (discriminante.compareTo(BigDecimal.ZERO) < 0) 
    {
        out.print("Las soluciones son numeros irreales");
    } else 
    {
        BigDecimal raiz = BigDecimal.valueOf(Math.sqrt(discriminante.doubleValue()));
        BigDecimal primeraSol = b.negate().add(raiz).divide(a.multiply(BigDecimal.valueOf(2)));
        BigDecimal segundaSol = b.negate().subtract(raiz).divide(a.multiply(BigDecimal.valueOf(2)));

        out.println("<p>La primera solucion sería " + primeraSol + "<p/>");
        out.print("<p>La segunda solucion sería " + segundaSol + "</p");
    }
	%>
</body>
</html>