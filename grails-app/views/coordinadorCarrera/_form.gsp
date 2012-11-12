<%@ page import="org.trapo.CoordinadorCarrera" %>



<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="coordinadorCarrera.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${coordinadorCarreraInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="coordinadorCarrera.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${coordinadorCarreraInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'numeroEmpleado', 'error')} required">
	<label for="numeroEmpleado">
		<g:message code="coordinadorCarrera.numeroEmpleado.label" default="Numero Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroEmpleado" type="number" min="1" value="${coordinadorCarreraInstance.numeroEmpleado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="coordinadorCarrera.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" pattern="${coordinadorCarreraInstance.constraints.nombre.matches}" required="" value="${coordinadorCarreraInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="coordinadorCarrera.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidos" pattern="${coordinadorCarreraInstance.constraints.apellidos.matches}" required="" value="${coordinadorCarreraInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'supervisor', 'error')} ">
	<label for="supervisor">
		<g:message code="coordinadorCarrera.supervisor.label" default="Supervisor" />
		
	</label>
	<g:select id="supervisor" name="supervisor.id" from="${org.trapo.Usuario.list()}" optionKey="id" value="${coordinadorCarreraInstance?.supervisor?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'listaUnidadesAprendizaje', 'error')} ">
	<label for="listaUnidadesAprendizaje">
		<g:message code="coordinadorCarrera.listaUnidadesAprendizaje.label" default="Lista Unidades Aprendizaje" />
		
	</label>
	<g:select name="listaUnidadesAprendizaje" from="${org.trapo.UnidadAprendizaje.list()}" multiple="multiple" optionKey="id" size="5" value="${coordinadorCarreraInstance?.listaUnidadesAprendizaje*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="coordinadorCarrera.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${coordinadorCarreraInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="coordinadorCarrera.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${coordinadorCarreraInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="coordinadorCarrera.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${coordinadorCarreraInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="coordinadorCarrera.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${coordinadorCarreraInstance?.passwordExpired}" />
</div>

