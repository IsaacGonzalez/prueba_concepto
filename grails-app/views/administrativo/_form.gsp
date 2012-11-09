<%@ page import="org.trapo.Administrativo" %>



<div class="fieldcontain ${hasErrors(bean: administrativoInstance, field: 'numeroEmpleado', 'error')} required">
	<label for="numeroEmpleado">
		<g:message code="administrativo.numeroEmpleado.label" default="Numero Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroEmpleado" type="number" value="${administrativoInstance.numeroEmpleado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: administrativoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="administrativo.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${administrativoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administrativoInstance, field: 'apellidos', 'error')} ">
	<label for="apellidos">
		<g:message code="administrativo.apellidos.label" default="Apellidos" />
		
	</label>
	<g:textField name="apellidos" value="${administrativoInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administrativoInstance, field: 'supervisor', 'error')} ">
	<label for="supervisor">
		<g:message code="administrativo.supervisor.label" default="Supervisor" />
		
	</label>
	<g:select id="supervisor" name="supervisor.id" from="${org.trapo.Usuario.list()}" optionKey="id" value="${administrativoInstance?.supervisor?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administrativoInstance, field: 'contrasena', 'error')} ">
	<label for="contrasena">
		<g:message code="administrativo.contrasena.label" default="Contrasena" />
		
	</label>
	<g:field type="password" name="contrasena" value="${administrativoInstance?.contrasena}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administrativoInstance, field: 'puesto', 'error')} ">
	<label for="puesto">
		<g:message code="administrativo.puesto.label" default="Puesto" />
		
	</label>
	<g:textField name="puesto" value="${administrativoInstance?.puesto}"/>
</div>

