<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String message = request.getAttribute("message") != null ? (String)request.getAttribute("message") : "오류가 발생했습니다.";
    String url = request.getAttribute("url") != null ? (String)request.getAttribute("url") : "javascript:history.back()";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
    alert('<%= message %>');
    location.href = '<%= url %>';
</script>
</body>
</html>