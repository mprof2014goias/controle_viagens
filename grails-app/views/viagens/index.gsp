
<%@ page import="controle_viagens.Viagens" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'viagens.label', default: 'Viagens')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-viagens" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-viagens" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="data_ida" title="${message(code: 'viagens.data_ida.label', default: 'Dataida')}" />
					
						<g:sortableColumn property="data_volta" title="${message(code: 'viagens.data_volta.label', default: 'Datavolta')}" />
					
						<g:sortableColumn property="horario_ida" title="${message(code: 'viagens.horario_ida.label', default: 'Horarioida')}" />
					
						<g:sortableColumn property="horario_volta" title="${message(code: 'viagens.horario_volta.label', default: 'Horariovolta')}" />
					
						<g:sortableColumn property="id_viagens" title="${message(code: 'viagens.id_viagens.label', default: 'Idviagens')}" />
					
						<g:sortableColumn property="objetivo" title="${message(code: 'viagens.objetivo.label', default: 'Objetivo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${viagensInstanceList}" status="i" var="viagensInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${viagensInstance.id}">${fieldValue(bean: viagensInstance, field: "data_ida")}</g:link></td>
					
						<td><g:formatDate date="${viagensInstance.data_volta}" /></td>
					
						<td>${fieldValue(bean: viagensInstance, field: "horario_ida")}</td>
					
						<td>${fieldValue(bean: viagensInstance, field: "horario_volta")}</td>
					
						<td>${fieldValue(bean: viagensInstance, field: "id_viagens")}</td>
					
						<td>${fieldValue(bean: viagensInstance, field: "objetivo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${viagensInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
