<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 0.5em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}
            
			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}

			#nombreProyecto{
				font-size: 24px;
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">

			
			<h1>Trámites</h1>
			<ul>
			<li><g:link controller="Permisos" action="create">Formato de Permisos
			</g:link></li>
			<li><g:link controller="Solicitud" action="create">Formato de solicitud de comision y salidas académicas</g:link></li>
			<li><g:link controller="Correo" action="index">Notificaciones</g:link></li>
			</ul>

			%{-- <h1>Installed Plugins</h1>
			<ul>
				<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
					<li>${plugin.name} - ${plugin.version}</li>
				</g:each>
			</ul> --}%
		</div>
		<div id="page-body" role="main">
			<h2>Bienvenido</h2>		
			<table>
				<tr>
					<th>Matricula </th>
					<th>Nombre </th>
					<th>Área  </th>
					<th>Facultad  </th>
					
				</tr>
				<tr>
					<td>${session.ID_Usuario} </td>
					<td>${session.nombres} ${session.apellidos}</td>
					<td>${session.programaEducativo} </td>
					<td>${session.facultad} </td>
				</tr>
			</table>
		</div>
	</body>
</html>
