<%@ page import="org.trapo.Docente" %>



<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="docente.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${docenteInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="docente.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${docenteInstance?.password}"/>
</div>

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

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="docente.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${docenteInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="docente.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${docenteInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="docente.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${docenteInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'listaUnidadesAprendizaje', 'error')} ">
	<label for="listaUnidadesAprendizaje">
		<g:message code="docente.listaUnidadesAprendizaje.label" default="Lista Unidades Aprendizaje" />
		
	</label>
	<g:select name="listaUnidadesAprendizaje" from="${org.trapo.UnidadAprendizaje.list()}" multiple="multiple" optionKey="id" size="5" value="${docenteInstance?.listaUnidadesAprendizaje*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: docenteInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="docente.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${docenteInstance?.passwordExpired}" />
</div>

