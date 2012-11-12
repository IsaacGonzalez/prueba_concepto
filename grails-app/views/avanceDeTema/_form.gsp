<%@ page import="org.trapo.AvanceDeTema" %>



<div class="fieldcontain ${hasErrors(bean: avanceDeTemaInstance, field: 'tema', 'error')} required">
	<label for="tema">
		<g:message code="avanceDeTema.tema.label" default="Tema" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tema" pattern="${avanceDeTemaInstance.constraints.tema.matches}" required="" value="${avanceDeTemaInstance?.tema}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: avanceDeTemaInstance, field: 'porcentajeDeAvance', 'error')} required">
	<label for="porcentajeDeAvance">
		<g:message code="avanceDeTema.porcentajeDeAvance.label" default="Porcentaje De Avance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="porcentajeDeAvance" type="number" min="1" value="${avanceDeTemaInstance.porcentajeDeAvance}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: avanceDeTemaInstance, field: 'observaciones', 'error')} required">
	<label for="observaciones">
		<g:message code="avanceDeTema.observaciones.label" default="Observaciones" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observaciones" pattern="${avanceDeTemaInstance.constraints.observaciones.matches}" required="" value="${avanceDeTemaInstance?.observaciones}"/>
</div>

