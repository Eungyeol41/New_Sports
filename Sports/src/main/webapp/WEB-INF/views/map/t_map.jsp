<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>simpleMap</title>
<script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xx623f62f3287f4849850f27eec0de6ee6"></script>
<script>

	// 페이지가 로딩이 된 후 호출하는 함수입니다.
	function initTmap(){
		// map 생성
		// Tmapv2.Map을 이용하여, 지도가 들어갈 div, 넓이, 높이를 설정합니다.
		var map = new Tmapv2.Map("map", { // 지도가 생성될 div
			width : "100%", // 지도의 넓이
			height : "400px" // 지도의 높이
		});
	} 
	
</script>
</head>
<body onload="initTmap()"><!-- 맵 생성 실행 -->
	<div id="map"></div>
</body>
</html>