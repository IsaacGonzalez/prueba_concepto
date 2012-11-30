
<%@ page import="org.trapo.Permiso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'permiso.label', default: 'Permiso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-permiso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-permiso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list permiso">
			
				<g:if test="${permisoInstance?.solicitante}">
				<li class="fieldcontain">
					<span id="solicitante-label" class="property-label"><g:message code="permiso.solicitante.label" default="Solicitante" /></span>
					
						<span class="property-value" aria-labelledby="solicitante-label"><g:link controller="usuario" action="show" id="${permisoInstance?.solicitante?.id}">${permisoInstance?.solicitante?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${permisoInstance?.autorizador}">
				<li class="fieldcontain">
					<span id="autorizador-label" class="property-label"><g:message code="permiso.autorizador.label" default="Autorizador" /></span>
					
						<span class="property-value" aria-labelledby="autorizador-label"><g:link controller="usuario" action="show" id="${permisoInstance?.autorizador?.id}">${permisoInstance?.autorizador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${permisoInstance?.fechaCreacion}">
				<li class="fieldcontain">
					<span id="fechaCreacion-label" class="property-label"><g:message code="permiso.fechaCreacion.label" default="Fecha Creacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${permisoInstance?.fechaCreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${permisoInstance?.estaCompleto}">
				<li class="fieldcontain">
					<span id="estaCompleto-label" class="property-label"><g:message code="permiso.estaCompleto.label" default="Esta Completo" /></span>
					
						<span class="property-value" aria-labelledby="estaCompleto-label"><g:formatBoolean boolean="${permisoInstance?.estaCompleto}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${permisoInstance?.estadoAvance}">
				<li class="fieldcontain">
					<span id="estadoAvance-label" class="property-label"><g:message code="permiso.estadoAvance.label" default="Estado Avance" /></span>
					
						<span class="property-value" aria-labelledby="estadoAvance-label"><g:fieldValue bean="${permisoInstance}" field="estadoAvance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${permisoInstance?.tipo}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="permiso.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:fieldValue bean="${permisoInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${permisoInstance?.del}">
				<li class="fieldcontain">
					<span id="del-label" class="property-label"><g:message code="permiso.del.label" default="Del" /></span>
					
						<span class="property-value" aria-labelledby="del-label"><g:formatDate date="${permisoInstance?.del}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${permisoInstance?.al}">
				<li class="fieldcontain">
					<span id="al-label" class="property-label"><g:message code="permiso.al.label" default="Al" /></span>
					
						<span class="property-value" aria-labelledby="al-label"><g:formatDate date="${permisoInstance?.al}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${permisoInstance?.motivo}">
				<li class="fieldcontain">
					<span id="motivo-label" class="property-label"><g:message code="permiso.motivo.label" default="Motivo" /></span>
					
						<span class="property-value" aria-labelledby="motivo-label"><g:fieldValue bean="${permisoInstance}" field="motivo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${permisoInstance?.id}" />
					<g:link class="edit" action="edit" id="${permisoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
