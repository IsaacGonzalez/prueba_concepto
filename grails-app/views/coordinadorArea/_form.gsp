<%@ page import="org.trapo.CoordinadorArea" %>



<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'numeroEmpleado', 'error')} required">
	<label for="numeroEmpleado">
		<g:message code="coordinadorArea.numeroEmpleado.label" default="Numero Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroEmpleado" type="number" value="${coordinadorAreaInstance.numeroEmpleado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="coordinadorArea.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${coordinadorAreaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'apellidos', 'error')} ">
	<label for="apellidos">
		<g:message code="coordinadorArea.apellidos.label" default="Apellidos" />
		
	</label>
	<g:textField name="apellidos" value="${coordinadorAreaInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'supervisor', 'error')} ">
	<label for="supervisor">
		<g:message code="coordinadorArea.supervisor.label" default="Supervisor" />
		
	</label>
	<g:select id="supervisor" name="supervisor.id" from="${org.trapo.Usuario.list()}" optionKey="id" value="${coordinadorAreaInstance?.supervisor?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'contrasena', 'error')} ">
	<label for="contrasena">
		<g:message code="coordinadorArea.contrasena.label" default="Contrasena" />
		
	</label>
	<g:field type="password" name="contrasena" value="${coordinadorAreaInstance?.contrasena}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'listaUnidadesAprendizaje', 'error')} ">
	<label for="listaUnidadesAprendizaje">
		<g:message code="coordinadorArea.listaUnidadesAprendizaje.label" default="Lista Unidades Aprendizaje" />
		
	</label>
	<g:select name="listaUnidadesAprendizaje" from="${org.trapo.UnidadAprendizaje.list()}" multiple="multiple" optionKey="id" size="5" value="${coordinadorAreaInstance?.listaUnidadesAprendizaje*.id}" class="many-to-many"/>
</div>

