<%@ page import="org.trapo.ActividadesPtcPmt" %>



<div class="fieldcontain ${hasErrors(bean: actividadesPtcPmtInstance, field: 'solicitante', 'error')} required">
	<label for="solicitante">
		<g:message code="actividadesPtcPmt.solicitante.label" default="Solicitante" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solicitante" name="solicitante.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${actividadesPtcPmtInstance?.solicitante?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: actividadesPtcPmtInstance, field: 'autorizador', 'error')} required">
	<label for="autorizador">
		<g:message code="actividadesPtcPmt.autorizador.label" default="Autorizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autorizador" name="autorizador.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${actividadesPtcPmtInstance?.autorizador?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: actividadesPtcPmtInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="actividadesPtcPmt.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${actividadesPtcPmtInstance?.fechaCreacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: actividadesPtcPmtInstance, field: 'estaCompleto', 'error')} ">
	<label for="estaCompleto">
		<g:message code="actividadesPtcPmt.estaCompleto.label" default="Esta Completo" />
		
	</label>
	<g:checkBox name="estaCompleto" value="${actividadesPtcPmtInstance?.estaCompleto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: actividadesPtcPmtInstance, field: 'estadoAvance', 'error')} required">
	<label for="estadoAvance">
		<g:message code="actividadesPtcPmt.estadoAvance.label" default="Estado Avance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estadoAvance" type="number" value="${actividadesPtcPmtInstance.estadoAvance}" required=""/>
</div>

