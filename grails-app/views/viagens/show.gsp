
<%@ page import="controle_viagens.Viagens" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'viagens.label', default: 'Viagens')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-viagens" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-viagens" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list viagens">
			
				<g:if test="${viagensInstance?.data_ida}">
				<li class="fieldcontain">
					<span id="data_ida-label" class="property-label"><g:message code="viagens.data_ida.label" default="Dataida" /></span>
					
						<span class="property-value" aria-labelledby="data_ida-label"><g:formatDate date="${viagensInstance?.data_ida}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${viagensInstance?.data_volta}">
				<li class="fieldcontain">
					<span id="data_volta-label" class="property-label"><g:message code="viagens.data_volta.label" default="Datavolta" /></span>
					
						<span class="property-value" aria-labelledby="data_volta-label"><g:formatDate date="${viagensInstance?.data_volta}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${viagensInstance?.horario_ida}">
				<li class="fieldcontain">
					<span id="horario_ida-label" class="property-label"><g:message code="viagens.horario_ida.label" default="Horarioida" /></span>
					
						<span class="property-value" aria-labelledby="horario_ida-label"><g:fieldValue bean="${viagensInstance}" field="horario_ida"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${viagensInstance?.horario_volta}">
				<li class="fieldcontain">
					<span id="horario_volta-label" class="property-label"><g:message code="viagens.horario_volta.label" default="Horariovolta" /></span>
					
						<span class="property-value" aria-labelledby="horario_volta-label"><g:fieldValue bean="${viagensInstance}" field="horario_volta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${viagensInstance?.id_viagens}">
				<li class="fieldcontain">
					<span id="id_viagens-label" class="property-label"><g:message code="viagens.id_viagens.label" default="Idviagens" /></span>
					
						<span class="property-value" aria-labelledby="id_viagens-label"><g:fieldValue bean="${viagensInstance}" field="id_viagens"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${viagensInstance?.objetivo}">
				<li class="fieldcontain">
					<span id="objetivo-label" class="property-label"><g:message code="viagens.objetivo.label" default="Objetivo" /></span>
					
						<span class="property-value" aria-labelledby="objetivo-label"><g:fieldValue bean="${viagensInstance}" field="objetivo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${viagensInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="viagens.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${viagensInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:viagensInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${viagensInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
