
<%@ page import="org.trapo.PlanEducativo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'planEducativo.label', default: 'PlanEducativo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-planEducativo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-planEducativo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list planEducativo">
			
				<g:if test="${planEducativoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="planEducativo.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${planEducativoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planEducativoInstance?.planEstudios}">
				<li class="fieldcontain">
					<span id="planEstudios-label" class="property-label"><g:message code="planEducativo.planEstudios.label" default="Plan Estudios" /></span>
					
						<span class="property-value" aria-labelledby="planEstudios-label"><g:fieldValue bean="${planEducativoInstance}" field="planEstudios"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planEducativoInstance?.coordinador}">
				<li class="fieldcontain">
					<span id="coordinador-label" class="property-label"><g:message code="planEducativo.coordinador.label" default="Coordinador" /></span>
					
						<span class="property-value" aria-labelledby="coordinador-label"><g:link controller="coordinadorCarrera" action="show" id="${planEducativoInstance?.coordinador?.id}">${planEducativoInstance?.coordinador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${planEducativoInstance?.docentes}">
				<li class="fieldcontain">
					<span id="docentes-label" class="property-label"><g:message code="planEducativo.docentes.label" default="Docentes" /></span>
					
						<g:each in="${planEducativoInstance.docentes}" var="d">
						<span class="property-value" aria-labelledby="docentes-label"><g:link controller="docente" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${planEducativoInstance?.listaUnidadesAprendizaje}">
				<li class="fieldcontain">
					<span id="listaUnidadesAprendizaje-label" class="property-label"><g:message code="planEducativo.listaUnidadesAprendizaje.label" default="Lista Unidades Aprendizaje" /></span>
					
						<g:each in="${planEducativoInstance.listaUnidadesAprendizaje}" var="l">
						<span class="property-value" aria-labelledby="listaUnidadesAprendizaje-label"><g:link controller="unidadAprendizaje" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${planEducativoInstance?.id}" />
					<g:link class="edit" action="edit" id="${planEducativoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
