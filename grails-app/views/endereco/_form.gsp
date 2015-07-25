<%@ page import="controle_viagens.Endereco" %>



<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="endereco.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" required="" value="${enderecoInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'cep', 'error')} required">
	<label for="cep">
		<g:message code="endereco.cep.label" default="Cep" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cep" type="number" value="${enderecoInstance.cep}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'complemento', 'error')} required">
	<label for="complemento">
		<g:message code="endereco.complemento.label" default="Complemento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="complemento" required="" value="${enderecoInstance?.complemento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="endereco.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${enderecoInstance?.descricao}"/>

</div>



<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'logradouro', 'error')} required">
	<label for="logradouro">
		<g:message code="endereco.logradouro.label" default="Logradouro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="logradouro" required="" value="${enderecoInstance?.logradouro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'municipio', 'error')} required">
	<label for="municipio">
		<g:message code="endereco.municipio.label" default="Municipio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="municipio" required="" value="${enderecoInstance?.municipio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="endereco.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numero" required="" value="${enderecoInstance?.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'uf', 'error')} required">
	<label for="uf">
		<g:message code="endereco.uf.label" default="Uf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="uf" required="" value="${enderecoInstance?.uf}"/>

</div>

