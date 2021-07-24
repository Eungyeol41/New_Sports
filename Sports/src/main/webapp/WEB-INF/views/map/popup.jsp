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
	src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xx623f62f3287f4849850f27eec0de6ee6"></script>
<script type="text/javascript">
	var map;	
	// 페이지가 로딩이 된 후 호출하는 함수입니다.
	function initTmap(){
		// map 생성
		// Tmapv2.Map을 이용하여, 지도가 들어갈 div, 넓이, 높이를 설정합니다.
		map = new Tmapv2.Map("map_div", {
			center: new Tmapv2.LatLng(37.566481622437934,126.98502302169841),
			width: "100%",
			height: "400px"
		});
		var content= "<div style='position: static; display: flex; flex-direction: column; font-size: 14px; box-shadow: 5px 5px 5px #00000040; border-radius: 10px; top: 410px; left : 800px; width : 250px; background: #FFFFFF 0% 0% no-repeat padding-box;'>"+
		   "<div class='img-box' style='position: relative; width: 100%; height: 150px; border-radius: 10px 10px 0 0 ; background: #f5f5f5 url(resources/images/sample/img-skt.png) no-repeat center;'>"+
		   "</div>"+
		   "<div class='info-box' style='padding: 10px;'>"+
		   "<p style='margin-bottom: 7px; overflow: hidden;'>"+
		   "<span class='tit' style=' font-size: 16px; font-weight: bold;'>SK T-타워</span>"+
		   "<a href='http://tmapapi.sktelecom.com/' target='_blank' class='link' style='color: #3D6DCC; font-size: 13px; float: right;'>홈페이지</a>"+
		   "</p>"+
		   "<ul class='ul-info'>"+
		   "<li class='li-addr' style='padding-left: 20px; margin-bottom: 5px; background: url(resources/images/sample/ico-map.svg) no-repeat top 3px left;'>"+
		   "<p class='new-addr'>서울특별시 중구 을지로 65</p>"+
		   "<p class='old-addr' style='color: #707070;'>(우)04539 (지번)을지로 2가 11</p>"+
		   "</li>"+
		   "<li class='li-tell' style='padding-left: 20px; background: url(resources/images/sample/ico-tell.svg) no-repeat top 4px left;'>"+
		   "<span class='tell'>1588-8787</span>"+
		   "</li>"+
		   "</ul>"+
		   "<ul class='btn-group' style='display: table; width: 100%; border-radius: 3px; height: 30px; border: 1px solid #EFEFEF; margin-top: 10px; text-align: center;'>"+
		   "<li style='display: table-cell; vertical-align: middle; width: 33.333%; height: 100%; border-right: 1px solid #EFEFEF;'>"+
		   "<a href='#' title='즐겨찾기'><img src='resources/images/sample/ico-like.svg'></a>"+
		   "</li>"+
		   "<li style='display: table-cell; vertical-align: middle; width: 33.333%; height: 100%; border-right: 1px solid #EFEFEF;''>"+
		   "<a href='#' title='공유하기'><img src='resources/images/sample/ico-share.svg'></a>"+
		   "</li>"+
		   "<li style='display: table-cell; vertical-align: middle; width: 33.333%; height: 100%;'>"+
		   "<a href='#' title='길찾기'><img src='resources/images/sample/ico-road.svg'></a>"+
		   "</li>"+
		   "</ul>"+
		   "</div>"+
		   "<a href='javascript:void(0)' onclick='onClose()' class='btn-close' style='position: absolute; top: 10px; right: 10px; display: block; width: 15px; height: 15px; background: url(resources/images/sample/btn-close-w.svg) no-repeat center;'></a>"+
		   "</div>";
		//Popup 객체 생성.
		infoWindow = new Tmapv2.InfoWindow({
			position: new Tmapv2.LatLng(37.566481622437934,126.98502302169841), //Popup 이 표출될 맵 좌표
			content: content, //Popup 표시될 text
			border :'0px solid #FF0000', //Popup의 테두리 border 설정.
			type: 2, //Popup의 type 설정.
			map: map //Popup이 표시될 맵 객체
		});
	map.setCenter(new Tmapv2.LatLng(37.566481622437934,126.98502302169841));
}

function changeStyle(type){
	infoWindow.setMap();
	popupType = type;
	if (popupType==4) {
		var content= "<div style='position: static; display: flex; flex-direction: column; font-size: 14px; box-shadow: 5px 5px 5px #00000040; border-radius: 10px; top: 410px; left : 800px; width : 250px; background: #FFFFFF 0% 0% no-repeat padding-box;'>"+
					   "<div class='img-box' style='position: relative; width: 100%; height: 150px; border-radius: 10px 10px 0 0 ; background: #f5f5f5 url(resources/images/sample/img-skt.png) no-repeat center;'>"+
					   "</div>"+
					   "<div class='info-box' style='padding: 10px;'>"+
					   "<p style='margin-bottom: 7px; overflow: hidden;'>"+
					   "<span class='tit' style=' font-size: 16px; font-weight: bold;'>SK T-타워</span>"+
					   "<a href='http://tmapapi.sktelecom.com/' target='_blank' class='link' style='color: #3D6DCC; font-size: 13px; float: right;'>홈페이지</a>"+
					   "</p>"+
					   "<ul class='ul-info'>"+
					   "<li class='li-addr' style='padding-left: 20px; margin-bottom: 5px; background: url(resources/images/sample/ico-map.svg) no-repeat top 3px left;'>"+
					   "<p class='new-addr'>서울특별시 중구 을지로 65</p>"+
					   "<p class='old-addr' style='color: #707070;'>(우)04539 (지번)을지로 2가 11</p>"+
					   "</li>"+
					   "<li class='li-tell' style='padding-left: 20px; background: url(resources/images/sample/ico-tell.svg) no-repeat top 4px left;'>"+
					   "<span class='tell'>1588-8787</span>"+
					   "</li>"+
					   "</ul>"+
					   "<ul class='btn-group' style='display: table; width: 100%; border-radius: 3px; height: 30px; border: 1px solid #EFEFEF; margin-top: 10px; text-align: center;'>"+
					   "<li style='display: table-cell; vertical-align: middle; width: 33.333%; height: 100%; border-right: 1px solid #EFEFEF;'>"+
					   "<a href='#' title='즐겨찾기'><img src='resources/images/sample/ico-like.svg'></a>"+
					   "</li>"+
					   "<li style='display: table-cell; vertical-align: middle; width: 33.333%; height: 100%; border-right: 1px solid #EFEFEF;''>"+
					   "<a href='#' title='공유하기'><img src='resources/images/sample/ico-share.svg'></a>"+
					   "</li>"+
					   "<li style='display: table-cell; vertical-align: middle; width: 33.333%; height: 100%;'>"+
					   "<a href='#' title='길찾기'><img src='resources/images/sample/ico-road.svg'></a>"+
					   "</li>"+
					   "</ul>"+
					   "</div>"+
					   "<a href='javascript:void(0)' onclick='onClose()' class='btn-close' style='position: absolute; top: 10px; right: 10px; display: block; width: 15px; height: 15px; background: url(resources/images/sample/btn-close-w.svg) no-repeat center;'></a>"+
					   "</div>";
		infoWindow = new Tmapv2.InfoWindow({
			position: new Tmapv2.LatLng(37.566481622437934,126.98502302169841),
			content: content,
			border :'0px solid #FF0000',
			type: 2,
			map: map
		});
	}
}
//닫기 아이콘 클릭시 호출되는 함수.
function onClose(popup){
	infoWindow.setVisible(false);
}

</script>
</head>
<body onload="initTmap()"><!-- 맵 생성 실행 -->
	<div id="map_div"></div>
	<button onclick="changeStyle(4)">Label 팝업 스타일 4</button>
</body>
</html>
				