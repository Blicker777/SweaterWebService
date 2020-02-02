<#import "parts/login.ftl" as l>

<@c.page>
    <div>
        <@l.logout/>
    </div>
    <div>
        <form method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="text" name="text" placeholder="Введите текст">
            <input type="text" name="tag" placeholder="Тэг">
            <button type="submit">Добавить</button>
        </form>
    </div>
    <div>Список сообщений</div>
    <form method="post" action="filter">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="text" name="filter">
        <button type="submit">Найти</button>
    </form>
    <#list messages as messages>
    <div>
        <b>${messages.id}</b>
        <span>${messages.text}</span>
        <i>${messages.tag}</i>
        <strong>${nessages.authorName}</strong>
    </div>
        <#else>
        Mo messages
    </#list>
</@c.page>