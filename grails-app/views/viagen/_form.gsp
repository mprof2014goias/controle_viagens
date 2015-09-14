<%@ page import="controle_viagens.Viagen" %>



<div class="fieldcontain ${hasErrors(bean: viagenInstance, field: 'destino', 'error')} required">
	<label for="destino">
		<g:message code="viagen.destino.label" default="Destino" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="destino" name="destino.id" from="${controle_viagens.Endereco.list()}" optionKey="id" required="" value="${viagenInstance?.destino?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: viagenInstance, field: 'ida', 'error')} required">
	<label for="ida">
		<g:message code="viagen.ida.label" default="Ida" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="ida" precision="day"  value="${viagenInstance?.ida}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: viagenInstance, field: 'objetivo', 'error')} required">
	<label for="objetivo">
		<g:message code="viagen.objetivo.label" default="Objetivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="objetivo" required="" value="${viagenInstance?.objetivo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: viagenInstance, field: 'origem', 'error')} required">
	<label for="origem">
		<g:message code="viagen.origem.label" default="Origem" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="origem" name="origem.id" from="${controle_viagens.Endereco.list()}" optionKey="id" required="" value="${viagenInstance?.origem?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: viagenInstance, field: 'passageiro', 'error')} required">
	<label for="passageiro">
		<g:message code="viagen.passageiro.label" default="Passageiro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="passageiro" name="passageiro.id" from="${controle_viagens.Passageiro.list()}" optionKey="id" required="" value="${viagenInstance?.passageiro?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: viagenInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="viagen.status.label" default="Status" />
		
	</label>
	<g:checkBox name="status" value="${viagenInstance?.status}" />

</div>

<div class="fieldcontain ${hasErrors(bean: viagenInstance, field: 'volta', 'error')} required">
	<label for="volta">
		<g:message code="viagen.volta.label" default="Volta" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="volta" precision="day"  value="${viagenInstance?.volta}"  />

</div>
