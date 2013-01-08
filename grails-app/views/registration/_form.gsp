<%@ page import="com.aws.capture.UserInfo" %>



<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="userInfo.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userInfoInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'initials', 'error')} required">
	<label for="initials">
		<g:message code="userInfo.initials.label" default="Initials" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="initials" required="" value="${userInfoInstance?.initials}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="userInfo.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInfoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="userInfo.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="company" required="" value="${userInfoInstance?.company}"/>
</div>

