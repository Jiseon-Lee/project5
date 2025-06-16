<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/header.jsp"/>
	<div id="wrap">
		<h1>상품 리스트 - 관리자 페이지</h1>
		<table>
			<tr>
				<td colspan="4" class="table_top">
					<a href="Banchan?command=productWriteForm">글 작성</a>
				</td>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회</th>
			</tr>
			<c:forEach var="board" items="${list }">
				<tr class="record">
					<td>${board.num }</td>
					<td><a href="Banchan?command=boardView&num=${board.num }">${board.title }</a></td>
					<td>${board.username }</td>
					<td><fmt:formatDate value="${board.writedate }"/></td>
					<td>${board.readcount }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>