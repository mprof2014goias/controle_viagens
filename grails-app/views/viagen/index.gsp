
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
					
						<th><g:message code="viagen.destino.label" default="Destino" /></th>
					
						<g:sortableColumn property="ida" title="${message(code: 'viagen.ida.label', default: 'Ida')}" />
					
						<g:sortableColumn property="objetivo" title="${message(code: 'viagen.objetivo.label', default: 'Objetivo')}" />
					
						<th><g:message code="viagen.origem.label" default="Origem" /></th>
					
						<th><g:message code="viagen.passageiro.label" default="Passageiro" /></th>
					
						<g:sortableColumn property="status" title="${message(code: 'viagen.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${viagenInstanceList}" status="i" var="viagenInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${viagenInstance.id}">${fieldValue(bean: viagenInstance, field: "destino")}</g:link></td>
					
						<td><g:formatDate date="${viagenInstance.ida}" /></td>
					
						<td>${fieldValue(bean: viagenInstance, field: "objetivo")}</td>
					
						<td>${fieldValue(bean: viagenInstance, field: "origem")}</td>
					
						<td>${fieldValue(bean: viagenInstance, field: "passageiro")}</td>
					
						<td><g:formatBoolean boolean="${viagenInstance.status}" /></td>
					
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
