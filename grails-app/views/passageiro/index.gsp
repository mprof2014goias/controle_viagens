
<%@ page import="controle_viagens.Passageiro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'passageiro.label', default: 'Passageiro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-passageiro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-passageiro" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'passageiro.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'passageiro.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'passageiro.cpf.label', default: 'Cpf')}" />
					
						<th><g:message code="passageiro.endereco.label" default="Endereco" /></th>
					
						<g:sortableColumn property="telefone" title="${message(code: 'passageiro.telefone.label', default: 'Telefone')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${passageiroInstanceList}" status="i" var="passageiroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${passageiroInstance.id}">${fieldValue(bean: passageiroInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: passageiroInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: passageiroInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: passageiroInstance, field: "endereco")}</td>
					
						<td>${fieldValue(bean: passageiroInstance, field: "telefone")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${passageiroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>