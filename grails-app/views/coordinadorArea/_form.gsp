<%@ page import="org.trapo.CoordinadorArea" %>



<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'numeroEmpleado', 'error')} required">
	<label for="numeroEmpleado">
		<g:message code="coordinadorArea.numeroEmpleado.label" default="Numero Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroEmpleado" type="number" min="1" value="${coordinadorAreaInstance.numeroEmpleado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="coordinadorArea.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" pattern="${coordinadorAreaInstance.constraints.nombre.matches}" required="" value="${coordinadorAreaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="coordinadorArea.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidos" pattern="${coordinadorAreaInstance.constraints.apellidos.matches}" required="" value="${coordinadorAreaInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'supervisor', 'error')} ">
	<label for="supervisor">
		<g:message code="coordinadorArea.supervisor.label" default="Supervisor" />
		
	</label>
	<g:select id="supervisor" name="supervisor.id" from="${org.trapo.Usuario.list()}" optionKey="id" value="${coordinadorAreaInstance?.supervisor?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'contrasena', 'error')} required">
	<label for="contrasena">
		<g:message code="coordinadorArea.contrasena.label" default="Contrasena" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="contrasena" required="" value="${coordinadorAreaInstance?.contrasena}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'listaUnidadesAprendizaje', 'error')} ">
	<label for="listaUnidadesAprendizaje">
		<g:message code="coordinadorArea.listaUnidadesAprendizaje.label" default="Lista Unidades Aprendizaje" />
		
	</label>
	<g:select name="listaUnidadesAprendizaje" from="${org.trapo.UnidadAprendizaje.list()}" multiple="multiple" optionKey="id" size="5" value="${coordinadorAreaInstance?.listaUnidadesAprendizaje*.id}" class="many-to-many"/>
</div>

