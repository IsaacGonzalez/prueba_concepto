<%@ page import="org.trapo.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'numeroEmpleado', 'error')} required">
	<label for="numeroEmpleado">
		<g:message code="usuario.numeroEmpleado.label" default="Numero Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroEmpleado" type="number" min="1" value="${usuarioInstance.numeroEmpleado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" pattern="${usuarioInstance.constraints.nombre.matches}" required="" value="${usuarioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="usuario.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidos" pattern="${usuarioInstance.constraints.apellidos.matches}" required="" value="${usuarioInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'supervisor', 'error')} ">
	<label for="supervisor">
		<g:message code="usuario.supervisor.label" default="Supervisor" />
		
	</label>
	<g:select id="supervisor" name="supervisor.id" from="${org.trapo.Usuario.list()}" optionKey="id" value="${usuarioInstance?.supervisor?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'contrasena', 'error')} required">
	<label for="contrasena">
		<g:message code="usuario.contrasena.label" default="Contrasena" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="contrasena" required="" value="${usuarioInstance?.contrasena}"/>
</div>

