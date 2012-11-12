<%@ page import="org.trapo.Permiso" %>



<div class="fieldcontain ${hasErrors(bean: permisoInstance, field: 'solicitante', 'error')} required">
	<label for="solicitante">
		<g:message code="permiso.solicitante.label" default="Solicitante" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solicitante" name="solicitante.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${permisoInstance?.solicitante?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: permisoInstance, field: 'autorizador', 'error')} required">
	<label for="autorizador">
		<g:message code="permiso.autorizador.label" default="Autorizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autorizador" name="autorizador.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${permisoInstance?.autorizador?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: permisoInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="permiso.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${permisoInstance?.fechaCreacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: permisoInstance, field: 'estaCompleto', 'error')} ">
	<label for="estaCompleto">
		<g:message code="permiso.estaCompleto.label" default="Esta Completo" />
		
	</label>
	<g:checkBox name="estaCompleto" value="${permisoInstance?.estaCompleto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: permisoInstance, field: 'estadoAvance', 'error')} required">
	<label for="estadoAvance">
		<g:message code="permiso.estadoAvance.label" default="Estado Avance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estadoAvance" type="number" value="${permisoInstance.estadoAvance}" required=""/>
</div>

