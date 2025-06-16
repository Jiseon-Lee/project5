<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집반찬연구소</title>
<link href="css/common.css" rel="stylesheet">
<link href="css/member.css" rel="stylesheet">
<script type="text/javascript" src="js/member.js"></script>
</head>
<body>
	<jsp:include page="/header.jsp"/>
    <div id="join">
    	<h1>회원가입</h1>
    	<form method="post" name="frm" action="Banchan">
    		<input type="hidden" name="command" value="join">
			<p>이름 *</p>
			<input type="text" name="username">
			<p>아이디 *</p>
			<div>
				<input type="text" name="userid" class="join_userid" value="${userid}">
				<input type="button" class="join_idcheck" value="중복 체크" onclick="idCheck()">
			</div>
			<input type="hidden" name="reid">
			<p>비밀번호 *</p>
			<input type="password" name="pwd">
			<p>비밀번호 확인 *</p>
			<input type="password" name="pwd_chk">
			<p>이메일</p>
			<input type="text" name="email">
			<p>전화번호</p>
			<input type="text" name="phone">
			<input type="submit" value="회원가입" onclick="return joinCheck()">
    	</form>
    </div>
    <jsp:include page="/footer.jsp"/>
</body>
</html>