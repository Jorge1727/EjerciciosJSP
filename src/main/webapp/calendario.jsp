<%@page import="java.util.Locale"%>
<%@page import="java.time.format.TextStyle"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calendario</title>
</head>
<body>
    <%
    
        int mes = Integer.parseInt(request.getParameter("mes"));
        int anio = Integer.parseInt(request.getParameter("anio"));

        // Validación de mes y año
        if (mes < 1 || mes > 12 || anio < 0) {
            out.println("<p>Ingrese un mes y un año válidos.</p>");
        } else {
            
            LocalDate primerDiaMes = LocalDate.of(anio, mes, 1);

            //.getDisplayName, new Locale Para cambio de idioma del mes
            out.println("<h1>Calendario<h1>\n<h2>" + primerDiaMes.getMonth().getDisplayName(TextStyle.FULL, new Locale("es", "ES")).toUpperCase() + " del " + anio + "</h2>");
            
            %> 
            <table border="2">
            <tr><th>Domingo</th><th>Lunes</th><th>Martes</th><th>Miércoles</th><th>Jueves</th><th>Viernes</th><th>Sábado</th></tr>
			
			<%
            int diaSemana = primerDiaMes.getDayOfWeek().getValue() + 1;//+1 sino cogia un dia antes

            out.println("<tr>");
            for (int i = 1; i < diaSemana; i++) {
                out.println("<td></td>");
            }

            //dias
            for (int dia = 1; dia <= primerDiaMes.lengthOfMonth(); dia++) {
                out.println("<td>" + dia + "</td>");

                if ((dia + diaSemana - 1) % 7 == 0) {
                    out.println("</tr><tr>");
                }
            }

            //para celdas vacías
            int ultimaCelda = (diaSemana - 1 + primerDiaMes.lengthOfMonth()) % 7;
            for (int i = ultimaCelda + 1; i <= 7; i++) {
                out.println("<td></td>");
            }
            out.println("</tr>");
            out.println("</table>");
        }
    %>
</body>
</html>
