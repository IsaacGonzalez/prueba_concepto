
<%@ page import="org.trapo.Notificacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'notificacion.label', default: 'Notificacion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-notificacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-notificacion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'notificacion.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'notificacion.descripcion.label', default: 'Descripcion')}" />
					
						<th><g:message code="notificacion.planificador.label" default="Planificador" /></th>
					
						<g:sortableColumn property="periodoInicial" title="${message(code: 'notificacion.periodoInicial.label', default: 'Periodo Inicial')}" />
					
						<g:sortableColumn property="periodoFinal" title="${message(code: 'notificacion.periodoFinal.label', default: 'Periodo Final')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${notificacionInstanceList}" status="i" var="notificacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${notificacionInstance.id}">${fieldValue(bean: notificacionInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: notificacionInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: notificacionInstance, field: "planificador")}</td>
					
						<td><g:formatDate date="${notificacionInstance.periodoInicial}" /></td>
					
						<td><g:formatDate date="${notificacionInstance.periodoFinal}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${notificacionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
