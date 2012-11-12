
<%@ page import="org.trapo.ExamenesOrdExtraord" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'examenesOrdExtraord.label', default: 'ExamenesOrdExtraord')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-examenesOrdExtraord" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-examenesOrdExtraord" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="examenesOrdExtraord.solicitante.label" default="Solicitante" /></th>
					
						<th><g:message code="examenesOrdExtraord.autorizador.label" default="Autorizador" /></th>
					
						<g:sortableColumn property="fechaCreacion" title="${message(code: 'examenesOrdExtraord.fechaCreacion.label', default: 'Fecha Creacion')}" />
					
						<g:sortableColumn property="estaCompleto" title="${message(code: 'examenesOrdExtraord.estaCompleto.label', default: 'Esta Completo')}" />
					
						<g:sortableColumn property="estadoAvance" title="${message(code: 'examenesOrdExtraord.estadoAvance.label', default: 'Estado Avance')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${examenesOrdExtraordInstanceList}" status="i" var="examenesOrdExtraordInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${examenesOrdExtraordInstance.id}">${fieldValue(bean: examenesOrdExtraordInstance, field: "solicitante")}</g:link></td>
					
						<td>${fieldValue(bean: examenesOrdExtraordInstance, field: "autorizador")}</td>
					
						<td><g:formatDate date="${examenesOrdExtraordInstance.fechaCreacion}" /></td>
					
						<td><g:formatBoolean boolean="${examenesOrdExtraordInstance.estaCompleto}" /></td>
					
						<td>${fieldValue(bean: examenesOrdExtraordInstance, field: "estadoAvance")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${examenesOrdExtraordInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
