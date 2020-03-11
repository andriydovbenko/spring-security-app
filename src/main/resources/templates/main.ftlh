<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div>
        <@l.logout />
        <span><a href="/user">Admin menu</a></span>
    </div>
    <div>
        <form method="post">
            <input type="text" name="text" placeholder="Enter note" />
            <input type="text" name="tag" placeholder="Tag">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit">Add note</button>
        </form>
    </div>
    <div>Notes List:</div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter?ifExists}">
        <button type="submit">Find</button>
    </form>
    <#list messages as message>
        <div>
            <strong>Note: </strong>
            <span>${message.text}</span>
            <strong>Tag: </strong>
            <i>${message.tag}</i>
            <strong>Author: </strong>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
        No message
    </#list>
</@c.page>