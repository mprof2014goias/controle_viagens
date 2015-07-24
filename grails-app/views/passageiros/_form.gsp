<%@ page import="controle_viagens.Passageiros" %>



<div class="fieldcontain ${hasErrors(bean: passageirosInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="passageiros.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${passageirosInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: passageirosInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="passageiros.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${passageirosInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: passageirosInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="passageiros.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${passageirosInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: passageirosInstance, field: 'id_passageiros', 'error')} required">
	<label for="id_passageiros">
		<g:message code="passageiros.id_passageiros.label" default="Idpassageiros" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="id_passageiros" type="number" value="${passageirosInstance.id_passageiros}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: passageirosInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="passageiros.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${passageirosInstance?.telefone}"/>

</div>

