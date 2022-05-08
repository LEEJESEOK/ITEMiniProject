<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<script type="text/javascript">
	//<![CDATA[
	// #1067 - 201803 메인 개편
	function applyCategory() {

		var brandNameArray = new Array();
		var brandCodeArray = new Array();
		var parentBrandCodeArray = new Array();
		var sortIndexArray = new Array();
		var valueSplitArray = new Array();
		var dataValue = "";

		$("input:checkbox[class=\"checkboxEvent\"]").each(function() {
			if (this.checked) {
				dataValue = this.value;
				valueSplitArray = dataValue.split('#');
				brandNameArray.push(this.title);
				parentBrandCodeArray.push(valueSplitArray[0]);
				brandCodeArray.push(valueSplitArray[1]);
				sortIndexArray.push(valueSplitArray[2]);
			}
		});
		var parentBrandCode = parentBrandCodeArray.join(",");
		var brandName = brandNameArray.join(",");
		var brandCode = brandCodeArray.join(",");
		var sortIndex = sortIndexArray.join(",");

		$.ajax({
			type : "GET",
			url : "/intro/setCategoryList",
			data : {
				"brandName" : brandName,
				"brandCode" : brandCode,
				"parentBrandCode" : parentBrandCode,
				"sortIndex" : sortIndex
			},
			success : function(data) {
				window.location.reload();
			},
			error : function(e) {
				console.log("error", e);
			}
		});

	}

	function resetCategory() {

		$("input:checkbox[class=\"checkboxEvent\"]").each(function() {
			if (this.checked) {
				this.checked = false;
			}
		});
		applyCategory();
	}

	function searchOn() {
		searchInit();
		$('div.gnb_sh_wrap').css("display", "block");
		$('div.util_menu').css("display", "none");
		$('div.gnb_sh_result').css("display", "block");

	}

	function searchOff() {

		$('div.util_menu').css("display", "block");
		$('div.gnb_sh_wrap').css("display", "none");

	}

	function showTab() {

		$('div.gnb_sh_result').css("display", "block");

	}

	// 쿠키 생성
	function setCookie(cName, cValue, cDay) {
		var expire = new Date();
		expire.setDate(expire.getDate() + cDay);
		cookies = cName + '=' + escape(cValue) + '; path=/ ';
		if (typeof cDay != 'undefined')
			cookies += ';expires=' + expire.toGMTString() + ';';
		document.cookie = cookies;
	}
	//쿠키 생성 (00시 제거)
	function setOneDayCookie(cName, cValue, cDay) {
		var currentDate = new Date();
		var expire = new Date(currentDate.getFullYear(),
				currentDate.getMonth(), currentDate.getDate() + cDay, 0, 0, 0);
		cookies = cName + '=' + escape(cValue) + '; path=/ ';
		if (typeof cDay != 'undefined')
			cookies += ';expires=' + expire.toGMTString() + ';';
		document.cookie = cookies;
	}

	// 쿠키 가져오기
	function getCookie(cName) {
		cName = cName + '=';
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cName);
		var cValue = '';
		if (start != -1) {
			start += cName.length;
			var end = cookieData.indexOf(';', start);
			if (end == -1)
				end = cookieData.length;
			cValue = cookieData.substring(start, end);
		}
		return unescape(cValue);
	}

	//쿠키 삭제
	function deletecookie(name) {
		var today = new Date();
		var path = "/";
		var lastIndex = path.lastIndexOf('/');
		path = path.substring(0, lastIndex);
		today.setDate(today.getDate() + -1);
		document.cookie = name + "=; path=" + path + "; expires="
				+ today.toGMTString() + ";";
	}

	function deletecookiePath(name, path) {
		var today = new Date();

		if (path == "") {
			path = "/";
		}

		today.setDate(today.getDate() + -1);
		document.cookie = name + "=; path=" + path + "; expires="
				+ today.toGMTString() + ";";
	}

	function searchInit() {
		var settingCookie = getCookie("searchSaveYN");
		if (settingCookie == "on") {

			$('#searchSaveYN').text("끄기");
			$('#searchSaveYNfame').text("끄기");

		} else {
			$('#searchSaveYN').text("저장");
			$('#searchSaveYNfame').text("저장");

		}
	}

	function ie8AlertHide() {
		setCookie("ie8AlertHideYN", "on", 365);
		$("#alertIE8").hide();
	}

	$(document)
			.ready(
					function() {

						$('.gnb_nav.hscene1906 .cate_m .hscene')
								.mouseover(
										function() { // 툴팁
											$(
													'.gnb_nav.hscene1906 .cate_m li .delch_box')
													.addClass('on');
										});
						$('.gnb_nav.hscene1906 .cate_m .hscene')
								.mouseout(
										function() {
											$(
													'.gnb_nav.hscene1906 .cate_m li .delch_box')
													.removeClass('on');
										});

						var todayDate = new Date();
						var startDate = new Date('2018/05/29 00:00:01'), endDate = new Date(
								'2018/06/17 23:59:59');
						if (todayDate.getTime() >= startDate.getTime()
								&& todayDate.getTime() <= endDate.getTime()) {
							$("#athome_header_event").show();
						} else {
							$("#athome_header_org").show();
						}

						//IE8버젼 체크
						if (getCookie("ie8AlertHideYN") != "on") {
							if (navigator.appVersion.indexOf('MSIE 8.0') >= 0
									|| navigator.appVersion
											.indexOf('Trident/4.0') >= 0) {
								var html = "<div style='position:relative; width: 100%; height: 30px;'><div style='position:fixed;width:100%;background:#ffffbc none repeat scroll 0% 0%; text-align: center; z-index: 999; line-height: 30px;'>";
								html += "Thehandsome.com은 인터넷 익스플로러 10 이상에 최적화되어 있습니다.";
								html += " <a href='http://windows.microsoft.com/ko-kr/windows/downloads'><strong>[브라우저 업데이트 바로가기]</strong></a>";
								html += "<a href='#' onclick='ie8AlertHide();' style='display:block;float:right;padding-right:10px'>X</a></div></div>";
								$(".loading_bar").before(
										"<div align='center' id='alertIE8'>"
												+ html + "</div>");
							}
						}

						settingCookie = getCookie("searchSaveYN");

						if (settingCookie == "") {
							setCookie("searchSaveYN", "on", 365);
						}

						$('#gnbsearch')
								.click(
										function() {
											var searchwords = $(
													'#gnbsearchwords').val();
											searchwords = searchwords.replace(
													/(^\s*)|(\s*$)/g, "");

											if (searchwords != "") {
												location.href = "/hssearch?searchwords="
														+ searchwords;
											} else {
												$('#gnbsearchwords').val("");
												alert("검색어를 입력해주세요.");
											}
										});

						$('.btn_svclose').click(function() {
							settingCookie = getCookie("searchSaveYN");
							if ($(this).children('span').text() == "끄기") {
								$(this).children('span').text("저장");
							} else {
								$(this).children('span').text("끄기");
							}
							if (settingCookie == "off") {
								$(this).children('span').attr("save", "on");
								setCookie("searchSaveYN", "on", 365);
							} else {
								$(this).children('span').attr("save", "off");
								setCookie("searchSaveYN", "off", 365);
							}

						});
						$('.favBtn').click(function() {

							words = $(this).text();
							location.href = "/hssearch?searchwords=" + words;

						});
						$('.newlyBtn').click(function() {

							words = $(this).text();
							location.href = "/hssearch?searchwords=" + words;

						});

						var sw1 = decodeURIComponent(escape(getCookie("HS_Seachwords1")));
						var sw2 = decodeURIComponent(escape(getCookie("HS_Seachwords2")));
						var sw3 = decodeURIComponent(escape(getCookie("HS_Seachwords3")));
						var sw4 = decodeURIComponent(escape(getCookie("HS_Seachwords4")));
						var sw5 = decodeURIComponent(escape(getCookie("HS_Seachwords5")));

						var sw1_date = sw1 != "" ? sw1.split("_")[1] : "";
						var sw2_date = sw2 != "" ? sw2.split("_")[1] : "";
						var sw3_date = sw3 != "" ? sw3.split("_")[1] : "";
						var sw4_date = sw4 != "" ? sw4.split("_")[1] : "";
						var sw5_date = sw5 != "" ? sw5.split("_")[1] : "";

						var arr = [ sw1, sw2, sw3, sw4, sw5 ];
						var arr_date = [ sw1_date, sw2_date, sw3_date,
								sw4_date, sw5_date ];

						arr_date.sort(compStringReverse);

						for (var i = 0; i < arr_date.length; i++) {
							for (var j = 0; j < arr.length; j++) {
								if (arr_date[i] != "") {
									if (arr[j].indexOf(arr_date[i]) > 0) {
										$("#searchWord" + (i + 1)).text(
												arr[j].split("_")[0]);
										$('.searchWord' + (i + 1)).css(
												"display", "block");

										$("#searchWord" + (i + 1)).next().attr(
												"onclick",
												"deletecookie('HS_Seachwords"
														+ (j + 1) + "')");
									}
								}
							}

							if (arr_date[i] == "") {
								$("#searchWord" + (i + 1)).text("");
							}
						}

						deletecookie("memberGb");

						//자동로그인

						//vip 채팅 서비스

						// ##1141 - 카테고리 개편
						outletGnbNav();//아울렛 gnb

					});

	function hpAutoLogin(data) {
		//console.log("data.succYn:"+data.succYn);
		if (data.succYn == "Y") {
			$.ajax({
				type : "GET",
				url : "/hpoint/simpleJoinMember",
				data : {
					"mcustNo" : data.mcustNo
				},
				success : function(data) {
					if (data.resultCode == "L") {
						$("#hcid").val(data.uid);
						$("#autologinForm").submit();
					}
				},
				error : function(e) {
				}
			});
		}
	}

	function compStringReverse(a, b) {
		if (a > b)
			return -1;
		if (b > a)
			return 1;
		return 0;
	}

	function EnterSearchHeader() {

		var searchwords = $('#gnbsearchwords').val();
		searchwords = searchwords.replace(/(^\s*)|(\s*$)/g, "");

		if (searchwords != "") {
			location.href = "/hssearch?searchwords=" + searchwords;
		} else {
			$('#gnbsearchwords').val("");
			alert("검색어를 입력해주세요.");
		}

	}

	function language(isoCode) {
		if (location.href.indexOf("/handsome/") > -1) {

			$.ajax({
				type : "post",
				url : "/logout?" + getCSRFToken(),
				error : function(request, status, error) {
					//console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
					$.ajax({
						type : "post",
						url : "/_s/language" + "?" + "code=" + isoCode,
						dataType : "json",
						error : function(request, status, error) {
							console.log("code:" + request.status + "\n"
									+ "message:" + request.responseText + "\n"
									+ "error:" + error);
						},
						success : function(result) {
							location.href = "/";
						}
					});
				},
				success : function(result) {

					$.ajax({
						type : "post",
						url : "/_s/language" + "?" + "code=" + isoCode,
						dataType : "json",
						error : function(request, status, error) {
							console.log("code:" + request.status + "\n"
									+ "message:" + request.responseText + "\n"
									+ "error:" + error);
						},
						success : function(result) {
							location.href = "/";
						}
					});
				}
			});

		} else {
			location.href = "/" + isoCode;
		}
	}

	function getCSRFToken() {
		return "CSRFToken=" + $("#CSRFForm [name='CSRFToken']").first().val();
	}

	function hplogoutSuccess(data) {
		deletecookie("UID");
		deletecookie("criteoEmail");
		deletecookie("memberGb");
		location.href = "/logout";
	}

	function chkFavoriteBrand() {

	}

	//START OF 메인 검색창////////////////////////
	// #1067 - 201803 메인 개편
	$(function() {

		/*
		getNotLoginMyKeyWord($("#query").val(), 10);
		 */
		/* 
			// 내가 찾은 검색어(로그인 상태) : set, get in cookie
			getLoginMyKeyWord($("#query").val());
		 */

		if (navigator.userAgent.toLowerCase().indexOf("firefox") > -1) {
			$("#searchBox").on("keypress", function(event) {
				var keyCode = event.which || event.keyCode;
			});
		}

		$('#query')
				.click(
						function() {
							// 스타일 서치 아이템   
							doStyleItem();
							$('.search_box_wrap')
									.click(
											function() {
												if (!$('.search_box_wrap')
														.hasClass('on')) {
													var dataHeight = $(
															'.data_react')
															.height();
													$("#transparent_mask")
															.show();

													$('.search_box_wrap')
															.stop()
															.animate(
																	{
																		width : '406px',
																		height : '+= dataHeight +"px"',
																		"max-height" : "430px",
																		"opacity" : 1
																	}, 'fast');

													$('.search_box_wrap')
															.addClass('on');
													$('.btn_search_tab').stop()
															.show();

													$('.data_react').stop()
															.show();

													$('#styleSearchSlider')
															.hide();
													$('.search_box .search')
															.stop().fadeIn(
																	'fast');

													//검색창 텝 >> style search slider
													$(document)
															.find(
																	'#styleSearchSlider')
															.flexslider(
																	{
																		animation : "slide",
																		slideshow : false,
																		directionNav : true,
																		after : function(
																				slider) {
																			$(
																					"#styleSearchSlider .slides li")
																					.not(
																							".clone")
																					.each(
																							function(
																									idx) {
																								if ($(
																										this)
																										.hasClass(
																												"flex-active-slide")) {
																									$(
																											".ss_txt_list li a")
																											.removeClass(
																													"on");
																									$(
																											".ss_txt_list li:eq("
																													+ idx
																													+ ") a")
																											.addClass(
																													'on');
																								}
																							});
																		}
																	});
													var styleTotal = $(
															"#styleSearchSlider .slides li")
															.size();
													if (styleTotal <= 1) {
														$(
																"#styleSearchSlider .flex-direction-nav")
																.hide();
													}

													//keyup 자동완성 리스트

													//keyup 자동완성 리스트
													$('#query')
															.keyup(
																	function(e) {
																		if (!$(
																				'#query')
																				.val() == "") {
																			$(
																					'.search_tab')
																					.hide();

																			$(
																					'.search_box_wrap')
																					.stop()
																					.animate(
																							{
																								width : '477px'
																							},
																							'fast',
																							function() {
																								$(
																										'.search_autocomplete')
																										.show();
																							});
																			$(
																					'.search_box_wrap.on .search_box input[type="search"]')
																					.stop()
																					.animate(
																							{
																								width : '461px'
																							},
																							'fast');
																			/*  var atcRightHeight = $(".autocomplete_right").height();//자동완성리스트 높이 조절
																			var atctxtHeight = $(".autocomplete_txt").height();
																			if(atcRightHeight < atctxtHeight){
																			$(".autocomplete_right").height(atctxtHeight);
																			} */

																		} else {
																			$(
																					'.search_autocomplete')
																					.hide();
																			$(
																					'.search_tab')
																					.show();

																			$(
																					'.search_box_wrap')
																					.stop()
																					.animate(
																							{
																								width : '406px'
																							});
																			$(
																					'.search_box_wrap.on .search_box input[type="search"]')
																					.stop()
																					.animate(
																							{
																								width : '390px'
																							});

																		}
																		$(
																				'.autocomplete_txt li a')
																				.each(
																						function() {
																							if (!$(
																									this)
																									.hasClass(
																											'brand_main')) {
																								$(
																										this)
																										.html(
																												$(
																														this)
																														.html()
																														.replace(
																																"<strong>",
																																""));
																								$(
																										this)
																										.html(
																												$(
																														this)
																														.html()
																														.replace(
																																"</strong>",
																																""));

																								if ($(
																										this)
																										.html()
																										.indexOf(
																												$(
																														'#searchBox')
																														.val()) > -1) {
																									$(
																											this)
																											.html(
																													$(
																															this)
																															.html()
																															.replace(
																																	$(
																																			'#searchBox')
																																			.val(),
																																	"<strong>"
																																			+ $(
																																					'#searchBox')
																																					.val()
																																			+ "</strong>"));
																								}
																							}
																						});
																	});

													//검색창 click시 이미 value 값이 있을 때
													if (!$('#query').val() == "") {
														$('.search_box_wrap')
																.stop()
																.animate(
																		{
																			width : '477px',
																			'opacity' : 1
																		},
																		'fast');
														$(
																'.search_box_wrap.on .search_box input[type="search"]')
																.stop()
																.animate(
																		{
																			width : '461px'
																		},
																		'fast');
													} else {
														$(
																'.search_box_wrap.on .search_box input[type="search"]')
																.stop()
																.animate(
																		{
																			width : '390px'
																		},
																		'fast');
													}

												}

												$('#styleSearchSlider')
														.fadeIn();

												//close button
												$(
														'.search_box a span.btn_close')
														.on(
																'click',
																function() {

																	$(
																			'.search_box_wrap')
																			.stop()
																			.animate(
																					{
																						width : '30px',
																						height : '-= dataHeight +"px"',
																						"opacity" : 0
																					});

																	$(
																			'.data_react')
																			.stop()
																			.hide();
																	$(
																			'.btn_search_tab')
																			.stop()
																			.hide();
																	$(
																			'.search_box_wrap')
																			.removeClass(
																					'on');
																	$(
																			"#transparent_mask")
																			.hide();
																	$(
																			'.search_box .search')
																			.stop()
																			.fadeOut(
																					'fast');
																	if (!$(
																			'#query')
																			.val() == "") {
																		$(
																				'#query')
																				.val(
																						"");
																		$(
																				'.search_autocomplete')
																				.hide();
																		$(
																				'.search_tab')
																				.show();
																	}
																	return false;
																});
											});
							$("#transparent_mask")
									.click(
											function() {
												if ($('.search_box_wrap')
														.hasClass('on')) {

													$('.search_box_wrap')
															.stop()
															.animate(
																	{
																		width : '30px',
																		height : '-= dataHeight +"px"',
																		"opacity" : 0
																	});

													$('.data_react').stop()
															.hide();
													$('.btn_search_tab').stop()
															.hide();
													$('.search_box_wrap')
															.removeClass('on');
													$("#transparent_mask")
															.hide();
													$('.search_box .search')
															.stop().fadeOut(
																	'fast');
												}
											});
							//검색창 텝
							$(document).on('click', '.btn_search_tab a',
									function() {
										$(this).addClass('on');
										$(this).siblings().removeClass('on');
										$('.data_react .s_tab').stop().hide();
										var activeTab = $(this).attr('rel');
										$('.' + activeTab).stop().show();
									});
						});
	});

	//##1141 - 카테고리 개편
	function outletGnbNav() {//아울렛 gnb
		$('.outlet_brand1803 .sub_menu > ul > li > ul > li > a').on(
				'mouseenter focus',
				function() {
					$('.outlet_brand1803 .sub_menu > ul > li > ul > li > a')
							.removeClass('on');
					$('.outlet_brand1803 .sub_menu > ul > li > ul > li > div')
							.stop().hide();
					$(this).addClass('on');
					$(this).parent('li').children('div').stop().css('display',
							'inline-block');
					var liWidthSumDep3 = 0;
					$(this).next('div').children('ul').children('li').each(
							function(idx3) {
								var liWidth = $(this).width();
								var liLength = $(this).length;
								if (idx3 > 0) {
									liWidthSumDep3 = liWidthSumDep3
											+ (liWidth + 25);
								}
								$(this).width(liWidth);
							});
					$(this).next('div').children('ul').width(
							liWidthSumDep3 - 10);
				});
		$('.outlet_brand1803 .sub_menu > ul > li > ul > li').on(
				'mouseleave blur',
				function() {
					$('.outlet_brand1803 .sub_menu > ul > li > ul > li > a')
							.removeClass('on');
					$('.outlet_brand1803 .sub_menu > ul > li > ul > li > div')
							.stop().hide();
				});
	}

	//]]>
</script>
<div class="top_nav topnav1903">
	<div class="top_nav_wrap clFearfix">
		<div class="brand_menu brand_menu1903">
			<ul class="clearfix">
				<li><span class="on"><a href="/main">HOME</a></span></li>
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
						class="btn_close">닫기</span></a> <a href="javascript:doSearch();"
						class="search"><span class="ico">검색</span></a>
				</div>
			</form>
			<!--검색박스 활성화 data_react -->
			<div class="data_react">
				<!-- tab 검색어 입력 전 -->
				<div class="search_tab">
					<div class="btn_search_tab" style="display: none;">
						<a href="javascript:void(0);" rel="recent_search"
							class="btn_recent_search on">최근 검색어</a> <a
							href="javascript:void(0);" rel="style_search"
							class="btn_style_search" id="btn_style_search">Style Search</a> <a
							href="javascript:void(0);" rel="popular_search"
							class="btn_style_search" id="btn_top_search"
							style="display: none;">인기검색어</a>
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

				<c:choose>
					<c:when test="${empty session_mid}">
						<li><a href="/member/login">로그인 </a></li>
					</c:when>
					<c:otherwise>
						<li><a href="/member/logout">로그아웃 </a></li>
					</c:otherwise>
				</c:choose>
				<li class="header_dropmemu mypage"><a href="/mypage"
					class="btn">마이페이지</a>
					<div class="list"
						style="display: none; height: 168px; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px;">
						<ul>
							<li><a href="/mypage/infoChangePWCheck">회원정보변경
							</a></li>
						</ul>
					</div></li>
			</ul>
		</div>
	</div>
</div>