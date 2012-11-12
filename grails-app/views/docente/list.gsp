
<%@ page import="org.trapo.Docente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'docente.label', default: 'Docente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-docente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-docente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'docente.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'docente.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="numeroEmpleado" title="${message(code: 'docente.numeroEmpleado.label', default: 'Numero Empleado')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'docente.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidos" title="${message(code: 'docente.apellidos.label', default: 'Apellidos')}" />
					
						<th><g:message code="docente.supervisor.label" default="Supervisor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${docenteInstanceList}" status="i" var="docenteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${docenteInstance.id}">${fieldValue(bean: docenteInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: docenteInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: docenteInstance, field: "numeroEmpleado")}</td>
					
						<td>${fieldValue(bean: docenteInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: docenteInstance, field: "apellidos")}</td>
					
						<td>${fieldValue(bean: docenteInstance, field: "supervisor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${docenteInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
