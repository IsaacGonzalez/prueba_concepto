
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
			
				<g:if test="${comisionSalidasAcademicasInstance?.lugarDeEvento}">
				<li class="fieldcontain">
					<span id="lugarDeEvento-label" class="property-label"><g:message code="comisionSalidasAcademicas.lugarDeEvento.label" default="Lugar De Evento" /></span>
					
						<span class="property-value" aria-labelledby="lugarDeEvento-label"><g:fieldValue bean="${comisionSalidasAcademicasInstance}" field="lugarDeEvento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.ciudad}">
				<li class="fieldcontain">
					<span id="ciudad-label" class="property-label"><g:message code="comisionSalidasAcademicas.ciudad.label" default="Ciudad" /></span>
					
						<span class="property-value" aria-labelledby="ciudad-label"><g:fieldValue bean="${comisionSalidasAcademicasInstance}" field="ciudad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.incluirEmpleadoEnComision}">
				<li class="fieldcontain">
					<span id="incluirEmpleadoEnComision-label" class="property-label"><g:message code="comisionSalidasAcademicas.incluirEmpleadoEnComision.label" default="Incluir Empleado En Comision" /></span>
					
						<span class="property-value" aria-labelledby="incluirEmpleadoEnComision-label"><g:formatBoolean boolean="${comisionSalidasAcademicasInstance?.incluirEmpleadoEnComision}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.motivo}">
				<li class="fieldcontain">
					<span id="motivo-label" class="property-label"><g:message code="comisionSalidasAcademicas.motivo.label" default="Motivo" /></span>
					
						<span class="property-value" aria-labelledby="motivo-label"><g:fieldValue bean="${comisionSalidasAcademicasInstance}" field="motivo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.asignaturaApoyada}">
				<li class="fieldcontain">
					<span id="asignaturaApoyada-label" class="property-label"><g:message code="comisionSalidasAcademicas.asignaturaApoyada.label" default="Asignatura Apoyada" /></span>
					
						<span class="property-value" aria-labelledby="asignaturaApoyada-label"><g:fieldValue bean="${comisionSalidasAcademicasInstance}" field="asignaturaApoyada"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.requiereCartaPresentacion}">
				<li class="fieldcontain">
					<span id="requiereCartaPresentacion-label" class="property-label"><g:message code="comisionSalidasAcademicas.requiereCartaPresentacion.label" default="Requiere Carta Presentacion" /></span>
					
						<span class="property-value" aria-labelledby="requiereCartaPresentacion-label"><g:formatBoolean boolean="${comisionSalidasAcademicasInstance?.requiereCartaPresentacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.del}">
				<li class="fieldcontain">
					<span id="del-label" class="property-label"><g:message code="comisionSalidasAcademicas.del.label" default="Del" /></span>
					
						<span class="property-value" aria-labelledby="del-label"><g:formatDate date="${comisionSalidasAcademicasInstance?.del}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.hasta}">
				<li class="fieldcontain">
					<span id="hasta-label" class="property-label"><g:message code="comisionSalidasAcademicas.hasta.label" default="Hasta" /></span>
					
						<span class="property-value" aria-labelledby="hasta-label"><g:formatDate date="${comisionSalidasAcademicasInstance?.hasta}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.observacionesAdicionales}">
				<li class="fieldcontain">
					<span id="observacionesAdicionales-label" class="property-label"><g:message code="comisionSalidasAcademicas.observacionesAdicionales.label" default="Observaciones Adicionales" /></span>
					
						<span class="property-value" aria-labelledby="observacionesAdicionales-label"><g:fieldValue bean="${comisionSalidasAcademicasInstance}" field="observacionesAdicionales"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.tipoDeTransporte}">
				<li class="fieldcontain">
					<span id="tipoDeTransporte-label" class="property-label"><g:message code="comisionSalidasAcademicas.tipoDeTransporte.label" default="Tipo De Transporte" /></span>
					
						<span class="property-value" aria-labelledby="tipoDeTransporte-label"><g:fieldValue bean="${comisionSalidasAcademicasInstance}" field="tipoDeTransporte"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.matricula}">
				<li class="fieldcontain">
					<span id="matricula-label" class="property-label"><g:message code="comisionSalidasAcademicas.matricula.label" default="Matricula" /></span>
					
						<span class="property-value" aria-labelledby="matricula-label"><g:fieldValue bean="${comisionSalidasAcademicasInstance}" field="matricula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="comisionSalidasAcademicas.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${comisionSalidasAcademicasInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.gasolina}">
				<li class="fieldcontain">
					<span id="gasolina-label" class="property-label"><g:message code="comisionSalidasAcademicas.gasolina.label" default="Gasolina" /></span>
					
						<span class="property-value" aria-labelledby="gasolina-label"><g:formatBoolean boolean="${comisionSalidasAcademicasInstance?.gasolina}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.hospedaje}">
				<li class="fieldcontain">
					<span id="hospedaje-label" class="property-label"><g:message code="comisionSalidasAcademicas.hospedaje.label" default="Hospedaje" /></span>
					
						<span class="property-value" aria-labelledby="hospedaje-label"><g:formatBoolean boolean="${comisionSalidasAcademicasInstance?.hospedaje}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.peajes}">
				<li class="fieldcontain">
					<span id="peajes-label" class="property-label"><g:message code="comisionSalidasAcademicas.peajes.label" default="Peajes" /></span>
					
						<span class="property-value" aria-labelledby="peajes-label"><g:formatBoolean boolean="${comisionSalidasAcademicasInstance?.peajes}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${comisionSalidasAcademicasInstance?.viaticos}">
				<li class="fieldcontain">
					<span id="viaticos-label" class="property-label"><g:message code="comisionSalidasAcademicas.viaticos.label" default="Viaticos" /></span>
					
						<span class="property-value" aria-labelledby="viaticos-label"><g:formatBoolean boolean="${comisionSalidasAcademicasInstance?.viaticos}" /></span>
					
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
