
<%@ page import="org.trapo.AvanceDeTema" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'avanceDeTema.label', default: 'AvanceDeTema')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-avanceDeTema" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-avanceDeTema" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="tema" title="${message(code: 'avanceDeTema.tema.label', default: 'Tema')}" />
					
						<g:sortableColumn property="porcentajeDeAvance" title="${message(code: 'avanceDeTema.porcentajeDeAvance.label', default: 'Porcentaje De Avance')}" />
					
						<g:sortableColumn property="observaciones" title="${message(code: 'avanceDeTema.observaciones.label', default: 'Observaciones')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${avanceDeTemaInstanceList}" status="i" var="avanceDeTemaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${avanceDeTemaInstance.id}">${fieldValue(bean: avanceDeTemaInstance, field: "tema")}</g:link></td>
					
						<td>${fieldValue(bean: avanceDeTemaInstance, field: "porcentajeDeAvance")}</td>
					
						<td>${fieldValue(bean: avanceDeTemaInstance, field: "observaciones")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${avanceDeTemaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
