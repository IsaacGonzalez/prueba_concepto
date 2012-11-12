
<%@ page import="org.trapo.Reporte" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reporte.label', default: 'Reporte')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-reporte" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-reporte" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list reporte">
			
				<g:if test="${reporteInstance?.solicitante}">
				<li class="fieldcontain">
					<span id="solicitante-label" class="property-label"><g:message code="reporte.solicitante.label" default="Solicitante" /></span>
					
						<span class="property-value" aria-labelledby="solicitante-label"><g:link controller="usuario" action="show" id="${reporteInstance?.solicitante?.id}">${reporteInstance?.solicitante?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reporteInstance?.autorizador}">
				<li class="fieldcontain">
					<span id="autorizador-label" class="property-label"><g:message code="reporte.autorizador.label" default="Autorizador" /></span>
					
						<span class="property-value" aria-labelledby="autorizador-label"><g:link controller="usuario" action="show" id="${reporteInstance?.autorizador?.id}">${reporteInstance?.autorizador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reporteInstance?.fechaCreacion}">
				<li class="fieldcontain">
					<span id="fechaCreacion-label" class="property-label"><g:message code="reporte.fechaCreacion.label" default="Fecha Creacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${reporteInstance?.fechaCreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reporteInstance?.estaCompleto}">
				<li class="fieldcontain">
					<span id="estaCompleto-label" class="property-label"><g:message code="reporte.estaCompleto.label" default="Esta Completo" /></span>
					
						<span class="property-value" aria-labelledby="estaCompleto-label"><g:formatBoolean boolean="${reporteInstance?.estaCompleto}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reporteInstance?.estadoAvance}">
				<li class="fieldcontain">
					<span id="estadoAvance-label" class="property-label"><g:message code="reporte.estadoAvance.label" default="Estado Avance" /></span>
					
						<span class="property-value" aria-labelledby="estadoAvance-label"><g:fieldValue bean="${reporteInstance}" field="estadoAvance"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${reporteInstance?.id}" />
					<g:link class="edit" action="edit" id="${reporteInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
