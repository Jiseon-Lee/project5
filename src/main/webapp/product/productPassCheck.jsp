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
		<h1>상품 삭제 - 관리자</h1>
		<form method="post" action="Banchan" name="frm">
			<input type="hidden" name="command" value="productDelete">
			<input type="hidden" name="code" value="${code }">
			<div class="delete_form">
				<p>상품을 정말 삭제하시겠습니까?</p>
				<span>비밀번호 : </span><input type="password" name="pwd">
			</div>
			<div class="btn_group">
				<input type="submit" value="삭제" onclick="return passCheck()">
				<input type="button" value="취소" onclick="location.href='Banchan?command=productList'">
			</div>
		</form>
	</div>
	<jsp:include page="/footer.jsp"/>
</body>
</html>