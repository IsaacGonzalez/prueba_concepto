<%@ page import="org.trapo.Reporte" %>



<div class="fieldcontain ${hasErrors(bean: reporteInstance, field: 'solicitante', 'error')} required">
	<label for="solicitante">
		<g:message code="reporte.solicitante.label" default="Solicitante" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solicitante" name="solicitante.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${reporteInstance?.solicitante?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reporteInstance, field: 'autorizador', 'error')} required">
	<label for="autorizador">
		<g:message code="reporte.autorizador.label" default="Autorizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autorizador" name="autorizador.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${reporteInstance?.autorizador?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reporteInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="reporte.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${reporteInstance?.fechaCreacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: reporteInstance, field: 'estaCompleto', 'error')} ">
	<label for="estaCompleto">
		<g:message code="reporte.estaCompleto.label" default="Esta Completo" />
		
	</label>
	<g:checkBox name="estaCompleto" value="${reporteInstance?.estaCompleto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: reporteInstance, field: 'estadoAvance', 'error')} required">
	<label for="estadoAvance">
		<g:message code="reporte.estadoAvance.label" default="Estado Avance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estadoAvance" type="number" value="${reporteInstance.estadoAvance}" required=""/>
</div>

