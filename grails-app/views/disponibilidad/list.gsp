
<%@ page import="org.trapo.Disponibilidad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'disponibilidad.label', default: 'Disponibilidad')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-disponibilidad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-disponibilidad" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="disponibilidad.solicitante.label" default="Solicitante" /></th>
					
						<th><g:message code="disponibilidad.autorizador.label" default="Autorizador" /></th>
					
						<g:sortableColumn property="fechaCreacion" title="${message(code: 'disponibilidad.fechaCreacion.label', default: 'Fecha Creacion')}" />
					
						<g:sortableColumn property="estaCompleto" title="${message(code: 'disponibilidad.estaCompleto.label', default: 'Esta Completo')}" />
					
						<g:sortableColumn property="estadoAvance" title="${message(code: 'disponibilidad.estadoAvance.label', default: 'Estado Avance')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${disponibilidadInstanceList}" status="i" var="disponibilidadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${disponibilidadInstance.id}">${fieldValue(bean: disponibilidadInstance, field: "solicitante")}</g:link></td>
					
						<td>${fieldValue(bean: disponibilidadInstance, field: "autorizador")}</td>
					
						<td><g:formatDate date="${disponibilidadInstance.fechaCreacion}" /></td>
					
						<td><g:formatBoolean boolean="${disponibilidadInstance.estaCompleto}" /></td>
					
						<td>${fieldValue(bean: disponibilidadInstance, field: "estadoAvance")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${disponibilidadInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
