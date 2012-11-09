<%@ page import="org.trapo.Notificacion" %>



<div class="fieldcontain ${hasErrors(bean: notificacionInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="notificacion.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${notificacionInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: notificacionInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="notificacion.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${notificacionInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: notificacionInstance, field: 'planificador', 'error')} required">
	<label for="planificador">
		<g:message code="notificacion.planificador.label" default="Planificador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="planificador" name="planificador.id" from="${org.trapo.Administrativo.list()}" optionKey="id" required="" value="${notificacionInstance?.planificador?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: notificacionInstance, field: 'periodoInicial', 'error')} required">
	<label for="periodoInicial">
		<g:message code="notificacion.periodoInicial.label" default="Periodo Inicial" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="periodoInicial" precision="day"  value="${notificacionInstance?.periodoInicial}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: notificacionInstance, field: 'periodoFinal', 'error')} required">
	<label for="periodoFinal">
		<g:message code="notificacion.periodoFinal.label" default="Periodo Final" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="periodoFinal" precision="day"  value="${notificacionInstance?.periodoFinal}"  />
</div>

