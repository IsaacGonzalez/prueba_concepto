<%@ page import="org.trapo.CoordinadorCarrera" %>



<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'correo', 'error')} ">
	<label for="correo">
		<g:message code="coordinadorCarrera.correo.label" default="Correo" />
		
	</label>
	<g:field type="email" name="correo" value="${coordinadorCarreraInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="coordinadorCarrera.password.label" default="Password" />
		
	</label>
	<g:field type="password" name="password" value="${coordinadorCarreraInstance?.password}"/>
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

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="coordinadorCarrera.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${coordinadorCarreraInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorCarreraInstance, field: 'listaUnidadesAprendizaje', 'error')} ">
	<label for="listaUnidadesAprendizaje">
		<g:message code="coordinadorCarrera.listaUnidadesAprendizaje.label" default="Lista Unidades Aprendizaje" />
		
	</label>
	<g:select name="listaUnidadesAprendizaje" from="${org.trapo.UnidadAprendizaje.list()}" multiple="multiple" optionKey="id" size="5" value="${coordinadorCarreraInstance?.listaUnidadesAprendizaje*.id}" class="many-to-many"/>
</div>

