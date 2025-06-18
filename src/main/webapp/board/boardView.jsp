<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집반찬연구소</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/common.css" rel="stylesheet">
<link href="css/board.css" rel="stylesheet">
<script type="text/javascript" src="js/board.js"></script>
</head>
<body>
	<jsp:include page="/header.jsp"/>
	<div id="wrap">
		<h1>게시글 상세보기</h1>
		<table>
			<tr>
				<th>작성자</th>
				<td>${board.username }</td>
				<th>이메일</th>
				<td>${board.email }</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><fmt:formatDate value="${board.writedate }"/></td>
				<th>조회수</th>
				<td>${board.readcount }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3">${board.title }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3"><pre>${board.content }</pre></td>
			</tr>
		</table>
		<br>
		<br>
		<div class="btn_group">
			<input type="button" value="게시글 수정" onclick="location.href='Banchan?command=boardIdCheck&go=u&num=${board.num}'">
			<input type="button" value="게시글 삭제" onclick="confirm('정말 삭제하시겠습니까?') && (location.href='Banchan?command=boardIdCheck&go=d&num=${board.num}')">
			<input type="button" value="게시글 리스트" onclick="location.href='Banchan?command=boardList'">
		</div>
	</div>
	<jsp:include page="/footer.jsp"/>
</body>
</html>