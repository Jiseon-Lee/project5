<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
		<h1>게시글 수정</h1>
		<form name="frm" method="post" action="Banchan">
			<input type="hidden" name="command" value="boardUpdate">
			<input type="hidden" name="num" value="${board.num }">
			<table>
				<tr>
					<th>제목 *</th>
					<td><input type="text" name="title" value="${board.title }"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="70" rows="15" name="content">${board.content }</textarea></td>
				</tr>
			</table>
			<div class="btn_group">
				<input type="submit" value="수정" onclick="return boardCheck()">
				<input type="button" value="목록" onclick="location.href='Banchan?command=boardList'">
			</div>
		</form>
	</div>
	<jsp:include page="/footer.jsp"/>
</body>
</html>