
<%@ page import="org.trapo.Notificacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'notificacion.label', default: 'Notificacion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-notificacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-notificacion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list notificacion">
			
				<g:if test="${notificacionInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="notificacion.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${notificacionInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${notificacionInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="notificacion.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${notificacionInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${notificacionInstance?.planificador}">
				<li class="fieldcontain">
					<span id="planificador-label" class="property-label"><g:message code="notificacion.planificador.label" default="Planificador" /></span>
					
						<span class="property-value" aria-labelledby="planificador-label"><g:link controller="administrativo" action="show" id="${notificacionInstance?.planificador?.id}">${notificacionInstance?.planificador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${notificacionInstance?.periodoInicial}">
				<li class="fieldcontain">
					<span id="periodoInicial-label" class="property-label"><g:message code="notificacion.periodoInicial.label" default="Periodo Inicial" /></span>
					
						<span class="property-value" aria-labelledby="periodoInicial-label"><g:formatDate date="${notificacionInstance?.periodoInicial}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${notificacionInstance?.periodoFinal}">
				<li class="fieldcontain">
					<span id="periodoFinal-label" class="property-label"><g:message code="notificacion.periodoFinal.label" default="Periodo Final" /></span>
					
						<span class="property-value" aria-labelledby="periodoFinal-label"><g:formatDate date="${notificacionInstance?.periodoFinal}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${notificacionInstance?.id}" />
					<g:link class="edit" action="edit" id="${notificacionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
