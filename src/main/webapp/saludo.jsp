<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	
	<%
		String idioma = request.getParameter("idioma");
	
		switch(idioma)
		{
		case "Español":
			out.print("Holaaa ");
			break;
			
		case "Portugués":
			out.print("Oláaa ");
			break;
			
		case "Inglés":
			out.print("Hellooo ");
			break;
		}


		out.print(request.getParameter("nombre"));
	%>
</body>
</html>