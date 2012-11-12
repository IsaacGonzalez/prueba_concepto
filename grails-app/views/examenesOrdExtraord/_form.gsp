<%@ page import="org.trapo.ExamenesOrdExtraord" %>



<div class="fieldcontain ${hasErrors(bean: examenesOrdExtraordInstance, field: 'solicitante', 'error')} required">
	<label for="solicitante">
		<g:message code="examenesOrdExtraord.solicitante.label" default="Solicitante" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solicitante" name="solicitante.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${examenesOrdExtraordInstance?.solicitante?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: examenesOrdExtraordInstance, field: 'autorizador', 'error')} required">
	<label for="autorizador">
		<g:message code="examenesOrdExtraord.autorizador.label" default="Autorizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autorizador" name="autorizador.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${examenesOrdExtraordInstance?.autorizador?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: examenesOrdExtraordInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="examenesOrdExtraord.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${examenesOrdExtraordInstance?.fechaCreacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: examenesOrdExtraordInstance, field: 'estaCompleto', 'error')} ">
	<label for="estaCompleto">
		<g:message code="examenesOrdExtraord.estaCompleto.label" default="Esta Completo" />
		
	</label>
	<g:checkBox name="estaCompleto" value="${examenesOrdExtraordInstance?.estaCompleto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: examenesOrdExtraordInstance, field: 'estadoAvance', 'error')} required">
	<label for="estadoAvance">
		<g:message code="examenesOrdExtraord.estadoAvance.label" default="Estado Avance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estadoAvance" type="number" value="${examenesOrdExtraordInstance.estadoAvance}" required=""/>
</div>

