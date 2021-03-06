
<%@ page import="grails.plugin.translate.Message" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'message.label', default: 'Message')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-message" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-message" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'message.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="language" title="${message(code: 'message.language.label', default: 'Language')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'message.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="variant" title="${message(code: 'message.variant.label', default: 'Variant')}" />
					
						<g:sortableColumn property="text" title="${message(code: 'message.text.label', default: 'Text')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${messageInstanceList}" status="i" var="messageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${messageInstance.id}">${fieldValue(bean: messageInstance, field: "code")}</g:link></td>
					
						<td>${fieldValue(bean: messageInstance, field: "language")}</td>
					
						<td>${fieldValue(bean: messageInstance, field: "country")}</td>
					
						<td>${fieldValue(bean: messageInstance, field: "variant")}</td>
					
						<td>${fieldValue(bean: messageInstance, field: "text")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${messageInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
