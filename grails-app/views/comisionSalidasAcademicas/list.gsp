
<%@ page import="org.trapo.ComisionSalidasAcademicas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comisionSalidasAcademicas.label', default: 'ComisionSalidasAcademicas')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-comisionSalidasAcademicas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-comisionSalidasAcademicas" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="comisionSalidasAcademicas.solicitante.label" default="Solicitante" /></th>
					
						<th><g:message code="comisionSalidasAcademicas.autorizador.label" default="Autorizador" /></th>
					
						<g:sortableColumn property="fechaCreacion" title="${message(code: 'comisionSalidasAcademicas.fechaCreacion.label', default: 'Fecha Creacion')}" />
					
						<g:sortableColumn property="estaCompleto" title="${message(code: 'comisionSalidasAcademicas.estaCompleto.label', default: 'Esta Completo')}" />
					
						<g:sortableColumn property="estadoAvance" title="${message(code: 'comisionSalidasAcademicas.estadoAvance.label', default: 'Estado Avance')}" />
					
						<g:sortableColumn property="lugarDeEvento" title="${message(code: 'comisionSalidasAcademicas.lugarDeEvento.label', default: 'Lugar De Evento')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${comisionSalidasAcademicasInstanceList}" status="i" var="comisionSalidasAcademicasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${comisionSalidasAcademicasInstance.id}">${fieldValue(bean: comisionSalidasAcademicasInstance, field: "solicitante")}</g:link></td>
					
						<td>${fieldValue(bean: comisionSalidasAcademicasInstance, field: "autorizador")}</td>
					
						<td><g:formatDate date="${comisionSalidasAcademicasInstance.fechaCreacion}" /></td>
					
						<td><g:formatBoolean boolean="${comisionSalidasAcademicasInstance.estaCompleto}" /></td>
					
						<td>${fieldValue(bean: comisionSalidasAcademicasInstance, field: "estadoAvance")}</td>
					
						<td>${fieldValue(bean: comisionSalidasAcademicasInstance, field: "lugarDeEvento")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${comisionSalidasAcademicasInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
