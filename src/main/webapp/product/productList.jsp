<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집반찬연구소</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/common.css" rel="stylesheet">
<link href="css/product.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="/header.jsp"/>
	<div id="wrap">
		<h1>상품 리스트 - 관리자 페이지</h1>
		<table class="list">
			<tr>
				<td colspan="4" class="table_top">
					<a href="Banchan?command=productWriteForm">상품 등록</a>
				</td>
			</tr>
			<tr>
				<th width="10%">번호</th>
				<th width="65%">이름</th>
				<th width="15%">가격</th>
				<th width="10%">판매여부</th>
			</tr>
			<c:forEach var="product" items="${list }">
				<tr class="record">
					<td>${product.code }</td>
					<td class="title"><a href="Banchan?command=productView&code=${product.code }">${product.productName }</a></td>
					<td><fmt:formatNumber value="${product.price }" pattern="#,##0원"/></td>
					<td>${product.issell }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<jsp:include page="/footer.jsp"/>
</body>
</html>