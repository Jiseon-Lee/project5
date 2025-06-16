<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
		<h1>상품 삭제 - 관리자</h1>
		<p>상품을 정말 삭제하시겠습니까?</p>
		<form method="post" action="Banchan" name="frm">
			<input type="hidden" name="command" value="productDelete">
			<input type="hidden" name="code" value="${code }">
			<input type="password" name="pwd">
			<input type="submit" value="삭제">
			<input type="submit" value="취소" onclick="location.href='Banchan?command=productList'">
		</form>
	</div>
	<jsp:include page="/footer.jsp"/>
</body>
</html>