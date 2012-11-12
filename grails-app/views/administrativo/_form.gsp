<%@ page import="org.trapo.Administrativo" %>



<div class="fieldcontain ${hasErrors(bean: administrativoInstance, field: 'numeroEmpleado', 'error')} required">
	<label for="numeroEmpleado">
		<g:message code="administrativo.numeroEmpleado.label" default="Numero Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroEmpleado" type="number" min="1" value="${administrativoInstance.numeroEmpleado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: administrativoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="administrativo.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" pattern="${administrativoInstance.constraints.nombre.matches}" required="" value="${administrativoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administrativoInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="administrativo.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidos" pattern="${administrativoInstance.constraints.apellidos.matches}" required="" value="${administrativoInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administrativoInstance, field: 'supervisor', 'error')} ">
	<label for="supervisor">
		<g:message code="administrativo.supervisor.label" default="Supervisor" />
		
	</label>
	<g:select id="supervisor" name="supervisor.id" from="${org.trapo.Usuario.list()}" optionKey="id" value="${administrativoInstance?.supervisor?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administrativoInstance, field: 'contrasena', 'error')} required">
	<label for="contrasena">
		<g:message code="administrativo.contrasena.label" default="Contrasena" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="contrasena" required="" value="${administrativoInstance?.contrasena}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: administrativoInstance, field: 'puesto', 'error')} ">
	<label for="puesto">
		<g:message code="administrativo.puesto.label" default="Puesto" />
		
	</label>
	<g:textField name="puesto" pattern="${administrativoInstance.constraints.puesto.matches}" value="${administrativoInstance?.puesto}"/>
</div>

