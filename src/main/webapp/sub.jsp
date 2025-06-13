<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>든든한 가족식단</title>
<link href="css/reset.css" rel="stylesheet">
<link href="css/common.css" rel="stylesheet">
<link href="css/sub.css" rel="stylesheet">
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
                    <li class="nav_menu"><a href="#">로그인</a></li>
                    <li class="nav_menu"><a href="#">회원가입</a></li>
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

    <div id="sub">
        <div id="banchan_main">
            <div class="banchan_main_img">
                <img src="img/sub/479_ZIP_P_9078_T_2.jpg" alt="">
            </div>
            <div class="banchan_main_info">
                <div>
                    <span class="prd_tag tag_3">무료배송</span>
                </div>
                <h1>든든한 가족식단</h1>
                <p class="banchan_main_desc">국2, 메인요리2, 반찬4개 (1회)</p>
                <p class="banchan_main_price">58,800원</p>
                <div class="banchan_main_bottom">
                    <div class="banchan_total_price">
                        <strong>총 상품 금액</strong>
                        <p>58,800원</p>
                    </div>
                    <div class="banchan_btn_class">
                        <a href="#" class="like_btn"><img src="img/sub/icon-heart-939393-20.svg"></a>
                        <a href="#" class="add_cart">장바구니 담기</a>
                    </div>
                </div>
            </div>
        </div>

        <div id="banchan_star_rank">
            <strong>
                <img src="img/sub/icon-star-0d5611-24.svg" alt="">4.9
            </strong>
            <p><strong>2411</strong>명의 고객님이 인증한 반찬</p>
        </div>

        <div id="banchan_content">
            <div class="banchan_tab">
                <ul>
                    <li class="on"><a href="#banchan_description">반찬설명</a></li>
                    <li><a href="#banchan_info">상품정보</a></li>
                    <li><a href="#banchan_review">상품후기</a></li>
                </ul>
            </div>

            <!-- 반찬 설명 -->
            <div id="banchan_description">
                <img src="img/sub/01_top_fam.png" alt="">
                <img src="img/sub/02_con_title_fam.png" alt="">
                <div id="regular_menu">
                    <div class="calinder">
                        <h3>2025년 04월</h3>
                        <ul>
                            <li class="on">1주차</li>
                            <li>2주차</li>
                            <li>3주차</li>
                            <li>4주차</li>
                            <li>5주차</li>
                        </ul>
                        <div class="prenext_btn">
                            <a href="">&lt;이전달</a>
                            <a href="">다음달&gt;</a>
                        </div>
                    </div>
                    <div class="regular_menu_content">
                        <h4>4월 1~3일 (화/수/목)</h4>
                        <ul>
                            <li>
                                <img src="img/sub/201_ZIP_P_2011_T.jpg" alt="">
                                <p>근대 된장국(냉동)</p>
                            </li>
                            <li>
                                <img src="img/sub/2287_ZIP_P_9535_T.png" alt="">
                                <p>안 매운 어묵탕_반조리</p>
                            </li>
                            <li>
                                <img src="img/sub/1203_ZIP_P_6234_T.jpg" alt="">
                                <p>불고기잡채</p>
                            </li>
                            <li>
                                <img src="img/sub/1080_ZIP_P_3077_T_RE.jpg" alt="">
                                <p>모둠전 3종_해물야채전, 매콤김치전, 감자전</p>
                            </li>
                            <li>
                                <img src="img/sub/1410_ZIP_P_5147_T.jpg" alt="">
                                <p>향긋한 봄나물무침</p>
                            </li>
                            <li>
                                <img src="img/sub/1481_ZIP_P_5164_T.jpg" alt="">
                                <p>새콤달콤 못난이오이무침</p>
                            </li>
                            <li>
                                <img src="img/sub/241_ZIP_P_4021_T.jpg" alt="">
                                <p>유자견과류조림</p>
                            </li>
                            <li>
                                <img src="img/sub/576_ZIP_P_3040_T.jpg" alt="">
                                <p>양파고추 장아찌</p>
                            </li>
                        </ul>
                    </div>
                    <div class="regular_menu_content">
                        <h4>4월 4~7일 (금/토/월)</h4>
                        <ul>
                            <li>
                                <img src="img/sub/1364_ZIP_P_1043_T.jpg" alt="">
                                <p>한돈 돼지김치찌개</p>
                            </li>
                            <li>
                                <img src="img/sub/1972_ZIP_P_1062_T.jpg" alt="">
                                <p>대구지리</p>
                            </li>
                            <li>
                                <img src="img/sub/2002_ZIP_P_4087_T.jpg" alt="">
                                <p>순살 찜닭</p>
                            </li>
                            <li>
                                <img src="img/sub/1586_ZIP_C_5041_T.jpg" alt="">
                                <p>우리밀 통등심 돈까스(냉동)</p>
                            </li>
                            <li>
                                <img src="img/sub/1998_ZIP_P_6395_T.jpg" alt="">
                                <p>한우 애호박볶음</p>
                            </li>
                            <li>
                                <img src="img/sub/2110_ZIP_P_3150_t_xxx.png" alt="">
                                <p>맛살 버섯전</p>
                            </li>
                            <li>
                                <img src="img/sub/269_ZIP_P_5032_T.jpg" alt="">
                                <p>오이부추무침</p>
                            </li>
                            <li>
                                <img src="img/sub/1823_ZIP_P_6308_T.jpg" alt="">
                                <p>참치두부소보로</p>
                            </li>
                        </ul>
                    </div>
                </div>

                <img src="img/sub/03_con_1.png" alt="">
                <img src="img/sub/06_con_fam.png" alt="">
            </div>

            <!-- 상품정보 -->
            <div id="banchan_info">
                <table>
                    <tr>
                        <th>제품명</th>
                        <td>제품별도표기</td>
                    </tr>
                    <tr>
                        <th>용량</th>
                        <td>제품별도표기</td>
                    </tr>
                    <tr>
                        <th>소비기한</th>
                        <td>제품별도표기</td>
                    </tr>
                    <tr>
                        <th>원재료명 및 함량</th>
                        <td>제품별도표기</td>
                    </tr>
                    <tr>
                        <th>보관방법(취급방법)</th>
                        <td>제품별도표기</td>
                    </tr>
                    <tr>
                        <th>식품의 유형</th>
                        <td>제품별도표기</td>
                    </tr>
                    <tr>
                        <th>포장재질</th>
                        <td>제품별도표기</td>
                    </tr>
                    <tr>
                        <th>제조원 및 판매원</th>
                        <td>집반찬연구소/인천광역시 서구 가석로 26(가좌동)</td>
                    </tr>
                    <tr>
                        <th>알레르기식품</th>
                        <td>
                            본 제품은 게,새우,고등어,땅콩,우유,메밀,돼지고기,복숭아,토마토,잣,키위,닭고기,조개류(전복,홍합 포함),오징어,쇠고기를 사용한 제품과 같은 제조 시설에서 제조하고
                            있습니다.</td>
                    </tr>
                    <tr>
                        <th>부정/불량식품 신고표시</th>
                        <td>불량 부정식품 신고번호는 국번없이 1399</td>
                    </tr>
                    <tr>
                        <th>소비자분쟁해결기준</th>
                        <td>본 제품은 공정거래위원회 고시 소비자분쟁해결기준에 의거 교환 또는 환불 보상받으실 수 있습니다.</td>
                    </tr>
                    <tr>
                        <th>소비자 상담 관련 전화번호</th>
                        <td>1588-3754</td>
                    </tr>
                    <tr>
                        <th>품목보고번호</th>
                        <td>
                            제품별도표기</td>
                    </tr>
                </table>
            </div>

            <!-- 같이 먹으면 더 맛있는 반찬 -->
            <div class="banchan_recommend">
                <h2>같이 먹으면 더 맛있는 반찬</h2>
                <p>이 반찬을 보신 다른 고객님이 같이 담은 반찬이에요!</p>
                <div class="banchan_recommend_list">
                    <div class="product">
                        <img src="img/1409_ZIP_P_5146_T.jpg" alt="새콤달콤 돌나무무침">
                        <div class="prd_discription">
                            <h4>새콤달콤 돌나무무침</h4>
                            <p>톡톡 터지는 식감</p>
                            <h5>4,800원</h5>
                        </div>
                    </div>
                    <div class="product">
                        <img src="img/1409_ZIP_P_5146_T.jpg" alt="새콤달콤 돌나무무침">
                        <div class="prd_discription">
                            <h4>새콤달콤 돌나무무침</h4>
                            <p>톡톡 터지는 식감</p>
                            <h5>4,800원</h5>
                        </div>
                    </div>
                    <div class="product">
                        <img src="img/1409_ZIP_P_5146_T.jpg" alt="새콤달콤 돌나무무침">
                        <div class="prd_discription">
                            <h4>새콤달콤 돌나무무침</h4>
                            <p>톡톡 터지는 식감</p>
                            <h5>4,800원</h5>
                        </div>
                    </div>
                    <div class="product">
                        <img src="img/1409_ZIP_P_5146_T.jpg" alt="새콤달콤 돌나무무침">
                        <div class="prd_discription">
                            <h4>새콤달콤 돌나무무침</h4>
                            <p>톡톡 터지는 식감</p>
                            <h5>4,800원</h5>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 상품 후기 -->
            <div id="banchan_review">
                <h2>상품후기</h2>
                <div>
                    <h3>사진후기</h3>
                    <div class="photo_review">
                        <ul>
                            <li><img src="img/sub/RV0000572461.jpg"></li>
                            <li><img src="img/sub/RV0000572461.jpg"></li>
                            <li><img src="img/sub/RV0000572461.jpg"></li>
                            <li><img src="img/sub/RV0000572461.jpg"></li>
                            <li><img src="img/sub/RV0000572461.jpg"></li>
                            <li><img src="img/sub/RV0000572461.jpg"></li>
                        </ul>
                    </div>
                </div>
                <table class="review_list">
                    <tr>
                        <td class="review_content"><a href="#">맛있어요.</a></td>
                        <td class="reviewer">이지은</td>
                        <td class="review_date">2020.12.25</td>
                        <td class="star"><div class="star1"></div></td>
                    </tr>
                    <tr>
                        <td class="review_content"><a href="#">역시 히트조명!</a></td>
                        <td class="reviewer">김주은</td>
                        <td class="review_date">2020.11.21</td>
                        <td class="star"><div class="star2"></div></td>
                    </tr>
                    <tr>
                        <td class="review_content"><a href="#">방 분위기가 달라졌어요~</a></td>
                        <td class="reviewer">이구름</td>
                        <td class="review_date">2020.09.24</td>
                        <td class="star"><div class="star3"></div></td>
                    </tr>
                    <tr>
                        <td class="review_content"><a href="#">히트조명은 명품조명!</a></td>
                        <td class="reviewer">홍진호</td>
                        <td class="review_date">2020.08.01</td>
                        <td class="star"><div class="star4"></div></td>
                    </tr>
                    <tr>
                        <td class="review_content"><a href="#">너무 예뻐요.</a></td>
                        <td class="reviewer">박수연</td>
                        <td class="review_date">2020.07.15</td>
                        <td class="star"><div class="star5"></div></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

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