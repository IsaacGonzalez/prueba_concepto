<%@ page import="org.trapo.ComisionSalidasAcademicas" %>



<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'solicitante', 'error')} required">
	<label for="solicitante">
		<g:message code="comisionSalidasAcademicas.solicitante.label" default="Solicitante" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solicitante" name="solicitante.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${comisionSalidasAcademicasInstance?.solicitante?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'autorizador', 'error')} required">
	<label for="autorizador">
		<g:message code="comisionSalidasAcademicas.autorizador.label" default="Autorizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autorizador" name="autorizador.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${comisionSalidasAcademicasInstance?.autorizador?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="comisionSalidasAcademicas.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${comisionSalidasAcademicasInstance?.fechaCreacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'estaCompleto', 'error')} ">
	<label for="estaCompleto">
		<g:message code="comisionSalidasAcademicas.estaCompleto.label" default="Esta Completo" />
		
	</label>
	<g:checkBox name="estaCompleto" value="${comisionSalidasAcademicasInstance?.estaCompleto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'estadoAvance', 'error')} required">
	<label for="estadoAvance">
		<g:message code="comisionSalidasAcademicas.estadoAvance.label" default="Estado Avance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estadoAvance" type="number" value="${comisionSalidasAcademicasInstance.estadoAvance}" required=""/>
</div>

