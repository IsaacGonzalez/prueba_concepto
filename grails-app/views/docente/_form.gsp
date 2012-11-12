<%@ page import="org.trapo.Docente" %>



<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'numeroEmpleado', 'error')} required">
	<label for="numeroEmpleado">
		<g:message code="docente.numeroEmpleado.label" default="Numero Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroEmpleado" type="number" min="1" value="${docenteInstance.numeroEmpleado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="docente.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" pattern="${docenteInstance.constraints.nombre.matches}" required="" value="${docenteInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="docente.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidos" pattern="${docenteInstance.constraints.apellidos.matches}" required="" value="${docenteInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'supervisor', 'error')} ">
	<label for="supervisor">
		<g:message code="docente.supervisor.label" default="Supervisor" />
		
	</label>
	<g:select id="supervisor" name="supervisor.id" from="${org.trapo.Usuario.list()}" optionKey="id" value="${docenteInstance?.supervisor?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'contrasena', 'error')} required">
	<label for="contrasena">
		<g:message code="docente.contrasena.label" default="Contrasena" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="contrasena" required="" value="${docenteInstance?.contrasena}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'listaUnidadesAprendizaje', 'error')} ">
	<label for="listaUnidadesAprendizaje">
		<g:message code="docente.listaUnidadesAprendizaje.label" default="Lista Unidades Aprendizaje" />
		
	</label>
	<g:select name="listaUnidadesAprendizaje" from="${org.trapo.UnidadAprendizaje.list()}" multiple="multiple" optionKey="id" size="5" value="${docenteInstance?.listaUnidadesAprendizaje*.id}" class="many-to-many"/>
</div>

