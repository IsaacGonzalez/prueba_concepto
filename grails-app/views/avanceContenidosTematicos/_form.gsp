<%@ page import="org.trapo.AvanceContenidosTematicos" %>



<div class="fieldcontain ${hasErrors(bean: avanceContenidosTematicosInstance, field: 'solicitante', 'error')} required">
	<label for="solicitante">
		<g:message code="avanceContenidosTematicos.solicitante.label" default="Solicitante" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solicitante" name="solicitante.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${avanceContenidosTematicosInstance?.solicitante?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: avanceContenidosTematicosInstance, field: 'autorizador', 'error')} required">
	<label for="autorizador">
		<g:message code="avanceContenidosTematicos.autorizador.label" default="Autorizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autorizador" name="autorizador.id" from="${org.trapo.Usuario.list()}" optionKey="id" required="" value="${avanceContenidosTematicosInstance?.autorizador?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: avanceContenidosTematicosInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="avanceContenidosTematicos.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${avanceContenidosTematicosInstance?.fechaCreacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: avanceContenidosTematicosInstance, field: 'estaCompleto', 'error')} ">
	<label for="estaCompleto">
		<g:message code="avanceContenidosTematicos.estaCompleto.label" default="Esta Completo" />
		
	</label>
	<g:checkBox name="estaCompleto" value="${avanceContenidosTematicosInstance?.estaCompleto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: avanceContenidosTematicosInstance, field: 'estadoAvance', 'error')} required">
	<label for="estadoAvance">
		<g:message code="avanceContenidosTematicos.estadoAvance.label" default="Estado Avance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estadoAvance" type="number" value="${avanceContenidosTematicosInstance.estadoAvance}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: avanceContenidosTematicosInstance, field: 'materia', 'error')} required">
	<label for="materia">
		<g:message code="avanceContenidosTematicos.materia.label" default="Materia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="materia" name="materia.id" from="${org.trapo.UnidadAprendizaje.list()}" optionKey="id" required="" value="${avanceContenidosTematicosInstance?.materia?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: avanceContenidosTematicosInstance, field: 'maestro', 'error')} required">
	<label for="maestro">
		<g:message code="avanceContenidosTematicos.maestro.label" default="Maestro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="maestro" name="maestro.id" from="${org.trapo.Docente.list()}" optionKey="id" required="" value="${avanceContenidosTematicosInstance?.maestro?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: avanceContenidosTematicosInstance, field: 'grupo', 'error')} required">
	<label for="grupo">
		<g:message code="avanceContenidosTematicos.grupo.label" default="Grupo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="grupo" type="number" min="1" value="${avanceContenidosTematicosInstance.grupo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: avanceContenidosTematicosInstance, field: 'cicloEscolar', 'error')} required">
	<label for="cicloEscolar">
		<g:message code="avanceContenidosTematicos.cicloEscolar.label" default="Ciclo Escolar" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cicloEscolar" pattern="${avanceContenidosTematicosInstance.constraints.cicloEscolar.matches}" required="" value="${avanceContenidosTematicosInstance?.cicloEscolar}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: avanceContenidosTematicosInstance, field: 'avanceGlobal', 'error')} required">
	<label for="avanceGlobal">
		<g:message code="avanceContenidosTematicos.avanceGlobal.label" default="Avance Global" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="avanceGlobal" type="number" min="1" value="${avanceContenidosTematicosInstance.avanceGlobal}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: avanceContenidosTematicosInstance, field: 'avanceDeTema', 'error')} ">
	<label for="avanceDeTema">
		<g:message code="avanceContenidosTematicos.avanceDeTema.label" default="Avance De Tema" />
		
	</label>
	<g:select name="avanceDeTema" from="${org.trapo.AvanceDeTema.list()}" multiple="multiple" optionKey="id" size="5" value="${avanceContenidosTematicosInstance?.avanceDeTema*.id}" class="many-to-many"/>
</div>

