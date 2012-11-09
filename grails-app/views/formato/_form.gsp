<%@ page import="org.trapo.Formato" %>



<div class="fieldcontain ${hasErrors(bean: formatoInstance, field: 'solicitante', 'error')} required">
	<label for="solicitante">
		<g:message code="formato.solicitante.label" default="Solicitante" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solicitante" name="solicitante.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${formatoInstance?.solicitante?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formatoInstance, field: 'autorizador', 'error')} required">
	<label for="autorizador">
		<g:message code="formato.autorizador.label" default="Autorizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autorizador" name="autorizador.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${formatoInstance?.autorizador?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: formatoInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="formato.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${formatoInstance?.fechaCreacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: formatoInstance, field: 'estaCompleto', 'error')} ">
	<label for="estaCompleto">
		<g:message code="formato.estaCompleto.label" default="Esta Completo" />
		
	</label>
	<g:checkBox name="estaCompleto" value="${formatoInstance?.estaCompleto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: formatoInstance, field: 'estadoAvance', 'error')} required">
	<label for="estadoAvance">
		<g:message code="formato.estadoAvance.label" default="Estado Avance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estadoAvance" type="number" value="${formatoInstance.estadoAvance}" required=""/>
</div>

