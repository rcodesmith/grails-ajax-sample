<%@ page import="rps.Event" %>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="event.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${eventInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'categories', 'error')} ">
	<label for="categories">
		<g:message code="event.categories.label" default="Categories" />

	</label>
	<g:select name="categories" style="width: 220px;" from="${rps.Category.list()}" multiple="multiple" optionKey="id" size="5" value="${eventInstance?.categories*.id}" class="many-to-many"/>
</div>
