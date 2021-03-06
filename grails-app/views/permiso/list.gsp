
<%@ page import="org.trapo.Permiso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'permiso.label', default: 'Permiso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-permiso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-permiso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="permiso.solicitante.label" default="Solicitante" /></th>
					
						<th><g:message code="permiso.autorizador.label" default="Autorizador" /></th>
					
						<g:sortableColumn property="fechaCreacion" title="${message(code: 'permiso.fechaCreacion.label', default: 'Fecha Creacion')}" />
					
						<g:sortableColumn property="estaCompleto" title="${message(code: 'permiso.estaCompleto.label', default: 'Esta Completo')}" />
					
						<g:sortableColumn property="estadoAvance" title="${message(code: 'permiso.estadoAvance.label', default: 'Estado Avance')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'permiso.tipo.label', default: 'Tipo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${permisoInstanceList}" status="i" var="permisoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${permisoInstance.id}">${fieldValue(bean: permisoInstance, field: "solicitante")}</g:link></td>
					
						<td>${fieldValue(bean: permisoInstance, field: "autorizador")}</td>
					
						<td><g:formatDate date="${permisoInstance.fechaCreacion}" /></td>
					
						<td><g:formatBoolean boolean="${permisoInstance.estaCompleto}" /></td>
					
						<td>${fieldValue(bean: permisoInstance, field: "estadoAvance")}</td>
					
						<td>${fieldValue(bean: permisoInstance, field: "tipo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${permisoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
