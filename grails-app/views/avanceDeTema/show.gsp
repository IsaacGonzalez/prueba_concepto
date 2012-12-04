
<%@ page import="org.trapo.AvanceDeTema" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'avanceDeTema.label', default: 'AvanceDeTema')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-avanceDeTema" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-avanceDeTema" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list avanceDeTema">
			
				<g:if test="${avanceDeTemaInstance?.tema}">
				<li class="fieldcontain">
					<span id="tema-label" class="property-label"><g:message code="avanceDeTema.tema.label" default="Tema" /></span>
					
						<span class="property-value" aria-labelledby="tema-label"><g:fieldValue bean="${avanceDeTemaInstance}" field="tema"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avanceDeTemaInstance?.porcentajeDeAvance}">
				<li class="fieldcontain">
					<span id="porcentajeDeAvance-label" class="property-label"><g:message code="avanceDeTema.porcentajeDeAvance.label" default="Porcentaje De Avance" /></span>
					
						<span class="property-value" aria-labelledby="porcentajeDeAvance-label"><g:fieldValue bean="${avanceDeTemaInstance}" field="porcentajeDeAvance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avanceDeTemaInstance?.observaciones}">
				<li class="fieldcontain">
					<span id="observaciones-label" class="property-label"><g:message code="avanceDeTema.observaciones.label" default="Observaciones" /></span>
					
						<span class="property-value" aria-labelledby="observaciones-label"><g:fieldValue bean="${avanceDeTemaInstance}" field="observaciones"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${avanceDeTemaInstance?.id}" />
					<g:link class="edit" action="edit" id="${avanceDeTemaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
