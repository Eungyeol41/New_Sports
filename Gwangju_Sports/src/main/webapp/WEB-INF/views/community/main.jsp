<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>

<form:form commandName="searchVO" name="defaultFrm" id="defaultFrm" method="post">
    <h2>커뮤니티</h2>
    <div class="select_option">
        <form:select path="" id="">
            <form:option value="">최신순</form:option>
            <form:option value="">좋아요순</form:option>
        </form:select>
    </div>
    <table class="community">
        <thead>
        <tr>
            <th>No.</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>조회</th>
            <th>좋아요</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>사복 실습비 이게 적당한걸까요ㅠㅠ [42]</td>
            <td>Haley5</td>
            <td>2021.12.20</td>
            <td>630</td>
            <td>36</td>
        </tr>
        </tbody>
    </table>
    <div class="btn_insert">
        <button class="btn_insert">글쓰기</button>
    </div>
</form:form>
<script>
    document.addEventListener("DOMContentLoaded", ()=>{
        const btn_insert = document.querySelector("button.btn_insert")
        btn_insert.addEventListener("click", (e)=>{
            location.href = "${rootPath}/community/insert"
        })
    })
</script>