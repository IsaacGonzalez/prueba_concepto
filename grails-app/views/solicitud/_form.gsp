<%@ page import="org.trapo.Solicitud" %>



<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'solicitante', 'error')} required">
	<label for="solicitante">
		<g:message code="solicitud.solicitante.label" default="Solicitante" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solicitante" name="solicitante.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${solicitudInstance?.solicitante?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'autorizador', 'error')} required">
	<label for="autorizador">
		<g:message code="solicitud.autorizador.label" default="Autorizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autorizador" name="autorizador.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${solicitudInstance?.autorizador?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="solicitud.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${solicitudInstance?.fechaCreacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'estaCompleto', 'error')} ">
	<label for="estaCompleto">
		<g:message code="solicitud.estaCompleto.label" default="Esta Completo" />
		
	</label>
	<g:checkBox name="estaCompleto" value="${solicitudInstance?.estaCompleto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: solicitudInstance, field: 'estadoAvance', 'error')} required">
	<label for="estadoAvance">
		<g:message code="solicitud.estadoAvance.label" default="Estado Avance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estadoAvance" type="number" value="${solicitudInstance.estadoAvance}" required=""/>
</div>

