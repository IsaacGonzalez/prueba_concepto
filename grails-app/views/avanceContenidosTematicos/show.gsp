
<%@ page import="org.trapo.AvanceContenidosTematicos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'avanceContenidosTematicos.label', default: 'AvanceContenidosTematicos')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-avanceContenidosTematicos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-avanceContenidosTematicos" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list avanceContenidosTematicos">
			
				<g:if test="${avanceContenidosTematicosInstance?.solicitante}">
				<li class="fieldcontain">
					<span id="solicitante-label" class="property-label"><g:message code="avanceContenidosTematicos.solicitante.label" default="Solicitante" /></span>
					
						<span class="property-value" aria-labelledby="solicitante-label"><g:link controller="usuario" action="show" id="${avanceContenidosTematicosInstance?.solicitante?.id}">${avanceContenidosTematicosInstance?.solicitante?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avanceContenidosTematicosInstance?.autorizador}">
				<li class="fieldcontain">
					<span id="autorizador-label" class="property-label"><g:message code="avanceContenidosTematicos.autorizador.label" default="Autorizador" /></span>
					
						<span class="property-value" aria-labelledby="autorizador-label"><g:link controller="usuario" action="show" id="${avanceContenidosTematicosInstance?.autorizador?.id}">${avanceContenidosTematicosInstance?.autorizador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avanceContenidosTematicosInstance?.fechaCreacion}">
				<li class="fieldcontain">
					<span id="fechaCreacion-label" class="property-label"><g:message code="avanceContenidosTematicos.fechaCreacion.label" default="Fecha Creacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${avanceContenidosTematicosInstance?.fechaCreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${avanceContenidosTematicosInstance?.estaCompleto}">
				<li class="fieldcontain">
					<span id="estaCompleto-label" class="property-label"><g:message code="avanceContenidosTematicos.estaCompleto.label" default="Esta Completo" /></span>
					
						<span class="property-value" aria-labelledby="estaCompleto-label"><g:formatBoolean boolean="${avanceContenidosTematicosInstance?.estaCompleto}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${avanceContenidosTematicosInstance?.estadoAvance}">
				<li class="fieldcontain">
					<span id="estadoAvance-label" class="property-label"><g:message code="avanceContenidosTematicos.estadoAvance.label" default="Estado Avance" /></span>
					
						<span class="property-value" aria-labelledby="estadoAvance-label"><g:fieldValue bean="${avanceContenidosTematicosInstance}" field="estadoAvance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avanceContenidosTematicosInstance?.materia}">
				<li class="fieldcontain">
					<span id="materia-label" class="property-label"><g:message code="avanceContenidosTematicos.materia.label" default="Materia" /></span>
					
						<span class="property-value" aria-labelledby="materia-label"><g:link controller="unidadAprendizaje" action="show" id="${avanceContenidosTematicosInstance?.materia?.id}">${avanceContenidosTematicosInstance?.materia?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avanceContenidosTematicosInstance?.maestro}">
				<li class="fieldcontain">
					<span id="maestro-label" class="property-label"><g:message code="avanceContenidosTematicos.maestro.label" default="Maestro" /></span>
					
						<span class="property-value" aria-labelledby="maestro-label"><g:link controller="docente" action="show" id="${avanceContenidosTematicosInstance?.maestro?.id}">${avanceContenidosTematicosInstance?.maestro?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avanceContenidosTematicosInstance?.grupo}">
				<li class="fieldcontain">
					<span id="grupo-label" class="property-label"><g:message code="avanceContenidosTematicos.grupo.label" default="Grupo" /></span>
					
						<span class="property-value" aria-labelledby="grupo-label"><g:fieldValue bean="${avanceContenidosTematicosInstance}" field="grupo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avanceContenidosTematicosInstance?.cicloEscolar}">
				<li class="fieldcontain">
					<span id="cicloEscolar-label" class="property-label"><g:message code="avanceContenidosTematicos.cicloEscolar.label" default="Ciclo Escolar" /></span>
					
						<span class="property-value" aria-labelledby="cicloEscolar-label"><g:fieldValue bean="${avanceContenidosTematicosInstance}" field="cicloEscolar"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avanceContenidosTematicosInstance?.avanceGlobal}">
				<li class="fieldcontain">
					<span id="avanceGlobal-label" class="property-label"><g:message code="avanceContenidosTematicos.avanceGlobal.label" default="Avance Global" /></span>
					
						<span class="property-value" aria-labelledby="avanceGlobal-label"><g:fieldValue bean="${avanceContenidosTematicosInstance}" field="avanceGlobal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avanceContenidosTematicosInstance?.avanceDeTema}">
				<li class="fieldcontain">
					<span id="avanceDeTema-label" class="property-label"><g:message code="avanceContenidosTematicos.avanceDeTema.label" default="Avance De Tema" /></span>
					
						<g:each in="${avanceContenidosTematicosInstance.avanceDeTema}" var="a">
						<span class="property-value" aria-labelledby="avanceDeTema-label"><g:link controller="avanceDeTema" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${avanceContenidosTematicosInstance?.id}" />
					<g:link class="edit" action="edit" id="${avanceContenidosTematicosInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
