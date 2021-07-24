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
		// Tmapv2.Map을 이용하여, 지도가 들어갈 div, 넓이, 높이를 설정합니다
		map = new Tmapv2.Map("map_div", {
			center: new Tmapv2.LatLng(37.566680, 126.978833),// 지도 초기 좌표
			width: "100%", // map의 width 설정
			height: "400px" // map의 height 설정
		});
	
		// 지도 객체 생성 후 마커를 등록하는 함수를 수행합니다.
		addMarkerAni(Tmapv2.MarkerOptions.ANIMATE_BOUNCE_ONCE);
	}
	
	// 마커들을 저장할 배열입니다.
	var markers = [];
	
	// 마커들의 좌표를 저장할 배열입니다.
	var coords = [new Tmapv2.LatLng(37.566680, 126.978433),
		new Tmapv2.LatLng(37.566680, 126.978633),
		new Tmapv2.LatLng(37.566680, 126.978833),
		new Tmapv2.LatLng(37.566680, 126.979033),
		new Tmapv2.LatLng(37.566680, 126.979233),
	];
	
	// 마커를 추가하는 함수입니다.
	function addMarkerAni(aniType) {
		var coordIdx = 0;
          
		removeMarkers(); // 지도에 새로 등록하기 위해 모든 마커를 지우는 함수입니다.
          
		var func = function() {
			//Marker 객체 생성.
			var marker = new Tmapv2.Marker({
				position: coords[coordIdx++], //Marker의 중심좌표 설정.
				draggable: true, //Marker의 드래그 가능 여부.
				animation: aniType, //Marker 애니메이션.
				animationLength: 500, //애니메이션 길이.
				label: 'test', //Marker의 라벨.
				title: '타이틀', //Marker 타이틀.
				map: map //Marker가 표시될 Map 설정.
			});
            
			markers.push(marker);

			if (coordIdx < 5) {
				// 일정 시간 간격으로 마커를 생성하는 함수를 실행합니다
				setTimeout(func, 300);
			}
		}
		// 일정 시간 간격으로 마커를 생성하는 함수를 실행합니다
		setTimeout(func, 300);
	}

	// 모든 마커를 제거하는 함수입니다.
	function removeMarkers() {
		for (var i = 0; i < markers.length; i++) {
			markers[i].setMap(null);
		}
	markers = [];
}
</script>
</head>
<body onload="initTmap()"><!-- 맵 생성 실행 -->
	<div id="map_div"></div>
</body>
</html>