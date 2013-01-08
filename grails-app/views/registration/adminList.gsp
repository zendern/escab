
<%@ page import="com.aws.capture.UserInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userInfo.label', default: 'UserInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="list-userInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'userInfo.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="initials" title="${message(code: 'userInfo.initials.label', default: 'Initials')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'userInfo.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="company" title="${message(code: 'userInfo.company.label', default: 'Company')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInfoInstanceList}" status="i" var="userInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td>
                            <g:link controller="registration" action="showUser" id="${userInfoInstance.id}">
                            ${fieldValue(bean: userInfoInstance, field: "name")}
                            </g:link>
                        </td>

					
						<td>${fieldValue(bean: userInfoInstance, field: "initials")}</td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "company")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInfoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
