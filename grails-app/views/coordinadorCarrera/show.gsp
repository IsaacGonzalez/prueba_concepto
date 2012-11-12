
<%@ page import="org.trapo.CoordinadorCarrera" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'coordinadorCarrera.label', default: 'CoordinadorCarrera')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-coordinadorCarrera" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-coordinadorCarrera" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list coordinadorCarrera">
			
				<g:if test="${coordinadorCarreraInstance?.numeroEmpleado}">
				<li class="fieldcontain">
					<span id="numeroEmpleado-label" class="property-label"><g:message code="coordinadorCarrera.numeroEmpleado.label" default="Numero Empleado" /></span>
					
						<span class="property-value" aria-labelledby="numeroEmpleado-label"><g:fieldValue bean="${coordinadorCarreraInstance}" field="numeroEmpleado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${coordinadorCarreraInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="coordinadorCarrera.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${coordinadorCarreraInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${coordinadorCarreraInstance?.apellidos}">
				<li class="fieldcontain">
					<span id="apellidos-label" class="property-label"><g:message code="coordinadorCarrera.apellidos.label" default="Apellidos" /></span>
					
						<span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${coordinadorCarreraInstance}" field="apellidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${coordinadorCarreraInstance?.supervisor}">
				<li class="fieldcontain">
					<span id="supervisor-label" class="property-label"><g:message code="coordinadorCarrera.supervisor.label" default="Supervisor" /></span>
					
						<span class="property-value" aria-labelledby="supervisor-label"><g:link controller="usuario" action="show" id="${coordinadorCarreraInstance?.supervisor?.id}">${coordinadorCarreraInstance?.supervisor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${coordinadorCarreraInstance?.contrasena}">
				<li class="fieldcontain">
					<span id="contrasena-label" class="property-label"><g:message code="coordinadorCarrera.contrasena.label" default="Contrasena" /></span>
					
						<span class="property-value" aria-labelledby="contrasena-label"><g:fieldValue bean="${coordinadorCarreraInstance}" field="contrasena"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${coordinadorCarreraInstance?.listaUnidadesAprendizaje}">
				<li class="fieldcontain">
					<span id="listaUnidadesAprendizaje-label" class="property-label"><g:message code="coordinadorCarrera.listaUnidadesAprendizaje.label" default="Lista Unidades Aprendizaje" /></span>
					
						<g:each in="${coordinadorCarreraInstance.listaUnidadesAprendizaje}" var="l">
						<span class="property-value" aria-labelledby="listaUnidadesAprendizaje-label"><g:link controller="unidadAprendizaje" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${coordinadorCarreraInstance?.id}" />
					<g:link class="edit" action="edit" id="${coordinadorCarreraInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
