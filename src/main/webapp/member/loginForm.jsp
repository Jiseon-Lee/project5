<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/header.jsp"/>
    <div id="login">
    	<h1>로그인</h1>
    	<form method="post" name="frm" action="Banchan">
			<p>아이디</p>
			<input type="text" name="userid" value="${userid}">
			<p>비밀번호</p>
			<input type="password" name="pwd">
			<input type="submit" value="로그인" onclick="return loginCheck()">
			<input type="reset" value="취소">
			<input type="button" value="회원가입" onclick="location.href='join.do'">

    	</form>
    </div>
    <jsp:include page="/footer.jsp"/>
</body>
</html>