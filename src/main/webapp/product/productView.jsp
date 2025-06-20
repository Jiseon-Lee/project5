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
		<h1>상품 상세 - 관리자 페이지</h1>
		<table>
			<tr>
				<td class="pic">
					<c:choose>
						<c:when test="${empty product.pictureUrl }">
							<img src="upload/noimage.png">
						</c:when>
						<c:otherwise>
							<img src="upload/${product.pictureUrl }">
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					<table>
						<tr>
							<th style="width: 80px">상품명</th>
							<td>${product.productName }</td>
						</tr>
						<tr>
							<th>가격</th>
							<td><fmt:formatNumber value="${product.price }" pattern="#,##0원"/></td>
						</tr>
						<tr>
							<th>설명</th>
							<td><div style="height:200px;width:100%">${product.description }</div></td>
						</tr>
						<tr>
							<th>판매여부</th>
							<td>${product.issell }</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<div class="btn_group">
			<input type="button" value="수정" onclick="location.href='Banchan?command=productUpdateForm&code=${product.code}'">
			<input type="button" value="삭제" onclick="location.href='Banchan?command=productPassCheck&code=${product.code}'">
			<input type="button" value="목록" onclick="location.href='Banchan?command=productList'">
		</div>
	</div>
	<jsp:include page="/footer.jsp"/>
</body>
</html>