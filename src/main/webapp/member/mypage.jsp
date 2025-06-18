<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
	<jsp:include page="/header.jsp"/>
    <div id="mypage">
    	<h1>마이페이지</h1>
    	<form method="post" name="frm" action="Banchan">
    		<input type="hidden" name="command" value="memberUpdate">
			<p>이름 *</p>
			<input type="text" name="username" value="${loginUser.username}" readonly>
			<p>아이디 *</p>
			<input type="text" name="userid" value="${loginUser.userid}" readonly>
			<p>비밀번호 *</p>
			<input type="password" name="pwd">
			<p>비밀번호 확인 *</p>
			<input type="password" name="pwd_chk">
			<p>이메일</p>
			<input type="text" name="email" value="${loginUser.email}">
			<p>전화번호</p>
			<input type="text" name="phone" value="${loginUser.phone}">
			<input type="submit" value="수정" onclick="return joinCheck()">
    	</form>
    </div>
    <jsp:include page="/footer.jsp"/>
</body>
</html>