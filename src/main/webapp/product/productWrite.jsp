<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집반찬연구소</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/common.css" rel="stylesheet">
<link href="css/product.css" rel="stylesheet">
<script type="text/javascript" src="js/product.js"></script>
</head>
<body>
	<jsp:include page="/header.jsp"/>
	<div id="wrap">
		<h1>상품 등록 - 관리자 페이지</h1>
		<form enctype="multipart/form-data" name="frm" action="Banchan" method="post">
			<input type="hidden" name="command" value="productWrite">
			<table>
				<tr>
					<th width="20%">상품명 *</th>
					<td><input type="text" name="productName" size="80"></td>
				</tr>
				<tr>
					<th>가격 *</th>
					<td><input type="text" name="price" class="price">원</td>
				</tr>
				<tr>
					<th>사진</th>
					<td><input type="file" name="pictureUrl"></td>
				</tr>
				<tr>
					<th>설명</th>
					<td><textarea cols="80" rows="10" name="description"></textarea></td>
				</tr>
				<tr>
					<th>판매여부</th>
					<td>
						<input type="radio" name="issell" value="Y" checked> <span>판매</span>
						<input type="radio" name="issell" value="N"> <span>미판매</span>
					</td>
				</tr>
			</table>
			<div class="btn_group">
				<input type="submit" value="등록" onclick="return productCheck()">
				<input type="button" value="목록" onclick="location.href='Banchan?command=productList'">
			</div>
		</form>
	</div>
	<jsp:include page="/footer.jsp"/>
</body>
</html>