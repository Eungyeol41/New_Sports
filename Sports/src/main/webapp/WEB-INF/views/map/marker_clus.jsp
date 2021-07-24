<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>simpleMap</title>
<script
	src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=발급받은 Appkey"></script>
<script type="text/javascript">									
	var map;
	// 페이지가 로딩이 된 후 호출하는 함수입니다.
	function initTmap(){
		
		// map 생성
		// Tmap.map을 이용하여, 지도가 들어갈 div, 넓이, 높이를 설정합니다.
		map = new Tmapv2.Map("map_div", {
			center : new Tmapv2.LatLng(37.566481622437934, 126.98502302169841), // 지도 초기 좌표
			width : "100%", // map의 width 설정
			height : "400px" // map의 height 설정	
		});
		
		map.setZoom(16);
		
		var lat = 37.566681;
		var lng = 126.978453;
		var markers1 = [];
		
		for (var i = 0; i < 5; i++) {
			for (var j = 0; j < 5; j++) {
				var marker = new Tmapv2.Marker({
					position: new Tmapv2.LatLng(lat + (j * 0.001), lng + (i * 0.001)),
					label: 'cluster',
					map: map
		        });
		        markers1.push(marker);
		    }
		}
		// 마커클러스터 등록
		markerCluster = new Tmapv2.extension.MarkerCluster({
			markers: markers1, // 마커들이 담긴 배열
			map: map // 지도 객체
		});
		 
	};
</script>
</head>
<body onload="initTmap()"><!-- 맵 생성 실행 -->
	<div id="map_div"></div>
</body>
</html>