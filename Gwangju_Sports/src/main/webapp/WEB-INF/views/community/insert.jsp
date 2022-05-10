<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>

<form:form commandName="searchVO" name="defaultFrm" id="defaultFrm" method="post">
<%--    <form class="community_insert" method="post">--%>
        <div><label>작성자</label><input name="c_name"></div>
        <div><label>작성일자</label><input name="c_date" value="${DATE}" readonly></div>
        <div><label>작성시간</label><input name="c_time" value="${TIME}" readonly></div>
        <div><label>제목</label><input name="c_title"></div>
        <div><label>내용</label><input name="c_content"></div>
        <%-- <textarea name="c_content"></textarea> --%>

        <div class="btn_save">
            <button class="btn_save" type="button">저장</button>
        </div>
<%--    </form>--%>
</form:form>
<script>
    /*
    document.addEventListener("DOMContentLoaded", () => {
        const btn_save = document.querySelector("button.btn_save")
        btn_save.addEventListener("click", () => {
            form.submit()
        })
    })
    */
</script>
</html>
