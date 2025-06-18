<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집반찬연구소</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/common.css" rel="stylesheet">
<link href="css/member.css" rel="stylesheet">
<script type="text/javascript" src="js/member.js"></script>
</head>
<body>
	<div class="modal">
		<h2>아이디 중복확인</h2>
		<form action="Banchan" method="get" name="frm">
			<input type="hidden" name="command" value="checkIdOk">
			<p>아이디</p>
			<input type="text" name="userid" value="${userid }">
			<input type="submit" value="중복 체크">
			<c:if test="${result == 1 }">
				<script type="text/javascript">
					opener.document.frm.userid.value = "";
				</script>
				<p class="idnotok">${userid }는 이미 사용중인 아이디입니다.</p>
			</c:if>
			<c:if test="${result == -1 }">
				<p class="idok">${userid }는 사용가능한 아이디입니다.</p>
				<input type="button" value="사용" class="cancel" onclick="idok('${userid}')">
			</c:if>
		</form>
	</div>
</body>
</html>