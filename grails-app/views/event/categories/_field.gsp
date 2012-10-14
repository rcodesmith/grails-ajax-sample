<%@ page defaultCodec="html" %>
%{--We import select2 css and js... then apply the script to categories multi-select--}%

<link href="${resource(dir: 'css', file: 'select2.css')}" rel="stylesheet"/>
<script src="${resource(dir: 'js', file: 'select2.js')}"></script>

<div class="control-group ${invalid ? 'error' : ''}">
    <label class="control-label" for="categories"><g:message code="event.categories.label"
                                                        default="Categories"/></label>
    <div class="controls">
        <label for="categories">

        </label>
        <g:select name="categories" style="width: 220px;" from="${rps.Category.list()}" multiple="multiple"
                  optionKey="id" size="5" value="${eventInstance?.categories*.id}" class="many-to-many"/>
    </div>
</div>
<script id="categories">
    $(document).ready(function () {
        $("#categories").select2();
    });
</script>