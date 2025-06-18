<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<h1>자유게시판</h1>
		<table class="list">
			<tr>
				<td colspan="5" class="table_top">
					<a href="Banchan?command=boardWriteForm">글 작성</a>
				</td>
			</tr>
			<tr>
				<th width="10%">번호</th>
				<th width="60%">제목</th>
				<th width="10%">작성자</th>
				<th width="10%">작성일</th>
				<th width="10%">조회</th>
			</tr>
			<c:forEach var="board" items="${list }">
				<tr class="record">
					<td>${board.num }</td>
					<td class="title"><a href="Banchan?command=boardView&num=${board.num }">${board.title }</a></td>
					<td>${board.username }</td>
					<td><fmt:formatDate value="${board.writedate }"/></td>
					<td>${board.readcount }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<jsp:include page="/footer.jsp"/>
</body>
</html>