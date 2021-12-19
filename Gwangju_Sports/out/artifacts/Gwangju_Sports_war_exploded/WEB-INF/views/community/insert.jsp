<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>커뮤니티 - 게시글 등록하기</title>
</head>
<body>
    <form method="post">
        <label>작성자</label><input name="c_name">
        <label>작성일자</label><input name="c_date">
        <label>제목</label><input name="c_title">
        <textarea name="c_content"></textarea>
        <%-- summernote 추가하기 --%>
    </form>
</body>
</html>
