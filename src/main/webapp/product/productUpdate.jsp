<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집반찬연구소</title>
<link href="css/common.css" rel="stylesheet">
<link href="css/product.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="/header.jsp"/>
	<div id="wrap">
		<h1>상품 등록 - 관리자 페이지</h1>
		<form enctype="multipart/form-data" name="frm" action="Banchan" method="post">
			<input type="hidden" name="command" value="productUpdate">
			<input type="hidden" name="code" value="${product.code }">
			<input type="hidden" name="nonmakeImg" value="${product.pictureUrl}">
			<table>
				<tr>
					<td>
						<c:choose>
							<c:when test="${empty product.pictureUrl }">
								<img src="upload/noimage.gif">
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
								<td><input type="text" name="productName" value="${product.productName }"></td>
							</tr>
							<tr>
								<th>가격</th>
								<td><input type="text" name="price" value="${product.price }">원</td>
							</tr>
							<tr>
								<th>사진</th>
								<td>
									<input type="file" name="pictureUrl">
									<p>사진을 수정할 경우에만 등록하여주세요.</p>
								</td>
							</tr>
							<tr>
								<th>설명</th>
								<td><textarea cols="80" rows="10" name="description">${product.descriptions }</textarea></td>
							</tr>
							<tr>
								<th>판매여부</th>
								<td>
									<c:choose>
										<c:when test="${product.issell == 'Y' }">
											<input type="radio" name="issell" value="Y" checked> <span>판매</span>
											<input type="radio" name="issell" value="N"> <span>미판매</span>
										</c:when>
										<c:otherwise>
											<input type="radio" name="issell" value="Y"> <span>판매</span>
											<input type="radio" name="issell" value="N" checked> <span>미판매</span>
										</c:otherwise>
									</c:choose>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<input type="submit" value="수정" onclick="return productCheck()">
			<input type="button" value="목록" onclick="location.href='Banchan?command=productList'">
		</form>
	</div>
	<jsp:include page="/footer.jsp"/>
</body>
</html>