<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
                    <li class="nav_menu"><a href="Banchan?command=loginForm">로그인</a></li>
                    <li class="nav_menu"><a href="Banchan?command=joinForm">회원가입</a></li>
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
                    <li class="nav_menu menu_my"><a href="#">내정보</a></li>
                </ul>
            </div>
        </div>
    </header>
    <div id="login">
    	<h1>로그인</h1>
    	<form method="post" name="frm" action="Banchan">
    		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="userid" value="${userid}"></td>
			</tr>
			<tr>
				<td>암호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="로그인" onclick="return loginCheck()">
					<input type="reset" value="취소">
					<input type="button" value="회원가입" onclick="location.href='join.do'">
				</td>
			</tr>
			<tr>
				<td colspan="2">${message }</td>
			</tr>
		</table>
    	</form>
    </div>
    <footer>
        <div class="footer_service">
            <h3>고객센터</h3>
            <strong>1588-3754</strong>
            <small>zipbanchan@sannamchon.co.kr</small>
            <p>
                평일 08:30~17:30 / 토요일 08:30~12:00<br>
                점심시간 12:00~13:00<br>
                일요일, 공휴일은 휴무입니다.
            </p>
        </div>
        <div class="footer_info">
            <h3>집반찬연구소</h3>
            <p>
                인천광역시 서구 가석로 26(가좌동) 집반찬연구소 대표자 : 박종철<br>
                사업자등록번호 : 121-86-17743 통신판매업 신고번호 : 제 2023-인천서구-3834 호 개인정보보호책임자 : 정문채<br>
                제휴 문의 : zipbanchan@sannamchon.co.kr
            </p>
            <a href="#">집밥찬연구소 소개</a>|
            <a href="#">이용약관</a>|
            <a href="#">개인정보처리방침</a>
            <small>Copyright ⓒ SANNAMCHON CORP. All Rights Reserved.</small>
        </div>
    </footer>
</body>
</html>