
<%@ page import="org.trapo.ComisionSalidasAcademicas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comisionSalidasAcademicas.label', default: 'ComisionSalidasAcademicas')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-comisionSalidasAcademicas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-comisionSalidasAcademicas" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list comisionSalidasAcademicas">
			
				<g:if test="${comisionSalidasAcademicasInstance?.solicitante}">
				<li class="fieldcontain">
					<span id="solicitante-label" class="property-label"><g:message code="comisionSalidasAcademicas.solicitante.label" default="Solicitante" /></span>
					
						<span class="property-value" aria-labelledby="solicitante-label"><g:link controller="usuario" action="show" id="${comisionSalidasAcademicasInstance?.solicitante?.id}">${comisionSalidasAcademicasInstance?.solicitante?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.autorizador}">
				<li class="fieldcontain">
					<span id="autorizador-label" class="property-label"><g:message code="comisionSalidasAcademicas.autorizador.label" default="Autorizador" /></span>
					
						<span class="property-value" aria-labelledby="autorizador-label"><g:link controller="usuario" action="show" id="${comisionSalidasAcademicasInstance?.autorizador?.id}">${comisionSalidasAcademicasInstance?.autorizador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.fechaCreacion}">
				<li class="fieldcontain">
					<span id="fechaCreacion-label" class="property-label"><g:message code="comisionSalidasAcademicas.fechaCreacion.label" default="Fecha Creacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${comisionSalidasAcademicasInstance?.fechaCreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.estaCompleto}">
				<li class="fieldcontain">
					<span id="estaCompleto-label" class="property-label"><g:message code="comisionSalidasAcademicas.estaCompleto.label" default="Esta Completo" /></span>
					
						<span class="property-value" aria-labelledby="estaCompleto-label"><g:formatBoolean boolean="${comisionSalidasAcademicasInstance?.estaCompleto}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.estadoAvance}">
				<li class="fieldcontain">
					<span id="estadoAvance-label" class="property-label"><g:message code="comisionSalidasAcademicas.estadoAvance.label" default="Estado Avance" /></span>
					
						<span class="property-value" aria-labelledby="estadoAvance-label"><g:fieldValue bean="${comisionSalidasAcademicasInstance}" field="estadoAvance"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${comisionSalidasAcademicasInstance?.id}" />
					<g:link class="edit" action="edit" id="${comisionSalidasAcademicasInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
