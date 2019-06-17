<%@ page pageEncoding="UTF-8" %>
<div class="search-box">
    <form class="input-group" method="get" action="${path}/item_category">
        <input placeholder="输入关键字" value="${param.name}" name="name" type="text">
        <span class="input-group-btn">
            <button type="submit">
                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
            </button>
        </span>
    </form>
</div>
