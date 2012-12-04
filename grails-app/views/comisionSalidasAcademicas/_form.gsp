	<%@ page import="org.trapo.ComisionSalidasAcademicas" %>



	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'solicitante', 'error')} required">
		<label for="solicitante">
			<g:message code="comisionSalidasAcademicas.solicitante.label" default="Solicitante" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField id="solicitante" name="solicitante.id"  optionKey="id" required="" value="${session.nombres} ${session.apellidos}" class="many-to-one"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'autorizador', 'error')} required">
		<label for="autorizador">
			<g:message code="comisionSalidasAcademicas.autorizador.label" default="Autorizador" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField id="autorizador" name="autorizador.id" optionKey="id" required="" value="${session.nombres} ${session.apellidos}" class="many-to-one"/>
	</div>
<!---->


	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'lugarDeEvento', 'error')} ">
		<label for="lugarDeEvento">
			<g:message code="comisionSalidasAcademicas.lugarDeEvento.label" default="Lugar De Evento" />
			
		</label>
		<g:textField name="lugarDeEvento" value="${comisionSalidasAcademicasInstance?.lugarDeEvento}"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'ciudad', 'error')} ">
		<label for="ciudad">
			<g:message code="comisionSalidasAcademicas.ciudad.label" default="Ciudad" />
			
		</label>
		<g:textField name="ciudad" value="${comisionSalidasAcademicasInstance?.ciudad}"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'incluirEmpleadoEnComision', 'error')} ">
		<label for="incluirEmpleadoEnComision">
			<g:message code="comisionSalidasAcademicas.incluirEmpleadoEnComision.label" default="Incluir Empleado En Comision" />
			
		</label>
		<g:checkBox name="incluirEmpleadoEnComision" value="${comisionSalidasAcademicasInstance?.incluirEmpleadoEnComision}" />
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'motivo', 'error')} ">
		<label for="motivo">
			<g:message code="comisionSalidasAcademicas.motivo.label" default="Motivo" />
			
		</label>
		<g:textArea name="motivo" cols="40" rows="5" maxlength="2500" value="${comisionSalidasAcademicasInstance?.motivo}"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'asignaturaApoyada', 'error')} ">
		<label for="asignaturaApoyada">
			<g:message code="comisionSalidasAcademicas.asignaturaApoyada.label" default="Asignatura Apoyada" />
			
		</label>
		<g:textField name="asignaturaApoyada" value="${comisionSalidasAcademicasInstance?.asignaturaApoyada}"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'requiereCartaPresentacion', 'error')} ">
		<label for="requiereCartaPresentacion">
			<g:message code="comisionSalidasAcademicas.requiereCartaPresentacion.label" default="Requiere Carta Presentacion" />
			
		</label>
		<g:checkBox name="requiereCartaPresentacion" value="${comisionSalidasAcademicasInstance?.requiereCartaPresentacion}" />
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'del', 'error')} required">
		<label for="del">
			<g:message code="comisionSalidasAcademicas.del.label" default="Del" />
			<span class="required-indicator">*</span>
		</label>
		<g:datePicker name="del" precision="day"  value="${comisionSalidasAcademicasInstance?.del}"  />
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'hasta', 'error')} required">
		<label for="hasta">
			<g:message code="comisionSalidasAcademicas.hasta.label" default="Hasta" />
			<span class="required-indicator">*</span>
		</label>
		<g:datePicker name="hasta" precision="day"  value="${comisionSalidasAcademicasInstance?.hasta}"  />
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'observacionesAdicionales', 'error')} ">
		<label for="observacionesAdicionales">
			<g:message code="comisionSalidasAcademicas.observacionesAdicionales.label" default="Observaciones Adicionales" />
			
		</label>
		<g:textArea name="observacionesAdicionales" cols="40" rows="5" maxlength="2500" value="${comisionSalidasAcademicasInstance?.observacionesAdicionales}"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'tipoDeTransporte', 'error')} required">
		<label for="tipoDeTransporte">
			<g:message code="comisionSalidasAcademicas.tipoDeTransporte.label" default="Tipo De Transporte" />
			<span class="required-indicator">*</span>
		</label>
		<g:select name="tipoDeTransporte" from="${org.trapo.ComisionSalidasAcademicas$TipoTransporte?.values()}" keys="${org.trapo.ComisionSalidasAcademicas$TipoTransporte.values()*.name()}" required="" value="${comisionSalidasAcademicasInstance?.tipoDeTransporte?.name()}"/>
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'gasolina', 'error')} ">
		<label for="gasolina">
			<g:message code="comisionSalidasAcademicas.gasolina.label" default="Gasolina" />
			
		</label>
		<g:checkBox name="gasolina" value="${comisionSalidasAcademicasInstance?.gasolina}" />
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'hospedaje', 'error')} ">
		<label for="hospedaje">
			<g:message code="comisionSalidasAcademicas.hospedaje.label" default="Hospedaje" />
			
		</label>
		<g:checkBox name="hospedaje" value="${comisionSalidasAcademicasInstance?.hospedaje}" />
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'peajes', 'error')} ">
		<label for="peajes">
			<g:message code="comisionSalidasAcademicas.peajes.label" default="Peajes" />
			
		</label>
		<g:checkBox name="peajes" value="${comisionSalidasAcademicasInstance?.peajes}" />
	</div>

	<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'viaticos', 'error')} ">
		<label for="viaticos">
			<g:message code="comisionSalidasAcademicas.viaticos.label" default="Viaticos" />
			
		</label>
		<g:checkBox name="viaticos" value="${comisionSalidasAcademicasInstance?.viaticos}" />
	</div>

<div class="fieldcontain ${hasErrors(bean: comisionSalidasAcademicasInstance, field: 'acompanantes', 'error')} ">
		<label for="acompanantes">
			<g:message code="comisionSalidasAcademicas.viaticos.label" default="Acompanantes" />			
		</label>

	<center>
		<table>	
		<thead>
			<tr>
				<g:sortableColumn property="matricula" title="${message(code: 'comisionSalidasAcademicas.matricula.label', default: 'Matricula')}" />
						
				<g:sortableColumn property="nombre" title="${message(code: 'comisionSalidasAcademicas.nombre.label', default: 'Nombre')}" />
			</tr>
		</thead>
		<tbody>
			<td>
			<g:textField name="matricula" maxlength="20" value="${comisionSalidasAcademicasInstance?.matricula}"/>
			</td>
			<td>
			<g:textField name="nombre" maxlength="40" value="${comisionSalidasAcademicasInstance?.nombre}"/>
			</td>
		</tbody>
	</table>
	</center>

