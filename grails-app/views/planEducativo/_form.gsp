<%@ page import="org.trapo.PlanEducativo" %>



<div class="fieldcontain ${hasErrors(bean: planEducativoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="planEducativo.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" pattern="${planEducativoInstance.constraints.nombre.matches}" required="" value="${planEducativoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: planEducativoInstance, field: 'planEstudios', 'error')} required">
	<label for="planEstudios">
		<g:message code="planEducativo.planEstudios.label" default="Plan Estudios" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="planEstudios" pattern="${planEducativoInstance.constraints.planEstudios.matches}" required="" value="${planEducativoInstance?.planEstudios}"/>
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
	
<ul class="one-to-many">
<g:each in="${planEducativoInstance?.listaUnidadesAprendizaje?}" var="l">
    <li><g:link controller="unidadAprendizaje" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="unidadAprendizaje" action="create" params="['planEducativo.id': planEducativoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'unidadAprendizaje.label', default: 'UnidadAprendizaje')])}</g:link>
</li>
</ul>

</div>

