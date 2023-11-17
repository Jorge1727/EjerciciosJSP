<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int mes = Integer.parseInt(request.getParameter("mes")) - 1;
	int anio = Integer.parseInt(request.getParameter("anio"));
	
	Calendar calendar = Calendar.getInstance();
	calendar.set(Calendar.YEAR, anio);
	calendar.set(Calendar.MONTH, mes);
	int numDays = calendar.getActualMaximum(Calendar.DATE);
	%>
	<table border="2">
	<%
	for(int dia = 1; dia <= numDays; dia++){
		calendar.set(Calendar.DAY_OF_MONTH, dia);
		
		SimpleDateFormat formateador = new SimpleDateFormat("EEEE dd MMM yyyy");
		out.println("<tr><td>" + formateador.format(calendar.getTime()) + "</td></tr>");
	}
	%>
	
	</table>
</body>
</html>