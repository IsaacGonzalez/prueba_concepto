<%@ page import="org.trapo.CoordinadorArea" %>



<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'correo', 'error')} ">
	<label for="correo">
		<g:message code="coordinadorArea.correo.label" default="Correo" />
		
	</label>
	<g:field type="email" name="correo" value="${coordinadorAreaInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordinadorAreaInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="coordinadorArea.password.label" default="Password" />
		
	</label>
	<g:field type="password" name="password" value="${coordinadorAreaInstance?.password}"/>
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

