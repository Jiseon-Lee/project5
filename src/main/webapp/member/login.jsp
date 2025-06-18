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
    <div id="login">
    	<h1>로그인</h1>
    	<form method="post" name="frm" action="Banchan">
    		<input type="hidden" name="command" value="login">
			<p>아이디</p>
			<input type="text" name="userid" value="${userid}">
			<p>비밀번호</p>
			<input type="password" name="pwd">
			<p class="message">${message }</p>
			<input type="submit" value="로그인" onclick="return loginCheck()">
			<div class="login_link">
				<a href="#">아이디찾기</a>
				<a href="#">비밀번호 찾기</a>
				<a href="Banchan?command=joinForm">회원가입</a>
			</div>
    	</form>
    </div>
    <jsp:include page="/footer.jsp"/>
</body>
</html>