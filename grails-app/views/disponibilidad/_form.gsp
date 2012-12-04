<%@ page import="org.trapo.Disponibilidad" %>



<div class="fieldcontain ${hasErrors(bean: disponibilidadInstance, field: 'solicitante', 'error')} required">
	<label for="solicitante">
		<g:message code="disponibilidad.solicitante.label" default="Solicitante" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solicitante" name="solicitante.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${disponibilidadInstance?.solicitante?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: disponibilidadInstance, field: 'autorizador', 'error')} required">
	<label for="autorizador">
		<g:message code="disponibilidad.autorizador.label" default="Autorizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autorizador" name="autorizador.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${disponibilidadInstance?.autorizador?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: disponibilidadInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="disponibilidad.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${disponibilidadInstance?.fechaCreacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: disponibilidadInstance, field: 'estaCompleto', 'error')} ">
	<label for="estaCompleto">
		<g:message code="disponibilidad.estaCompleto.label" default="Esta Completo" />
		
	</label>
	<g:checkBox name="estaCompleto" value="${disponibilidadInstance?.estaCompleto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: disponibilidadInstance, field: 'estadoAvance', 'error')} required">
	<label for="estadoAvance">
		<g:message code="disponibilidad.estadoAvance.label" default="Estado Avance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estadoAvance" type="number" value="${disponibilidadInstance.estadoAvance}" required=""/>
</div>

