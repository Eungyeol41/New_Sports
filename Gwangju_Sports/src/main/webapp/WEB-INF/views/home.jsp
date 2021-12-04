<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${rootPath}/static/css/main.css" rel="stylesheet">
    <title>Main</title>
</head>
<body>
    <header>
        <h1>GPC</h1>
        <h3>광주광역시 체육시설</h3>
    </header>
    <nav>
        <ul>
            <li class="home">Home</li>
            <li class="search">Search</li>
            <li class="map">Map</li>
            <li class="login">Login</li>
            <li class="mypage">MyPage</li>
        </ul>
    </nav>
    <div class="banner">
        <label>배너를 보여줄 곳</label>
    </div>
</body>
</html>
