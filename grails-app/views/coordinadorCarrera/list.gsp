
<%@ page import="org.trapo.CoordinadorCarrera" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'coordinadorCarrera.label', default: 'CoordinadorCarrera')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-coordinadorCarrera" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-coordinadorCarrera" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="numeroEmpleado" title="${message(code: 'coordinadorCarrera.numeroEmpleado.label', default: 'Numero Empleado')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'coordinadorCarrera.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidos" title="${message(code: 'coordinadorCarrera.apellidos.label', default: 'Apellidos')}" />
					
						<th><g:message code="coordinadorCarrera.supervisor.label" default="Supervisor" /></th>
					
						<g:sortableColumn property="contrasena" title="${message(code: 'coordinadorCarrera.contrasena.label', default: 'Contrasena')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${coordinadorCarreraInstanceList}" status="i" var="coordinadorCarreraInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${coordinadorCarreraInstance.id}">${fieldValue(bean: coordinadorCarreraInstance, field: "numeroEmpleado")}</g:link></td>
					
						<td>${fieldValue(bean: coordinadorCarreraInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: coordinadorCarreraInstance, field: "apellidos")}</td>
					
						<td>${fieldValue(bean: coordinadorCarreraInstance, field: "supervisor")}</td>
					
						<td>${fieldValue(bean: coordinadorCarreraInstance, field: "contrasena")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${coordinadorCarreraInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
