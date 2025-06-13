<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집반찬연구소</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/common.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">

<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.7.0.min.js"></script>
<script src="./js/category.js"></script>
<script src="./js/altel.js"></script>
<script src="./js/kid.js"></script>
<script src="./js/new.js"></script>
<script src="./js/ranking.js"></script>
<script src="./js/regular.js"></script>
<script src="./js/recommend.js"></script>
<script src="./js/mdrecommend.js"></script>
</head>
<body>
<!-- 헤더 -->
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

    <!-- 메인 베너 -->
    <div id="main_banner">
        <div id="slider">
            <a href="#"><img src="img/banner/banner_1.png" alt="건강한 시니어 식단 출시"></a>
            <a href="#"><img src="img/banner/banner_2.png" alt="든든 한 끼, 가성비 반찬"></a>
            <a href="#"><img src="img/banner/banner_3.png" alt="3월 한정, 봄 제철 반찬"></a>
            <a href="#"><img src="img/banner/banner_4.png" alt="문 앞까지 오는 정기식단"></a>
            <a href="#"><img src="img/banner/banner_5.png" alt="신규회원 혜택"></a>
        </div>
        <div id="slider_btn">
            <span class="prev"></span>
            <span class="next"></span>
        </div>
        <div id="slider_index">
            <span id="slider_index_current">1</span> | <span id="slider_index_total">5</span>
        </div>
    </div>

    <!-- nev -->
    <nav>
        <div class="main_nav" id="main_nav_1">
            <ul>
                <!-- navigation 0~7 -->
            </ul>
        </div>
        <div class="main_nav" id="main_nav_2">
            <ul>
                <!-- navigation 8~end -->
            </ul>
        </div>
    </nav>

    <div class="nav_more">
        <button><span>더보기</span><img src="img/icon/icon-arrow-down.svg" alt=""></button>
    </div>

    <!-- 베너2 -->
    <div class="banner">
        <img src="img/banner/godo_banner1737962008.png" alt="정기식단 한눈에 보기">
    </div>

    <!-- 부담없는 알뜰 반찬 -->
    <section id="section_1">
        <div class="section_head">
            <h2>부담없는 알뜰 반찬</h2>
            <p>
                착한 가격으로 챙기는 든든 한 끼
                <a class="show_all">전체보기<img src="img/icon/icon-arrow-right-background-d9d9d9-18.svg" alt="전체보기"></a>
            </p>

        </div>
        <div class="banchan_list banchan_list_rec">
            <!-- 01_altelbanchan.json list -->
<!--        예시
            <div class="product">
                <img src="" alt="새콤 오이무생채">
                <div class="prd_discription">
                    <span class="prd_tag tag_2">맵지않음</span>
                    <h4>새콤 오이무생채</h4>
                    <p>아이들이 먹기 좋은 깔끔한 무생채채</p>
                    <h5>2,800원</h5>
                </div>
            </div>
-->
        </div>
    </section>

    <!-- 베너3 -->
    <div class="banner_3">
        <img src="img/banner/ddd.png" alt="">
        <img src="img/banner/sssss.png" alt="">
        <img src="img/banner/templite4.png" alt="">
    </div>


    <!-- 어린이 반찬 -->
    <section id="section_2">
        <div class="section_head">
            <h2>어린이 반찬</h2>
            <p>
                착한 가격으로 챙기는 든든 한 끼
                <a class="show_all">전체보기<img src="img/icon/icon-arrow-right-background-d9d9d9-18.svg" alt="전체보기"></a>
            </p>
        </div>
        <div class="banchan_list banchan_list_rec">
            <div class="prev"><img src="img/icon/icon-arrow-left-a3a3a3-24.svg"></div>
            <div class="next"><img src="img/icon/icon-arrow-right-a3a3a3-24.svg"></div>
            <!-- 02_kidbanchan.json list -->
        </div>
    </section>

    <!-- 새로 나온 반찬 -->
    <section id="section_3">
        <div class="section_head">
            <h2>새로 나온 반찬</h2>
        </div>
        <div class="banchan_list banchan_list_rec">
            <div class="prev"><img src="img/icon/icon-arrow-left-a3a3a3-24.svg"></div>
<!--
            <div class="product">
                <img src="img/1409_ZIP_P_5146_T.jpg" alt="새콤달콤 돌나무무침">
                <div class="prd_discription">
                    <span class="prd_tag tag_3">신제품</span><span class="prd_tag tag_4">제철반찬</span>
                    <h4>새콤달콤 돌나무무침</h4>
                    <p>톡톡 터지는 식감</p>
                    <h5>4,800원</h5>
                </div>
            </div>
-->
            <div class="next"><img src="img/icon/icon-arrow-right-a3a3a3-24.svg"></div>
        </div>
    </section>

    <!-- 배너4 -->
    <div class="banner">
        <img src="img/banner/templite1.png" alt="배송 가능 지역">
    </div>

    <!-- 이번주 정기식단 -->
    <section id="section_4">
        <div class="section_head">
            <h2>이번주 정기식단</h2>
            <p>
                착한 가격으로 챙기는 든든 한 끼
                <a class="show_all">전체보기<img src="img/icon/icon-arrow-right-background-d9d9d9-18.svg" alt="전체보기"></a>
            </p>
        </div>
        <div id="regular_container">
            <div id="regular_tab">
                <ul>
                    <li class="nav_on">골고루반찬식단</li>
                    <li>실속식단</li>
                    <li>시니어식단</li>
                    <li>건강한 시니어식단</li>
                    <li>가족식단</li>
                    <li>든든한 가족식단</li>
                    <li>아이식단</li>
                    <li>든든한 아이식단</li>
                </ul>
            </div>
            <div id="regular_list">
                <div class="regular_list_disc">
                    <h3 class="title"></h3>
                    <span><strong class="disc"></strong>로 구성된 식단이에요.</span>
                </div>
                <div class="regular_list_contain" id="week1"> <!-- 식단 1 -->
                    <h4>2월 25~27일 (화/수/목)</h4>
                    <ul>
                        <!-- 1번째 반찬 리스트 -->
<!-- 
                        <li>
                            <img src="img/1349_ZIP_P_0094_T.jpg" alt="">
                            <p>소불고기_반조리</p>
                        </li>
-->                        
                    </ul>
                </div>
                <div class="regular_list_contain" id="week2"> <!-- 식단 2 -->
                    <h4>2월 28일~3월 3일 (금/토/월)</h4>
                    <ul>
                        <!-- 2번째 반찬 리스트 -->
<!-- 
                        <li>
                            <img src="img/1349_ZIP_P_0094_T.jpg" alt="">
                            <p>소불고기_반조리</p>
                        </li>
-->        
                    </ul>
                </div>

                <div class="regular_list_arrow">
                    <span class="pre"><img src="img/icon/icon-arrow-left-a3a3a3-24.svg" alt="">이전주 식단</span>
                    <span class="next">다음주 식단<img src="img/icon/icon-arrow-right-a3a3a3-24.svg" alt=""></span>
                </div>

                <div class="regular_list_foot">
                    <!-- <div>개별 구매 대신, 반찬 구독할 때 <strong>34,800원</strong></div> -->
                    <a href="#">정기식단 구독하기</a>
                </div>
            </div>
        </div>
    </section>

    <!-- 반찬 순위 -->
    <section id="section_5">
        <div class="section_head">
            <h2>반찬 순위</h2>
            <p>최근 2주간 반찬 순위에요!</p>
        </div>
        <div class="rank_container">
            <div class="rank_tab">
                <ul>
                    <li class="on">판매량</li>
                    <li>댓글</li>
                    <li>추천</li>
                </ul>
            </div>
            <div class="rank_list">
                <!-- ranking list -->
<!--
                <div class="product_rank">
                    <div>
                        <img src="img/17_ZIP_P_6014_T.jpg" alt="">
                        <button action=""></button>
                    </div>
                    <div class="prd_discription">
                        <span class="prd_tag tag_3">인기</span><span class="prd_tag tag_3">맵지않음</span>
                        <h4>호두 멸치 볶음</h4>
                        <p>잔멸치와 호두가 만나 짭쪼름하지만 고소하게!</p>
                        <h5>4,800원</h5>
                    </div>
                </div>
-->
            </div>
        </div>
    </section>

    <!-- 고객이 추천하는 찐 추천 반찬 -->
    <section id="section_6">
        <div class="section_head">
            <h2>고객이 추천하는 찐 추천 반찬</h2>
        </div>
        <div class="recommend_tab">
            <span class="on">강*예님 추천</span>
            <span>오*원님 추천</span>
            <span>강*늘님 추천</span>
            <span>김*훈님 추천</span>
        </div>
        <div class="recommend_content">
            <div class="rec_img">
                <img src="img/cp_image_0.png" alt="후기사진">
            </div>
            <div class="rec_right">
                <div class="rec_right_header">
                    <h3></h3>
                    <p></p>
                </div>
                <div class="rec_right_content"> <!-- 추천 상품 리스트 -->
                    <!-- js -->
<!--
                    <div class="product_rec">
                        <img src="img/1356_ZIP_P_0102_T.jpg" alt="">
                        <div class="rec_disc">
                            <div class="tag"></div>
                            <h4>한돈 김치두루..</h4>
                            <p>남녀노소 누구나 좋아..</p>
                            <h5>14,800원</h5>
                        </div>
                    </div>
-->
                </div>
                <div class="rec_btn">
                    <button onclick=""><img src="img/icon/icon-cart-0d5611.svg" alt="">장바구니에 한번에 담기</button>
                </div>
            </div>
        </div>
    </section>

    <!-- MD 추천반찬 -->
    <section id="section_7">
        <div class="section_head">
            <h2>MD 추천반찬</h2>
            <p>이번 주 가장 추천하는 제품만 골라드려요.</p>
        </div>
        <div class="recommend_tab">
            <span class="on">비빔밥</span>
            <span>국/찌개/탕</span>
            <span>어린이 반찬</span>
            <span>볶음</span>
            <span>무침</span>
            <span>메인요리</span>
            <span>조림</span>
        </div>
        <div class="banchan_list banchan_list_tall">
            <div class="prev"><img src="img/icon/icon-arrow-left-a3a3a3-24.svg"></div>
            <div class="next"><img src="img/icon/icon-arrow-right-a3a3a3-24.svg"></div>
            <!-- js -->
<!-- 
            <div class="product">
                <img src="img/2190_ZIP_P_9529_a_re.png" alt="">
                <div class="prd_discription">
                    <span class="prd_tag tag_2">맵지않음</span>
                    <h4>새콤달콤 풋마늘 무침</h4>
                    <p>입맛 살리른 톡 쏘는 맛</p>
                    <h5>4,800원</h5>
                </div>
            </div>
-->
            
        </div>
    </section>

    <!-- footer -->
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