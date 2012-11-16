<<<<<<< HEAD
<<<<<<< HEAD
<%@ page import="org.trapo.CoordinadorArea" %>



<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="coordinadorArea.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${coordinadorAreaInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="coordinadorArea.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${coordinadorAreaInstance?.password}"/>
</div>

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

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="coordinadorArea.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${coordinadorAreaInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="coordinadorArea.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${coordinadorAreaInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="coordinadorArea.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${coordinadorAreaInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'listaUnidadesAprendizaje', 'error')} ">
	<label for="listaUnidadesAprendizaje">
		<g:message code="coordinadorArea.listaUnidadesAprendizaje.label" default="Lista Unidades Aprendizaje" />
		
	</label>
	<g:select name="listaUnidadesAprendizaje" from="${org.trapo.UnidadAprendizaje.list()}" multiple="multiple" optionKey="id" size="5" value="${coordinadorAreaInstance?.listaUnidadesAprendizaje*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="coordinadorArea.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${coordinadorAreaInstance?.passwordExpired}" />
</div>

=======
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

>>>>>>> controladores
=======
<<<<<<< HEAD
<%@ page import="org.trapo.CoordinadorArea" %>



<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="coordinadorArea.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${coordinadorAreaInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="coordinadorArea.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${coordinadorAreaInstance?.password}"/>
</div>

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

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="coordinadorArea.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${coordinadorAreaInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="coordinadorArea.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${coordinadorAreaInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="coordinadorArea.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${coordinadorAreaInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'listaUnidadesAprendizaje', 'error')} ">
	<label for="listaUnidadesAprendizaje">
		<g:message code="coordinadorArea.listaUnidadesAprendizaje.label" default="Lista Unidades Aprendizaje" />
		
	</label>
	<g:select name="listaUnidadesAprendizaje" from="${org.trapo.UnidadAprendizaje.list()}" multiple="multiple" optionKey="id" size="5" value="${coordinadorAreaInstance?.listaUnidadesAprendizaje*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="coordinadorArea.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${coordinadorAreaInstance?.passwordExpired}" />
</div>

=======
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

>>>>>>> controladores
>>>>>>> Scaffolding
