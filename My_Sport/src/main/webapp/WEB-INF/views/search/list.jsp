<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

<form:form>
	<table>
		<thead>
		<tr>
			<th>No.</th>
			<th>시설명</th>
			<th>시설 주소</th>
			<th>시설 전화번호</th>
			<th>시설 이용료</th>
			<th>이용 가능한 종목</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="facList" items="${facList}" varStatus="i">
		<tr>
			<td>${facList.seq}</td>
			<td>${facList.facNm}</td>
			<td>${facList.facAddr}</td>
			<td>${facList.facTel}</td>
			<td>${facList.facMoney eq 'Y' ? '유료' : '무료'}</td>
			<td>${facList.facSport}</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
</form:form>