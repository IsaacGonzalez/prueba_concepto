<%@ page import="org.trapo.CoordinadorCarrera" %>



<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'numeroEmpleado', 'error')} required">
	<label for="numeroEmpleado">
		<g:message code="coordinadorCarrera.numeroEmpleado.label" default="Numero Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroEmpleado" type="number" value="${coordinadorCarreraInstance.numeroEmpleado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="coordinadorCarrera.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${coordinadorCarreraInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'apellidos', 'error')} ">
	<label for="apellidos">
		<g:message code="coordinadorCarrera.apellidos.label" default="Apellidos" />
		
	</label>
	<g:textField name="apellidos" value="${coordinadorCarreraInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'supervisor', 'error')} ">
	<label for="supervisor">
		<g:message code="coordinadorCarrera.supervisor.label" default="Supervisor" />
		
	</label>
	<g:select id="supervisor" name="supervisor.id" from="${org.trapo.Usuario.list()}" optionKey="id" value="${coordinadorCarreraInstance?.supervisor?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'contrasena', 'error')} ">
	<label for="contrasena">
		<g:message code="coordinadorCarrera.contrasena.label" default="Contrasena" />
		
	</label>
	<g:field type="password" name="contrasena" value="${coordinadorCarreraInstance?.contrasena}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'listaUnidadesAprendizaje', 'error')} ">
	<label for="listaUnidadesAprendizaje">
		<g:message code="coordinadorCarrera.listaUnidadesAprendizaje.label" default="Lista Unidades Aprendizaje" />
		
	</label>
	<g:select name="listaUnidadesAprendizaje" from="${org.trapo.UnidadAprendizaje.list()}" multiple="multiple" optionKey="id" size="5" value="${coordinadorCarreraInstance?.listaUnidadesAprendizaje*.id}" class="many-to-many"/>
</div>

