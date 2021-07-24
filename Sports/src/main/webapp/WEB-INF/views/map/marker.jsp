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
	var map,marker;
	// 페이지가 로딩이 된 후 호출하는 함수입니다.
	function initTmap(){
		// map 생성
		// Tmap.map을 이용하여, 지도가 들어갈 div, 넓이, 높이를 설정합니다.
		map = new Tmapv2.Map("map_div", {
			center : new Tmapv2.LatLng(37.566481622437934, 126.98502302169841), // 지도 초기 좌표
			width : "100%", // map의 width 설정
			height : "400px" // map의 height 설정	

		});

		var positions = [//다중 마커 저장 배열
			{
 				title: 'SKT타워', 
 				lonlat: new Tmapv2.LatLng(37.566369,126.984895)//좌표 지정
 			},
 			{
 				title: '호텔', 
 				lonlat: new Tmapv2.LatLng(37.564432,126.979979)
 			},
 			{
 				title: '명동성당', 
 				lonlat: new Tmapv2.LatLng(37.5632423,126.987210)
 			},
 			{
 				title: '을지로3가역',
 				lonlat: new Tmapv2.LatLng(37.566337,126.992703)
 			},
 			{
	     		title: '덕수궁',
	     		lonlat: new Tmapv2.LatLng(37.565861,126.975194)
	     	}
		];
		 
		for (var i = 0; i< positions.length; i++){//for문을 통하여 배열 안에 있는 값을 마커 생성
			var lonlat = positions[i].lonlat;
			var title = positions[i].title;
			//Marker 객체 생성.
			marker = new Tmapv2.Marker({
				position : lonlat, //Marker의 중심좌표 설정.
				map : map, //Marker가 표시될 Map 설정.
				title : title //Marker 타이틀.
			});
		}
		map.setZoom(15);
	}  
</script>
</head>
<body onload="initTmap()"><!-- 맵 생성 실행 -->
	<div id="map_div"></div>
</body>
</html>