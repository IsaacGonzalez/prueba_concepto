
<%@ page import="org.trapo.UnidadAprendizaje" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unidadAprendizaje.label', default: 'UnidadAprendizaje')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-unidadAprendizaje" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-unidadAprendizaje" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list unidadAprendizaje">
			
				<g:if test="${unidadAprendizajeInstance?.clave}">
				<li class="fieldcontain">
					<span id="clave-label" class="property-label"><g:message code="unidadAprendizaje.clave.label" default="Clave" /></span>
					
						<span class="property-value" aria-labelledby="clave-label"><g:fieldValue bean="${unidadAprendizajeInstance}" field="clave"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unidadAprendizajeInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="unidadAprendizaje.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${unidadAprendizajeInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unidadAprendizajeInstance?.planEducativo}">
				<li class="fieldcontain">
					<span id="planEducativo-label" class="property-label"><g:message code="unidadAprendizaje.planEducativo.label" default="Plan Educativo" /></span>
					
						<span class="property-value" aria-labelledby="planEducativo-label"><g:link controller="planEducativo" action="show" id="${unidadAprendizajeInstance?.planEducativo?.id}">${unidadAprendizajeInstance?.planEducativo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${unidadAprendizajeInstance?.id}" />
					<g:link class="edit" action="edit" id="${unidadAprendizajeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
