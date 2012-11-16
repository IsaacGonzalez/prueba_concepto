<<<<<<< HEAD
<<<<<<< HEAD

<%@ page import="org.trapo.Administrativo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'administrativo.label', default: 'Administrativo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-administrativo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-administrativo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'administrativo.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'administrativo.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="numeroEmpleado" title="${message(code: 'administrativo.numeroEmpleado.label', default: 'Numero Empleado')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'administrativo.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidos" title="${message(code: 'administrativo.apellidos.label', default: 'Apellidos')}" />
					
						<th><g:message code="administrativo.supervisor.label" default="Supervisor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${administrativoInstanceList}" status="i" var="administrativoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${administrativoInstance.id}">${fieldValue(bean: administrativoInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "numeroEmpleado")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "apellidos")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "supervisor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${administrativoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
=======

<%@ page import="org.trapo.Administrativo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'administrativo.label', default: 'Administrativo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-administrativo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-administrativo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="numeroEmpleado" title="${message(code: 'administrativo.numeroEmpleado.label', default: 'Numero Empleado')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'administrativo.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidos" title="${message(code: 'administrativo.apellidos.label', default: 'Apellidos')}" />
					
						<th><g:message code="administrativo.supervisor.label" default="Supervisor" /></th>
					
						<g:sortableColumn property="contrasena" title="${message(code: 'administrativo.contrasena.label', default: 'Contrasena')}" />
					
						<g:sortableColumn property="puesto" title="${message(code: 'administrativo.puesto.label', default: 'Puesto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${administrativoInstanceList}" status="i" var="administrativoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${administrativoInstance.id}">${fieldValue(bean: administrativoInstance, field: "numeroEmpleado")}</g:link></td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "apellidos")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "supervisor")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "contrasena")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "puesto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${administrativoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
>>>>>>> controladores
=======
<<<<<<< HEAD

<%@ page import="org.trapo.Administrativo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'administrativo.label', default: 'Administrativo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-administrativo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-administrativo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'administrativo.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'administrativo.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="numeroEmpleado" title="${message(code: 'administrativo.numeroEmpleado.label', default: 'Numero Empleado')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'administrativo.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidos" title="${message(code: 'administrativo.apellidos.label', default: 'Apellidos')}" />
					
						<th><g:message code="administrativo.supervisor.label" default="Supervisor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${administrativoInstanceList}" status="i" var="administrativoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${administrativoInstance.id}">${fieldValue(bean: administrativoInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "numeroEmpleado")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "apellidos")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "supervisor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${administrativoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
=======

<%@ page import="org.trapo.Administrativo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'administrativo.label', default: 'Administrativo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-administrativo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-administrativo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="numeroEmpleado" title="${message(code: 'administrativo.numeroEmpleado.label', default: 'Numero Empleado')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'administrativo.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidos" title="${message(code: 'administrativo.apellidos.label', default: 'Apellidos')}" />
					
						<th><g:message code="administrativo.supervisor.label" default="Supervisor" /></th>
					
						<g:sortableColumn property="contrasena" title="${message(code: 'administrativo.contrasena.label', default: 'Contrasena')}" />
					
						<g:sortableColumn property="puesto" title="${message(code: 'administrativo.puesto.label', default: 'Puesto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${administrativoInstanceList}" status="i" var="administrativoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${administrativoInstance.id}">${fieldValue(bean: administrativoInstance, field: "numeroEmpleado")}</g:link></td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "apellidos")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "supervisor")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "contrasena")}</td>
					
						<td>${fieldValue(bean: administrativoInstance, field: "puesto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${administrativoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
>>>>>>> controladores
>>>>>>> Scaffolding
