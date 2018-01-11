<html>
<head>
<meta charset="UTF-8">
<title>Tilulo</title>
</head>
<body>

<h1 style="text-align:center">Agencia de viajes</h1>

<%
	//valor por defecto en caso de no tener cookie
	
	String ciudad_favorita = "Marruecos";

	//lee las cookies de la peticion del navegador
	
	Cookie[] lasCookies = request.getCookies();
	
	//buscar las preferencias
	
	if(lasCookies != null)
		
		for(Cookie temC : lasCookies)
			
			if("cookie.ciudad_favorita".equals(temC.getName())){
				
				ciudad_favorita = temC.getValue();
				
				break;
			}	
%>

<h3> Vuelos a <%= ciudad_favorita  %> </h3>
<p> Esto es un texto de ejemplo</p>
<p> Esto es un texto de ejemplo</p>
<p> Esto es un texto de ejemplo</p>
<br>

<h3>Descuentos para hoteles en <%= ciudad_favorita  %> </h3>
<p> Esto es un texto de ejemplo</p>
<p> Esto es un texto de ejemplo</p>
<p> Esto es un texto de ejemplo</p>
<br>

<h3> Restaurantes en <%= ciudad_favorita  %> </h3>
<p> Esto es un texto de ejemplo</p>
<p> Esto es un texto de ejemplo</p>
<p> Esto es un texto de ejemplo</p>


</body>
</html>