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
	<div id="wrap">
		<h1>게시글 등록</h1>
		<form name="frm" method="post" action="Banchan">
			<input type="hidden" name="command" value="boardWrite">
			<table>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title"> * 필수</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="70" rows="15" name="content"></textarea></td>
				</tr>
			</table>
			<br>
			<br>
			<input type="submit" value="등록" onclick="return boardCheck()">
			<input type="button" value="목록" onclick="location.href='Banchan?command=boardList'">
		</form>
	</div>
	<jsp:include page="/footer.jsp"/>
</body>
</html>