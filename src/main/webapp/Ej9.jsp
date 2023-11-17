<%@page import="java.text.NumberFormat.Style"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tablero de Ajedrez</title>
    <link rel="stylesheet" href="./estiloAjedrez.css">
</head>
<body>
    <table border="2">
        <%
        char letra = 97;//es la letra a en ascii mas facil para jugar con ellas en bucles

        String numAlfil = String.valueOf(1 + (int) (Math.random() * 7));
        char letraAlfin = (char) (97 + (int) (Math.random() * 7));
        String posicionAlfil = letraAlfin + "" + numAlfil;

        String numCaballo = String.valueOf(1 + (int) (Math.random() * 7));
        char letraCaballo = (char) (97 + (int) (Math.random() * 7));
        String posicionCaballo = letraCaballo + "" + numCaballo;
        
        //control de error en repetición
        if(posicionCaballo.equals(posicionAlfil))
        {
        	numCaballo = String.valueOf(1 + (int) (Math.random() * 7));
            letraCaballo = (char) (97 + (int) (Math.random() * 7));
            posicionCaballo = letraCaballo + "" + numCaballo;	
        }

        for (int i = 1; i < 9; i++) {
        %>
        <tr>
            <%
            for (int j = 1; j < 9; j++) {
                String clase = (i + j) % 2 == 0 ? "par" : "impar";

                String poner = "";
                String posicion = letra + String.valueOf(j);

                //si la pos en la que se esta coincide con el alfil o caballo se le agrega al html
                if (posicion.equals(posicionAlfil)) {
                    poner = "<img src='alfil.jpg' style=\"width:35px;\">";
                } else if (posicion.equals(posicionCaballo)) {
                    poner = "<img src='caballo.jpg' style=\"width:35px;\">";;
                }

                out.println("<td id='" + letra + j + "' class='" + clase + "'> "+ poner +"</td>");
            }
            letra++;
            %>
        </tr>
        <%
        }
        %>
    </table>
</body>
</html>