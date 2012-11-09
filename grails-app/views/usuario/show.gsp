
<%@ page import="org.trapo.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuario">
			
				<g:if test="${usuarioInstance?.numeroEmpleado}">
				<li class="fieldcontain">
					<span id="numeroEmpleado-label" class="property-label"><g:message code="usuario.numeroEmpleado.label" default="Numero Empleado" /></span>
					
						<span class="property-value" aria-labelledby="numeroEmpleado-label"><g:fieldValue bean="${usuarioInstance}" field="numeroEmpleado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="usuario.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${usuarioInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.apellidos}">
				<li class="fieldcontain">
					<span id="apellidos-label" class="property-label"><g:message code="usuario.apellidos.label" default="Apellidos" /></span>
					
						<span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${usuarioInstance}" field="apellidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.supervisor}">
				<li class="fieldcontain">
					<span id="supervisor-label" class="property-label"><g:message code="usuario.supervisor.label" default="Supervisor" /></span>
					
						<span class="property-value" aria-labelledby="supervisor-label"><g:link controller="usuario" action="show" id="${usuarioInstance?.supervisor?.id}">${usuarioInstance?.supervisor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.contrasena}">
				<li class="fieldcontain">
					<span id="contrasena-label" class="property-label"><g:message code="usuario.contrasena.label" default="Contrasena" /></span>
					
						<span class="property-value" aria-labelledby="contrasena-label"><g:fieldValue bean="${usuarioInstance}" field="contrasena"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${usuarioInstance?.id}" />
					<g:link class="edit" action="edit" id="${usuarioInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
