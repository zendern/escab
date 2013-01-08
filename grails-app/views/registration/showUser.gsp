
<%@ page import="com.aws.capture.UserInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userInfo.label', default: 'UserInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-userInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="adminList"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-userInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list userInfo">
			
				<g:if test="${userInfoInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="userInfo.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInfoInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.initials}">
				<li class="fieldcontain">
					<span id="initials-label" class="property-label"><g:message code="userInfo.initials.label" default="Initials" /></span>
					
						<span class="property-value" aria-labelledby="initials-label"><g:fieldValue bean="${userInfoInstance}" field="initials"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="userInfo.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInfoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="userInfo.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:fieldValue bean="${userInfoInstance}" field="company"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="userInfo.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInfoInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.accessKeyId}">
				<li class="fieldcontain">
					<span id="accessKeyId-label" class="property-label"><g:message code="userInfo.accessKeyId.label" default="Access Key Id" /></span>
					
						<span class="property-value" aria-labelledby="accessKeyId-label"><g:fieldValue bean="${userInfoInstance}" field="accessKeyId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.secretAccessKey}">
				<li class="fieldcontain">
					<span id="secretAccessKey-label" class="property-label"><g:message code="userInfo.secretAccessKey.label" default="Secret Access Key" /></span>
					
						<span class="property-value" aria-labelledby="secretAccessKey-label"><g:fieldValue bean="${userInfoInstance}" field="secretAccessKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.consoleUrl}">
				<li class="fieldcontain">
					<span id="consoleUrl-label" class="property-label"><g:message code="userInfo.consoleUrl.label" default="Console Url" /></span>
					
						<span class="property-value" aria-labelledby="consoleUrl-label"><g:fieldValue bean="${userInfoInstance}" field="consoleUrl"/></span>
					
				</li>
				</g:if>
			
			</ol>
		</div>
	</body>
</html>
