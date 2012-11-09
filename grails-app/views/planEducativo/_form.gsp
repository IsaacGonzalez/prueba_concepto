<%@ page import="org.trapo.PlanEducativo" %>



<div class="fieldcontain ${hasErrors(bean: planEducativoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="planEducativo.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${planEducativoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: planEducativoInstance, field: 'planEstudios', 'error')} ">
	<label for="planEstudios">
		<g:message code="planEducativo.planEstudios.label" default="Plan Estudios" />
		
	</label>
	<g:textField name="planEstudios" value="${planEducativoInstance?.planEstudios}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: planEducativoInstance, field: 'coordinador', 'error')} required">
	<label for="coordinador">
		<g:message code="planEducativo.coordinador.label" default="Coordinador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="coordinador" name="coordinador.id" from="${org.trapo.CoordinadorCarrera.list()}" optionKey="id" required="" value="${planEducativoInstance?.coordinador?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: planEducativoInstance, field: 'docentes', 'error')} ">
	<label for="docentes">
		<g:message code="planEducativo.docentes.label" default="Docentes" />
		
	</label>
	<g:select name="docentes" from="${org.trapo.Docente.list()}" multiple="multiple" optionKey="id" size="5" value="${planEducativoInstance?.docentes*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: planEducativoInstance, field: 'listaUnidadesAprendizaje', 'error')} ">
	<label for="listaUnidadesAprendizaje">
		<g:message code="planEducativo.listaUnidadesAprendizaje.label" default="Lista Unidades Aprendizaje" />
		
	</label>
	<g:select name="listaUnidadesAprendizaje" from="${org.trapo.UnidadAprendizaje.list()}" multiple="multiple" optionKey="id" size="5" value="${planEducativoInstance?.listaUnidadesAprendizaje*.id}" class="many-to-many"/>
</div>

