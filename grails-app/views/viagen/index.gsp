
<%@ page import="controle_viagens.Viagen" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'viagen.label', default: 'Viagen')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-viagen" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-viagen" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="ida" title="${message(code: 'viagen.ida.label', default: 'Ida')}" />
					
						<g:sortableColumn property="volta" title="${message(code: 'viagen.volta.label', default: 'Volta')}" />
					
						<g:sortableColumn property="objetivo" title="${message(code: 'viagen.objetivo.label', default: 'Objetivo')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'viagen.status.label', default: 'Status')}" />
					
						<th><g:message code="viagen.passageiro.label" default="Passageiro" /></th>
					
						<th><g:message code="viagen.origem.label" default="Origem" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${viagenInstanceList}" status="i" var="viagenInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${viagenInstance.id}">${fieldValue(bean: viagenInstance, field: "ida")}</g:link></td>
					
						<td><g:formatDate date="${viagenInstance.volta}" /></td>
					
						<td>${fieldValue(bean: viagenInstance, field: "objetivo")}</td>
					
						<td>${fieldValue(bean: viagenInstance, field: "status")}</td>
					
						<td>${fieldValue(bean: viagenInstance, field: "passageiro")}</td>
					
						<td>${fieldValue(bean: viagenInstance, field: "origem")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${viagenInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
