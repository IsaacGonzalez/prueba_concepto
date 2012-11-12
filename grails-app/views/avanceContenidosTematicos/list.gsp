
<%@ page import="org.trapo.AvanceContenidosTematicos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'avanceContenidosTematicos.label', default: 'AvanceContenidosTematicos')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-avanceContenidosTematicos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-avanceContenidosTematicos" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="avanceContenidosTematicos.solicitante.label" default="Solicitante" /></th>
					
						<th><g:message code="avanceContenidosTematicos.autorizador.label" default="Autorizador" /></th>
					
						<g:sortableColumn property="fechaCreacion" title="${message(code: 'avanceContenidosTematicos.fechaCreacion.label', default: 'Fecha Creacion')}" />
					
						<g:sortableColumn property="estaCompleto" title="${message(code: 'avanceContenidosTematicos.estaCompleto.label', default: 'Esta Completo')}" />
					
						<g:sortableColumn property="estadoAvance" title="${message(code: 'avanceContenidosTematicos.estadoAvance.label', default: 'Estado Avance')}" />
					
						<th><g:message code="avanceContenidosTematicos.materia.label" default="Materia" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${avanceContenidosTematicosInstanceList}" status="i" var="avanceContenidosTematicosInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${avanceContenidosTematicosInstance.id}">${fieldValue(bean: avanceContenidosTematicosInstance, field: "solicitante")}</g:link></td>
					
						<td>${fieldValue(bean: avanceContenidosTematicosInstance, field: "autorizador")}</td>
					
						<td><g:formatDate date="${avanceContenidosTematicosInstance.fechaCreacion}" /></td>
					
						<td><g:formatBoolean boolean="${avanceContenidosTematicosInstance.estaCompleto}" /></td>
					
						<td>${fieldValue(bean: avanceContenidosTematicosInstance, field: "estadoAvance")}</td>
					
						<td>${fieldValue(bean: avanceContenidosTematicosInstance, field: "materia")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${avanceContenidosTematicosInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
