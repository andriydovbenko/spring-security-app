<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
<div class="mb-1">Create new user</div>
${message?ifExists}
<@l.login "/registration"/>
</@c.page>
