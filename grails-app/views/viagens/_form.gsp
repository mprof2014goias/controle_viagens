<%@ page import="controle_viagens.Viagens" %>



<div class="fieldcontain ${hasErrors(bean: viagensInstance, field: 'data_ida', 'error')} required">
	<label for="data_ida">
		<g:message code="viagens.data_ida.label" default="Dataida" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data_ida" precision="day"  value="${viagensInstance?.data_ida}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: viagensInstance, field: 'data_volta', 'error')} required">
	<label for="data_volta">
		<g:message code="viagens.data_volta.label" default="Datavolta" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data_volta" precision="day"  value="${viagensInstance?.data_volta}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: viagensInstance, field: 'horario_ida', 'error')} required">
	<label for="horario_ida">
		<g:message code="viagens.horario_ida.label" default="Horarioida" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="horario_ida" required="" value="${viagensInstance?.horario_ida}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: viagensInstance, field: 'horario_volta', 'error')} required">
	<label for="horario_volta">
		<g:message code="viagens.horario_volta.label" default="Horariovolta" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="horario_volta" required="" value="${viagensInstance?.horario_volta}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: viagensInstance, field: 'id_viagens', 'error')} required">
	<label for="id_viagens">
		<g:message code="viagens.id_viagens.label" default="Idviagens" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="id_viagens" type="number" value="${viagensInstance.id_viagens}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: viagensInstance, field: 'objetivo', 'error')} required">
	<label for="objetivo">
		<g:message code="viagens.objetivo.label" default="Objetivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="objetivo" required="" value="${viagensInstance?.objetivo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: viagensInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="viagens.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${viagensInstance?.status}"/>

</div>

