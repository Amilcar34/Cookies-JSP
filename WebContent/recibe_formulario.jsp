<html>
<head>
<meta charset="UTF-8">
<title>Recibe Formulario</title>
</head>
<body>
<%
	String ciudad_favorita=request.getParameter("ciudad_destino");

	Cookie ck = new Cookie("cookie.ciudad_favorita", ciudad_favorita);
	
	ck.setMaxAge(365*24*60*60); //duracion de la cookie en la pc del usuario
	
	response.addCookie(ck);

%>

Preferencias guardadas!!!

<a href="agencia_viajes.jsp"> ir a la agencia de viajes</a>

</body>
</html>