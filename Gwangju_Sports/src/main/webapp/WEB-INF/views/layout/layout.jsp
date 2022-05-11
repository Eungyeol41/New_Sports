<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- tagLib.jsp 파일에 따로 만들어놨는데 적용이 안 되서 임의로 전체 옮김.. --%>
<%-- <jsp:directive.include file="/WEB-INF/views/common/tagLib.jsp"/> --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <meta id="mobileMeta" name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <title>광주광역시 체육시설</title>
    <!-- CSS 파일 -->
    <link href="${pageContext.request.contextPath}/static/css/main.css?ver=004" rel="stylesheet">
    <!-- jquery -->
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
</head>

<body>
<div id="wrapper">
    <!-- header 시작 -->
<%--    <tiles:insertAttribute name="header"/>--%>
    <!--// header 끝 -->
    <!-- container 시작 -->
    <div id="container">
<%--        <tiles:insertAttribute name="body"/>--%>
    </div>
    <!--// container 끝 -->
    <!-- footer 시작 -->
<%--    <tiles:insertAttribute name="footer"/>--%>
    <!--// footer 끝 -->
</div>
</body>

</html>