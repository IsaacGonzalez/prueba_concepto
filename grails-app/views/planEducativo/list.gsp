
<%@ page import="org.trapo.PlanEducativo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'planEducativo.label', default: 'PlanEducativo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-planEducativo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-planEducativo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'planEducativo.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="planEstudios" title="${message(code: 'planEducativo.planEstudios.label', default: 'Plan Estudios')}" />
					
						<th><g:message code="planEducativo.coordinador.label" default="Coordinador" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${planEducativoInstanceList}" status="i" var="planEducativoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${planEducativoInstance.id}">${fieldValue(bean: planEducativoInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: planEducativoInstance, field: "planEstudios")}</td>
					
						<td>${fieldValue(bean: planEducativoInstance, field: "coordinador")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${planEducativoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
