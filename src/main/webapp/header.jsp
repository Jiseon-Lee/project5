<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
        <div class="head">
            <div class="search">
                <form>
                    <input type="text" placeholder="반찬을 입력해주세요." name="search">
                    <div>
                        <button class="search_but"></button>
                    </div>
                </form>
            </div>

            <a href="index.html" class="logo" target="_self"><img src="img/logo_pc.svg" alt="로고"></a>

            <div class="header_right_top">
                <ul>
                    <li class="nav_menu">
                    	<c:choose>
                    		<c:when test="${empty loginUser }">
                    			<a href="Banchan?command=loginForm">로그인</a>
                    		</c:when>
                    		<c:otherwise>
                    			<a href="Banchan?command=logout">로그아웃</a>
                    		</c:otherwise>
                    	</c:choose>
                    </li>	
                    <li class="nav_menu">
                    	<c:choose>
                    		<c:when test="${empty loginUser }">
                    			<a href="Banchan?command=joinForm">회원가입</a>
                    		</c:when>
                    		<c:otherwise>
                    			<a href="#">주문조회</a>
                    		</c:otherwise>
                    	</c:choose>
                    </li>
                    <li id="tool_tip" class="nav_menu">
                        <a href="#">고객센터</a>
                        <ul>
                            <li>식단 메뉴</li>
                            <li>조리법</li>
                            <li>공지사항</li>
                            <li>자주묻는 질문</li>
                            <li>1:1 문의</li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="header_right_btm">
                <ul>
                    <li class="nav_menu menu_brand"><a href="#">브랜드</a></li>
                    <li class="nav_menu menu_list"><a href="#">반찬보기</a></li>
                    <li class="nav_menu menu_cart"><a href="#">장바구니</a></li>
                    <li class="nav_menu menu_my"><a href="Banchan?command=mypage">내정보</a></li>
                </ul>
            </div>
        </div>
    </header>
</body>
</html>