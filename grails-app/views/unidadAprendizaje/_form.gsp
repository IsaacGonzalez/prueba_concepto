<%@ page import="org.trapo.UnidadAprendizaje" %>



<div class="fieldcontain ${hasErrors(bean: unidadAprendizajeInstance, field: 'clave', 'error')} required">
	<label for="clave">
		<g:message code="unidadAprendizaje.clave.label" default="Clave" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="clave" type="number" value="${unidadAprendizajeInstance.clave}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: unidadAprendizajeInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="unidadAprendizaje.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${unidadAprendizajeInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unidadAprendizajeInstance, field: 'planEducativo', 'error')} required">
	<label for="planEducativo">
		<g:message code="unidadAprendizaje.planEducativo.label" default="Plan Educativo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="planEducativo" name="planEducativo.id" from="${org.trapo.PlanEducativo.list()}" optionKey="id" required="" value="${unidadAprendizajeInstance?.planEducativo?.id}" class="many-to-one"/>
</div>

