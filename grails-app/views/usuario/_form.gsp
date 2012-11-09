<%@ page import="org.trapo.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'numeroEmpleado', 'error')} required">
	<label for="numeroEmpleado">
		<g:message code="usuario.numeroEmpleado.label" default="Numero Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroEmpleado" type="number" value="${usuarioInstance.numeroEmpleado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${usuarioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellidos', 'error')} ">
	<label for="apellidos">
		<g:message code="usuario.apellidos.label" default="Apellidos" />
		
	</label>
	<g:textField name="apellidos" value="${usuarioInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'supervisor', 'error')} ">
	<label for="supervisor">
		<g:message code="usuario.supervisor.label" default="Supervisor" />
		
	</label>
	<g:select id="supervisor" name="supervisor.id" from="${org.trapo.Usuario.list()}" optionKey="id" value="${usuarioInstance?.supervisor?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'contrasena', 'error')} ">
	<label for="contrasena">
		<g:message code="usuario.contrasena.label" default="Contrasena" />
		
	</label>
	<g:field type="password" name="contrasena" value="${usuarioInstance?.contrasena}"/>
</div>

