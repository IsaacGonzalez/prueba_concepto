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

<div class="fieldcontain ${hasErrors(bean: permisoInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="permiso.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${org.trapo.Permiso$TipoPermiso?.values()}" keys="${org.trapo.Permiso$TipoPermiso.values()*.name()}" required="" value="${permisoInstance?.tipo?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: permisoInstance, field: 'del', 'error')} required">
	<label for="del">
		<g:message code="permiso.del.label" default="Del" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="del" precision="day"  value="${permisoInstance?.del}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: permisoInstance, field: 'al', 'error')} required">
	<label for="al">
		<g:message code="permiso.al.label" default="Al" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="al" precision="day"  value="${permisoInstance?.al}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: permisoInstance, field: 'motivo', 'error')} ">
	<label for="motivo">
		<g:message code="permiso.motivo.label" default="Motivo" />
		
	</label>
	<g:textArea name="motivo" cols="40" rows="5" maxlength="2500" value="${permisoInstance?.motivo}"/>
</div>

