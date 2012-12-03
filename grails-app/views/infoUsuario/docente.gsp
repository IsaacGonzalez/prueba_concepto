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
			%{-- <h2>ID ${session.ID_Usuario} </h2>
			<h2>Nombres ${session.nombres} </h2>
			<h2>Apellidos ${session.apellidos} </h2>
			<h2>Area ${session.area} </h2>
			<h2>Facultad ${session.facultad} </h2> --}%


			<h1>Trámites  </h1>
			<ul>
			<li><g:link controller="ActividadesPtcPmt" action="create">Actividades Ptc y Ptm</g:link></li>
			<li><g:link controller="AvanceContenidosTematicos" action="create">Formato de avances de contenidos tematicos</g:link></li>
			<li><g:link controller="Disponibilidad" action="create">Formato de disponibilidad de Horario</g:link></li>
			<li><g:link controller="Comision" action="create">Formato de solicitud de comision y salidas académicas</g:link>
			<li><g:link controller="ExamenesOrdExtraord" action="create">Examenes ordinarios y extraordinarios</g:link></li>
			<g:link controller="Permisos" action="create">Solicitud de permisos</g:link></li>
			</ul>
		
		</div>
		<div id="page-body" role="main">
			
			<h2>Bienvenido</h2>
			<table>
				<tr>
					<th>Matricula </th>
					<th>Nombre </th>
					<th>Programa Educativo  </th>
					<th>Facultad  </th>
					<th>Coordinador de Carrera</th>
					<th>Materias</th> 
				</tr>
				<tr>
					<td>${session.ID_Usuario} </td>
					<td>${session.nombres} ${session.apellidos}</td>
					<td>${session.programaEducativo} </td>
					<td>${session.facultad} </td>
					<td>${session.coordinadorCarrera}</td>
					<td><g:each in="${session.materias}"><p>Materias: ${it}</p></g:each></td>
				</tr>
			</table>
			
			
			
		</div>
	</body>
</html>
