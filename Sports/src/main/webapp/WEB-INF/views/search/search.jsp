<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색하기</title>
<style>
	
</style>
</head>
<body>

	<h2>검색... 할 수 이ㅆ다!</h2>
	<table>
		<tr>
			<th>이용료</th>
			<th>
				<input type="radio" name="money" id=""> 유료
				<input type="radio" name="money" id=""> 무료
				<input type="radio" name="money" id=""> 유/무료
			</th>
		</tr>
		<tr>
			<th>지역 (구)</th>
			<th>
				<input type="checkbox" name="gu" value="east" onclick="checkSelectAll()" /> 동구
				<input type="checkbox" name="gu" value="west" onclick="checkSelectAll()" /> 서구
				<input type="checkbox" name="gu" value="south" onclick="checkSelectAll()" /> 남구
				<input type="checkbox" name="gu" value="north" onclick="checkSelectAll()" /> 북구
				<input type="checkbox" name="gu" value="gwang" onclick="checkSelectAll()" /> 광산구
				<input type="checkbox" name="selectAll" value="all" onclick= "selectAll()" /> 전체
			</th>
		</tr>
		<tr>
			<th>검색어</th>
			<th>
				<input type="text">
			</th>
		</tr>
		<tr>
			<th>종목</th>
			<th>
				<select>
					<option> --- 종목 --- </option>
					<option>검도</option>
					<option>게이트볼</option>
					<option>골프</option>
					<option>구기체육관</option>
					<option>국궁</option>
					<option>농구</option>
					<option>배구</option>
					<option>배드민턴</option>
					<option>생활체육관</option>
					<option>수영</option>
					<option>스케이트</option>
					<option>승마</option>
					<option>야구 / 소프트볼</option>
					<option>양궁</option>
					<option>육상</option>
					<option>인공암벽</option>
					<option>인라인스케이트</option>
					<option>정구</option>
					<option>족구</option>
					<option>축구</option>
					<option>테니스</option>
				</select>
			</th>
		</tr>
	</table>

</body>
<script>

	function checkSelectAll()  {
		
	  // 전체 체크박스
	  const checkboxes = document.querySelectorAll('input[name="gu"]');
	  // 선택된 체크박스
	  const checked = document.querySelectorAll('input[name="gu"]:checked');
	  // select all 체크박스
	  const selectAll = document.querySelector('input[name="selectAll"]');
	  
	  if(checkboxes.length === checked.length)  {
	    selectAll.checked = true;
	  } else {
	    selectAll.checked = false;
	  }

	}

	function selectAll(selectAll)  {
	  const checkboxes = document.getElementsByName('gu');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked
	  })
	}

</script>
</html>