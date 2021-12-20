<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <!-- CSS 파일 -->
    <link href="${rootPath}/static/css/community.css?ver=002" rel="stylesheet">

    <title>커뮤니티 - 게시글 목록</title>
</head>
<body>
<h2>커뮤니티</h2>
<div class="select_option">
    <select>
        <option>최신순</option>
        <option>좋아요순</option>
    </select>
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
</body>
<script>
    document.addEventListener("DOMContentLoaded", ()=>{
        const btn_insert = document.querySelector("button.btn_insert")
        btn_insert.addEventListener("click", (e)=>{
            location.href = "${rootPath}/community/insert"
        })
    })
</script>
</html>
