<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="top_nav topnav1903">
	<div class="top_nav_wrap clFearfix">
		<div class="brand_menu brand_menu1903">
			<ul class="clearfix">
				<!-- 선호 브랜드 없음 -->
				<li><span class="on"><a href="/main"
						onclick="GA_Event('공통','탑_네비게이션','HOME')">HOME</a></span></li>
				<!-- 로그인 상태 -->
				<!-- 비로그인 상태 -->
<!-- 				<p class="brand_menu_guide_text"> -->
<!-- 					로그인 후 아래 '브랜드' 메뉴에서 좋아하는 브랜드를 <span -->
<!-- 						style="margin-top: -1px; display: inline-block;">♥</span>해주세요 -->
<!-- 				</p> -->
			</ul>
		</div>
		<div class="gnb_sh_wrap" style="display: none;">
			<!-- search box -->
			<div class="gnb_sh_box">
				<input type="text" class="input" id="gnbsearchwords" title="검색어 입력"
					value=""
					onkeypress="if(event.keyCode==13) {EnterSearchHeader(); return false;}">
				<a href="javascript:void(0);" id="gnbsearch">검색</a>
			</div>
			<!-- //search box -->
			<!-- search result -->
			<div class="gnb_sh_result">
				<div class="tab">
					<a href="javascript:void(0);" class="menu on">최근검색어</a>
					<div class="result_list on">
						<div class="searchWord1" style="display: none;">
							<a href="javascript:void(0);" class="ml newlyBtn"
								id="searchWord1"></a><a href="javascript:void(0);" class="close"
								onclick="deletecookie('HS_Seachwords1')">닫기</a>
						</div>
						<div class="searchWord2" style="display: none;">
							<a href="javascript:void(0);" class="ml newlyBtn"
								id="searchWord2"></a><a href="javascript:void(0);" class="close"
								onclick="deletecookie('HS_Seachwords2')">닫기</a>
						</div>
						<div class="searchWord3" style="display: none;">
							<a href="javascript:void(0);" class="ml newlyBtn"
								id="searchWord3"></a><a href="javascript:void(0);" class="close"
								onclick="deletecookie('HS_Seachwords3')">닫기</a>
						</div>
						<div class="searchWord4" style="display: none;">
							<a href="javascript:void(0);" class="ml newlyBtn"
								id="searchWord4"></a><a href="javascript:void(0);" class="close"
								onclick="deletecookie('HS_Seachwords4')">닫기</a>
						</div>
						<div class="searchWord5" style="display: none;">
							<a href="javascript:void(0);" class="ml newlyBtn"
								id="searchWord5"></a><a href="javascript:void(0);" class="close"
								onclick="deletecookie('HS_Seachwords5')">닫기</a>
						</div>
						<a href="javascript:void(0);" class="btn_svclose">검색어 <span
							id="searchSaveYN" save="on">끄기</span></a> <a
							href="javascript:void(0);" class="btn_allclose on"
							onclick="searchOff()">닫기</a>
					</div>
					<a href="javascript:void(0);" class="menu">인기검색어</a>
					<div class="result_list">
						<div>
							<a href="javascript:void(0);" class="ml favBtn">jacket</a>
							<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
						</div>
						<div>
							<a href="javascript:void(0);" class="ml favBtn">blouse</a>
							<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
						</div>
						<div>
							<a href="javascript:void(0);" class="ml favBtn">stripe</a>
							<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
						</div>
						<div>
							<a href="javascript:void(0);" class="ml favBtn">ribbon</a>
							<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
						</div>
						<div>
							<a href="javascript:void(0);" class="ml favBtn">blouson</a>
							<!-- <a href="javascript:void(0);" class="close">닫기</a> -->
						</div>
						<a href="javascript:void(0);" class="btn_svclose">검색어 <span
							id="searchSaveYNfame" save="on">끄기</span></a> <a
							href="javascript:void(0);" class="btn_allclose"
							onclick="searchOff()">닫기</a>
					</div>
				</div>
			</div>
			<!-- //search result -->
		</div>
		<!-- 201705 search_box_wrap -->
		<div class="search_box_wrap sbw1803" id="searchBox">
			<form name="search" id="search" action="/hssearch/searchCount"
				method="post" onsubmit="return false;">
				<input type="hidden" name="CSRFToken"
					value="7932f37e-50ca-47ea-b75b-f6385a48d9ac"> <input
					type="hidden" name="searchwords" value=""> <input
					type="hidden" name="startCount" value=""> <input
					type="hidden" name="mode" value=""> <input type="hidden"
					name="sort" value=""> <input type="hidden"
					name="collection" value=""> <input type="hidden"
					name="range" value=""> <input type="hidden"
					name="startDate" value=""> <input type="hidden"
					name="endDate" value=""> <input type="hidden"
					name="searchField" value=""> <input type="hidden"
					name="reQuery"> <input type="hidden" id="prefixQuery"
					value=""> <input type="hidden" id="identity"
					name="identity" value=""> <input type="hidden"
					id="realQuery" name="realQuery" value=""> <input
					type="hidden" id="loginState" value="loginOff"> <input
					type="hidden" id="athomeInfo" value=""> <input
					type="hidden" id="selectedLang" name="selectedLang"
					value="product_ko"> <input type="hidden" id="lang"
					name="lang" value="ko"> <input type="hidden"
					id="brandPageGubun" name="brandPageGubun" value="off">
				<!-- 브랜드 페이지 여부 -->
				<input type="hidden" id="brand_img" name="brand_img" value="">
				<input type="hidden" id="brand_url" name="brand_url" value="">
				<div class="search_box">
					<label for="query" class="hidden">search</label> <input
						type="search" id="query" name="query" value=""
						onkeypress="javascript:pressCheck((event),this);"
						style="margin-top: 0.2px;" autocomplete="off"> <span
						class="placeholder"></span> <a href="javascript:void(0);"><span
						class="btn_close">닫기</span></a> <a
						href="javascript:GA_search();doSearch();" class="search"><span
						class="ico">검색</span></a>
				</div>
			</form>
			<!--검색박스 활성화 data_react -->
			<div class="data_react">
				<!-- tab 검색어 입력 전 -->
				<div class="search_tab">
					<div class="btn_search_tab" style="display: none;">
						<a href="javascript:void(0);" rel="recent_search"
							class="btn_recent_search on"
							onclick="GA_Event('검색','최근 검색어','클릭')">최근 검색어</a> <a
							href="javascript:void(0);" rel="style_search"
							class="btn_style_search" id="btn_style_search">Style Search</a> <a
							href="javascript:void(0);" rel="popular_search"
							class="btn_style_search" id="btn_top_search"
							style="display: none;" onclick="GA_Event('검색','인기검색어','클릭')">인기검색어</a>
					</div>
					<!-- 최근 검색어 -->
					<div class="recent_search s_tab">
						<ul id="mykeyword">
							<div class="clear_search_hs">
								<a href="javascript:removeAllMyKeyword()">검색기록전체삭제</a>
							</div>
						</ul>
					</div>
					<!-- style search -->
					<form id="searchStyle" name="searchStyle"
						action="/hssearch/searchCount" method="post"
						onsubmit="return false;">
						<input type="hidden" name="query" value=""> <input
							type="hidden" name="collection" value=""> <input
							type="hidden" id="CSRFToken" name="CSRFToken"
							value="7932f37e-50ca-47ea-b75b-f6385a48d9ac"> <input
							type="hidden" id="searchStyleYn" name="searchStyleYn"
							value="searchStyle">
					</form>

					<div class="style_search s_tab" id="stylesearch_area">
						<p class="style_search_tlt">Style Search 2018</p>
						<div class="ss_txt_list">
							<ul class="style_search_arr" id="style_search_arr">
							</ul>
						</div>
						<div class="ss_img_list" id="styleSearchSlider">
							<ul class="slides">
								<li></li>
							</ul>
						</div>
					</div>

					<!-- style search 컨텐츠 하나일 때-->
					<!-- <div class="style_search s_tab">
	                            <div class="ss_txt_list">
	                                <p class="style_search_tlt">Style Search 2017 S/S</p>
	                                <ul id="style_search_arr">
	                               </ul>
	                            </div>
	                             <div class="ss_img_list" id="styleSearchSlider">
                                    <ul class="slides"><li></li></ul>
                                </div>
	                        </div> -->
					<!-- //style search 컨텐츠 하나일 때-->
					<div class="popular_search s_tab" id="topsearch_area"
						style="display: none;">
						<ol class="ol_popular1" id="topsearchLeft">
						</ol>
						<!-- 				                <ol class="ol_popular2" id="topsearchRight"> -->
						<!-- 	                            </ol> -->
					</div>
				</div>
				<!--// tab 검색어 입력 전 -->
				<!-- 검색어 입력 후 (검색어 자동완성) -->
				<div class="search_autocomplete">
					<div class="autocomplete_txt">
						<div id="brandView">
							<ul>
							</ul>
						</div>
						<div id="ark" style="height: 170px;">
							<div class="ark_wrap" id="ark_wrap">
								<ul id="ark_content_list"></ul>
							</div>
						</div>
					</div>
					<div class="autocomplete_right">
						<div class="category_brand">
							<p>카테고리/브랜드</p>
							<div class="brand">
								<p id="autocomplete_brand">브랜드</p>
							</div>
							<div class="category">
								<p id="autocomplete_category">카테고리</p>
							</div>
						</div>
						<div class="autocomplete_img">
							<p>
								<span>"<span id="autocomplete_query">{0}</span>"
								</span>에 대한 주요 검색 결과
							</p>
							<!--                                     <p><span>"<span id="autocomplete_query"></span>&#32;"</span>에 대한 주요 검색 결과</p> -->
							<ul id="auto2">
							</ul>
						</div>
					</div>
				</div>
				<!--// 검색어 입력 후 (검색어 자동완성) -->
			</div>
			<!--//검색박스 활성화 data_react -->
		</div>
		<!--// 201705 search_box_wrap -->
		<div class="util_menu" style="display: block;">
			<ul class="clearfix">
				<li><a href="/member/login"
					onclick="GA_Event('공통','헤더_메뉴','로그인')">로그인 <!-- 로그인 -->
				</a></li>
				<li class="header_dropmemu mypage"><a href="/mypage"
					class="btn" onclick="GA_Event('공통','헤더_메뉴','마이페이지')">마이페이지</a>
					<div class="list"
						style="display: none; height: 168px; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px;">
						<ul>
							<li><a href="/mypage/order/myorders"
								onclick="GA_Event('공통','헤더_메뉴','마이페이지_주문조회')">주문조회 <!-- 주문조회 -->
							</a></li>
							<li><a href="/mypage/myGradeInfo"
								onclick="GA_Event('공통','헤더_메뉴','마이페이지_나의회원등급')">나의회원등급 <!-- 온라인등급 -->
							</a></li>
							<li><a href="/mypage/voucher"
								onclick="GA_Event('공통','헤더_메뉴','마이페이지_쿠폰조회')">쿠폰조회 <!-- 쿠폰조회 -->
							</a></li>
							<li><a href="/mypage/mypoint"
								onclick="GA_Event('공통','헤더_메뉴','마이페이지_마일리지조회')">마일리지조회 <!-- 포인트조회 -->
							</a></li>
							<li><a href="/mypage/myEGiftCard"
								onclick="GA_Event('공통','헤더_메뉴','마이페이지_e-Gift Card')">e-Gift
									Card <!-- e-Gfit Card -->
							</a></li>
							<li><a href="/mypage/personInfomationChangePWCheck"
								onclick="GA_Event('공통','헤더_메뉴','마이페이지_회원정보변경')">회원정보변경 <!-- 회원정보변경 -->
							</a></li>
							<li><a href="/svcenter/mantomaninquiry"
								onclick="GA_Event('공통','헤더_메뉴','마이페이지_온라인상담')">온라인상담 <!-- 온라인 상담 -->
							</a></li>
						</ul>
					</div></li>
			</ul>
		</div>
	</div>
</div>