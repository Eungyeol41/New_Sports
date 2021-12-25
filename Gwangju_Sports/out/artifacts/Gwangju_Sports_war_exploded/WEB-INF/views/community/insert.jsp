<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>커뮤니티 - 게시글 등록하기</title>

    <!-- CSS 파일 -->
    <link href="${rootPath}/static/css/community.css?ver=002" rel="stylesheet">

    <%-- summernote 사용을 위한 link, script --%>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="/summernote-0.8.18-dist/summernote.min.css" rel="stylesheet">
    <script src="/summernote-0.8.18-dist/summernote.min.js"></script>
    <script src="/summernote-0.8.18-dist/lang/summernote-ko-KR.min.js"></script>
</head>
<body>
<form class="community_insert" method="post">
    <div><label>작성자</label><input name="c_name"></div>
    <div><label>작성일자</label><input name="c_date" value="${TIME}" readonly></div>
    <div><label>제목</label><input name="c_title"></div>
    <%-- <textarea name="c_content"></textarea> --%>
    <%-- summernote 추가하기 --%>
    <div id="summernote"></div>
    <div class="btn_save">
        <button class="btn_save" type="button">저장</button>
    </div>
</form>
</body>
<script>
    $(document).ready(function () {
        $('#summernote').summernote();
    })

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
