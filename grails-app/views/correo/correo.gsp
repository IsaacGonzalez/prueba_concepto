<html>
<head>
<meta http-equiv="Content-Type"
content="text/html; charset=UTF-8"/>
<meta name="layout" content="main" />
<title>Login</title>
</head>
<body>
		<div class="body">
		
	
<h1> Notificaciones por correos</h1>		
%{-- <g:each in="${session.listaDeCorreos}">
     <p>correo: ${it}</p>
</g:each> --}%

<g:form action="mandarCorreo">
	<input type="hidden" name="email" value="${session.listaDeCorreos}" ><br>
	Mensaje:<input type="textarea" name="contenido"><br><br>
	<input type="submit" VALUE="Enviar notificación">
</g:form>

</div>
</body>
</html>