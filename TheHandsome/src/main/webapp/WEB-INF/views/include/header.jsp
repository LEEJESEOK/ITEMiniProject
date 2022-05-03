<div class="header header_fixed header_main1903">
	<script type="text/javascript" src="/_ui/desktop/common/js/SsoAjax.js"></script>

	<script>
		var arkQuery = $.noConflict(true);
	</script>

	<script>
		/*
		 * 챗봇 관련 스크립트
		 */
		// 챗봇의 푸시링크를 클릭했을 때
		function openChatView(token, talkId) {
			callChatbot(token, talkId);
		}

		function callChatbot(token, talkId) {
			if (token == null) {
				$
						.ajax({
							type : "POST",
							url : "/ko/chatbot/token",
							data : {
								"CSRFToken" : "0228661a-4d03-4d61-8bf1-f14b757c6839"
							},
							async : false,
							success : function(data) {
								if (data.result == "SHOULD_LOGIN") {
									var la = new layerAlert("로그인이 필요합니다");
									la.confirmAction = function() {//확인 버튼 클릭시 추가 호출 펑션
										location.href = "/ko/member/login";
									};
								} else if (data.result == "NOT_VIP") {
									var la = new layerAlert(
											"VVIP 회원님만 이용 가능하십니다");
									la.confirmAction = function() {//확인 버튼 클릭시 추가 호출 펑션
									};
								} else if (data.result == "OFF-HOURS") {//일반 : CREW, FRIEND, 간편회원일경우, 평일 오전 9시 30분 ~ 오후 6시 30분만 사용가능
									var la = new layerAlert(
											"평일(월~금) 09:00 ~ 18:00 (토/일, 공휴일 휴무)에 이용 가능하십니다");
									la.confirmAction = function() {//확인 버튼 클릭시 추가 호출 펑션
									};
								} else {
									if (data.token != "") {
										token = data.token;
									}
								}
							},
							error : function(e) {
								;
							}
						});
			}

			if (token != null && token != '') {
				try {
					ga('gp.send', 'pageview', {
						'title' : '하니톡_채팅서비스', //가상페이지 화면명
						'location' : 'http://www.thehandsome.com/ko/hanitalk' //가상페이지URL
					});
				} catch (e) {
					console.log(e);
				}
				$("#chatbot_token").val(token);
				$("#chatbot_talkId").val(talkId);

				var targetTalkUrl = ""
				if (location.href.indexOf("www.thehandsome.com") > -1) { //운영
					//운영 챗봇 url
					targetTalkUrl = "https://talk.thehandsome.com/front/v1/jsp/view/chat.jsp";
				} else { //그외
					//개발 챗봇 url
					targetTalkUrl = "https://handsome-dev.enomix.co.kr/front/v1/jsp/view/chat.jsp";
				}

				$("#chatbotForm").attr("action", targetTalkUrl);

				$("#chatbotForm").submit();
			}
			return false;
		}
		/*
		 * // 챗봇 관련 스크립트
		 */
		function GA_Common(action, e) {
			var eventCategory;
			var eventAction;
			var label;

			if (action == "topNav") {
				eventCategory = "공통";
				eventAction = "탑_네비게이션";
				label = escape(e.text());
			} else if (action == "news") {
				eventCategory = "공통";
				eventAction = "뉴스";
				label = escape(e.text());
			} else if (action.indexOf("commonBrand") > -1) {
				eventCategory = "공통_브랜드";
				eventAction = gaBrandType(action.split('_')[0]);
				label = e.text();
			} else if (action.indexOf("brandLike") > -1) {
				eventCategory = "공통_브랜드";
				eventAction = gaBrandType(action.split('_')[0]) + "_좋아요";
				label = e.parent().find("a").text();
			}

			GA_Event(eventCategory, eventAction, label);
		}

		function gaBrandType(brandCode) {
			var brandTypeNm = "";
			if (brandCode == "WE") {
				brandTypeNm = "여성_브랜드";
			} else if (brandCode == "ME") {
				brandTypeNm = "남성_브랜드";
			} else if (brandCode == "ED") {
				brandTypeNm = "편집_브랜드";
			} else if (brandCode == "OS") {
				brandTypeNm = "해외_브랜드";
			}
			return brandTypeNm;
		}
	</script>

	<script type="text/javascript">
		var historyDelete = '검색기록전체삭제';
		var typingWord = '검색어를 입력해주세요.';
		var gotoBrand = '브랜드바로가기';
		var noRecommendCategory = '추천 카테고리가 없습니다.';
		var noRecommendBrand = '추천 브랜드가 없습니다.';
		var noRecommendResult = '해당 단어로 시작하는 검색어가 없습니다.';
		var brandReport = '브랜드리포트';
		var graph = '그래프';
		var fold = '접기';

		var favoriteBrands = new Array();
	</script>
	<script type="text/javascript"
		src="/_ui/desktop/common/wisenut/ark/js/beta.fix.js"></script>
	<script type="text/javascript"
		src="/_ui/desktop/common/wisenut/ark/js/ark.js"></script>
	<script type="text/javascript"
		src="/_ui/desktop/common/wisenut/js/search.js"></script>
	<script type="text/javascript">
		//<![CDATA[
		// #1067 - 201803 메인 개편
		function applyCategory() {

			layerAlert('로그인 후 당신만의 브랜드 즐겨찾기를 <br /> 완성하세요.');
			return;

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

			//braze
			brazeCustomAttribut(brandCodeArray);

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
			var expire = new Date(currentDate.getFullYear(), currentDate
					.getMonth(), currentDate.getDate() + cDay, 0, 0, 0);
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
			var path = "/ko/";
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
														'#gnbsearchwords')
														.val();
												searchwords = searchwords
														.replace(
																/(^\s*)|(\s*$)/g,
																"");

												if (searchwords != "") {
													location.href = "/ko/hssearch?searchwords="
															+ searchwords;
												} else {
													$('#gnbsearchwords')
															.val("");
													alert("검색어를 입력해주세요.");
												}
											});

							$('.btn_svclose')
									.click(
											function() {
												settingCookie = getCookie("searchSaveYN");
												if ($(this).children('span')
														.text() == "끄기") {
													$(this).children('span')
															.text("저장");
												} else {
													$(this).children('span')
															.text("끄기");
												}
												if (settingCookie == "off") {
													$(this).children('span')
															.attr("save", "on");
													setCookie("searchSaveYN",
															"on", 365);
												} else {
													$(this)
															.children('span')
															.attr("save", "off");
													setCookie("searchSaveYN",
															"off", 365);
												}

											});
							$('.favBtn')
									.click(
											function() {

												words = $(this).text();
												location.href = "/ko/hssearch?searchwords="
														+ words;

											});
							$('.newlyBtn')
									.click(
											function() {

												words = $(this).text();
												location.href = "/ko/hssearch?searchwords="
														+ words;

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

											$("#searchWord" + (i + 1)).next()
													.attr(
															"onclick",
															"deletecookie('HS_Seachwords"
																	+ (j + 1)
																	+ "')");
										}
									}
								}

								if (arr_date[i] == "") {
									$("#searchWord" + (i + 1)).text("");
								}
							}

							//자동로그인

							var ssoUrl = "https://sso.h-point.co.kr:29865"
									+ "/co/setSsoReqJSONP.hd";
							gfnSsoReqAjax(ssoUrl, hpAutoLogin);

							//vip 채팅 서비스
							if ("" != "") {
								var pag = "main201903Page";

								var chkPag = [ "svCenterMainPage",
										"noticePage", "manToManInquiryPage",
										"faqPage", "mendingPage",
										"vocProvisionPage", "vocInfoFormPage",
										"memberJoinGuidePage",
										"theClubInfoPage",
										"memberBenefitGuidePage",
										"pointGuidePage", "couponGuidePage",
										"paymentGuidePage", "asGuidePage" ];

								var vipPassCheck = "N"; // VVIP/THESTAR/STAR 등급 체크
								var timePassCheck = "N"; // 평일 0900~1800 체크

								if ("" == "VVIP"
										|| ("" == "THESTAR" || "" == "STAR")) {
									vipPassCheck = "Y";
								}

								if (vipPassCheck == "N" && "" == "PASS") { // MANIA 이하 등급, 평일 체크 
									// chatbotInfo "PASS" : 등급이 VVIP/THESTAR/STAR/MANIA 이거나 평일 0900~1800
									var hour = new Date().format("HHmm");
									var weekName = new Date().format("E");
									if (weekName != "일요일" && weekName != "토요일"
											&& hour >= "0900" && hour <= "1800") {
										$
												.ajax({
													type : "POST",
													url : "/ko/chatbot/chkholiday",
													data : {
														"CSRFToken" : "0228661a-4d03-4d61-8bf1-f14b757c6839"
													},
													async : false,
													success : function(result) {
														if (result == true) {
															timePassCheck = "Y";
														}
													},
													error : function(request,
															statuss, error) {
														;
													}
												});
									}
								}

								if ((vipPassCheck == "Y" || timePassCheck == "Y")
										&& "main201903Page" == "main201903Page") {
									$('#chatbotMain').show();
								} else {
									$('#chatbotMain').hide();
								}

								if (chkPag.indexOf(pag) > -1) {
									if (vipPassCheck == "Y"
											|| timePassCheck == "Y") {
										$('#chatbot').show();
									} else {
										$('#chatbot').hide();
									}
								} else {
									$('#chatbot').hide();
								}
							}

							//athome
							if ("" != "") {
								// #1067 - 메인 개편

								$('.ico.athome').mouseenter(function() {
									$('.athome_info').show();
								});
								$('.athome_header').mouseleave(function() {
									$('.athome_info').hide();
								});
							}

							// ##1141 - 카테고리 개편
							outletGnbNav();//아울렛 gnb

							// 20201214 braze 선호브랜드 추가/삭제 일괄 처리로 인한 진입시 선호브랜드 보관
							chkFavoriteBrand();
						});

		function athomeBlink() {
			$('.ico.athome').css('opacity', '0');
			setTimeout(function() {
				$('.ico.athome').css('opacity', '1');
			}, 500);
		}
		function athomeEventBlink() {
			$('.athome_event').css('opacity', '0');
			setTimeout(function() {
				$('.athome_event').css('opacity', '1');
			}, 500);
		}

		function hpAutoLogin(data) {
			//console.log("data.succYn:"+data.succYn);
			if (data.succYn == "Y") {
				$.ajax({
					type : "GET",
					url : "/ko/hpoint/simpleJoinMember",
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
				location.href = "/ko/hssearch?searchwords=" + searchwords;
			} else {
				$('#gnbsearchwords').val("");
				alert("검색어를 입력해주세요.");
			}

		}

		function language(isoCode) {
			if (location.href.indexOf("/handsome/") > -1) {

				$.ajax({
					type : "post",
					url : "/ko/_s/language" + "?" + "code=" + isoCode,
					dataType : "json",
					error : function(request, status, error) {
						console.log("code:" + request.status + "\n"
								+ "message:" + request.responseText + "\n"
								+ "error:" + error);
					},
					success : function(result) {
						location.href = "/ko/";
					}
				});

			} else {
				location.href = "/" + isoCode;
			}
		}

		function getCSRFToken() {
			return "CSRFToken="
					+ $("#CSRFForm [name='CSRFToken']").first().val();
		}

		function setLogout() {
			deletecookie("UID");
			deletecookie("criteoEmail");
			deletecookie("memberGb");
			location.href = "/ko/logout";
		}

		function chkFavoriteBrand() {

		}

		function brazeCustomAttribut(target) {
			if (favoriteBrands.length > 0) {
				// REMOVE 체크
				for (var i = 0; i < favoriteBrands.length; i++) {
					if (target.indexOf(favoriteBrands[i]) > -1) {
						//skip
					} else {
						appboy.getUser().removeFromCustomAttributeArray(
								"likeBrand", favoriteBrands[i]);
					}
				}

				// ADD 체크
				for (var j = 0; j < target.length; j++) {
					if (favoriteBrands.indexOf(target[j]) > -1) {
						//skip
					} else {
						appboy.getUser().addToCustomAttributeArray("likeBrand",
								target[j]);
					}
				}
			} else {
				if (target.length > 0) {
					for (var x = 0; x < target.length; x++) {
						appboy.getUser().addToCustomAttributeArray("likeBrand",
								target[x]);
					}
				}
			}
		}

		//START OF 메인 검색창////////////////////////
		// #1067 - 201803 메인 개편
		$(function() {

			getNotLoginMyKeyWord($("#query").val(), 10);

			/* 
			    // 내가 찾은 검색어(비로그인 상태) set, get in DB
			    getNotLoginMyKeyWord($("#query").val(), 10);           
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

														GA_Event('공통', '유틸_메뉴',
																'검색');
														$('.search_box_wrap')
																.stop()
																.animate(
																		{
																			width : '406px',
																			height : '+= dataHeight +"px"',
																			"max-height" : "430px",
																			"opacity" : 1
																		},
																		'fast');

														$('.search_box_wrap')
																.addClass('on');
														$('.btn_search_tab')
																.stop().show();

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
																		function(
																				e) {
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
															$(
																	'.search_box_wrap')
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
														$('.btn_search_tab')
																.stop().hide();
														$('.search_box_wrap')
																.removeClass(
																		'on');
														$("#transparent_mask")
																.hide();
														$('.search_box .search')
																.stop()
																.fadeOut('fast');
													}
												});
								//검색창 텝
								$(document)
										.on(
												'click',
												'.btn_search_tab a',
												function() {
													$(this).addClass('on');
													$(this).siblings()
															.removeClass('on');
													$('.data_react .s_tab')
															.stop().hide();
													var activeTab = $(this)
															.attr('rel');
													$('.' + activeTab).stop()
															.show();
												});
							});
		});

		//##1141 - 카테고리 개편
		function outletGnbNav() {//아울렛 gnb
			$('.outlet_brand1803 .sub_menu > ul > li > ul > li > a')
					.on(
							'mouseenter focus',
							function() {
								$(
										'.outlet_brand1803 .sub_menu > ul > li > ul > li > a')
										.removeClass('on');
								$(
										'.outlet_brand1803 .sub_menu > ul > li > ul > li > div')
										.stop().hide();
								$(this).addClass('on');
								$(this).parent('li').children('div').stop()
										.css('display', 'inline-block');
								var liWidthSumDep3 = 0;
								$(this).next('div').children('ul').children(
										'li').each(
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
			$('.outlet_brand1803 .sub_menu > ul > li > ul > li')
					.on(
							'mouseleave blur',
							function() {
								$(
										'.outlet_brand1803 .sub_menu > ul > li > ul > li > a')
										.removeClass('on');
								$(
										'.outlet_brand1803 .sub_menu > ul > li > ul > li > div')
										.stop().hide();
							});
		}

		function GA_search() {

			var searchForm = document.search;
			var searchwords = escape(searchForm.query.value);

			GA_Event('검색', '직접입력', searchwords);
		}

		//]]>
	</script>
	<form id="autologinForm" name="autologinForm" action="/ko/hp/autologin"
		method="get">
		<input type="hidden" name="hcid" id="hcid" value="e2gaf@naver.com">
	</form>
	<div class="top_nav topnav1903">
		<div class="top_nav_wrap clearfix">
			<div class="brand_menu brand_menu1903">
				<ul class="clearfix">
					<!-- 선호 브랜드 없음 -->
					<li><span class="on"><a href="/ko/main"
							onclick="GA_Event('공통','탑_네비게이션','HOME')">HOME</a></span></li>
					<!-- 로그인 상태 -->
					<!-- 비로그인 상태 -->
					<p class="brand_menu_guide_text">
						로그인 후 아래 '브랜드' 메뉴에서 좋아하는 브랜드를 <span
							style="margin-top: -1px; display: inline-block;">♥</span>해주세요
					</p>
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
									id="searchWord1"></a><a href="javascript:void(0);"
									class="close" onclick="deletecookie('HS_Seachwords1')">닫기</a>
							</div>
							<div class="searchWord2" style="display: none;">
								<a href="javascript:void(0);" class="ml newlyBtn"
									id="searchWord2"></a><a href="javascript:void(0);"
									class="close" onclick="deletecookie('HS_Seachwords2')">닫기</a>
							</div>
							<div class="searchWord3" style="display: none;">
								<a href="javascript:void(0);" class="ml newlyBtn"
									id="searchWord3"></a><a href="javascript:void(0);"
									class="close" onclick="deletecookie('HS_Seachwords3')">닫기</a>
							</div>
							<div class="searchWord4" style="display: none;">
								<a href="javascript:void(0);" class="ml newlyBtn"
									id="searchWord4"></a><a href="javascript:void(0);"
									class="close" onclick="deletecookie('HS_Seachwords4')">닫기</a>
							</div>
							<div class="searchWord5" style="display: none;">
								<a href="javascript:void(0);" class="ml newlyBtn"
									id="searchWord5"></a><a href="javascript:void(0);"
									class="close" onclick="deletecookie('HS_Seachwords5')">닫기</a>
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
				<form name="search" id="search" action="/ko/hssearch/searchCount"
					method="post" onsubmit="return false;">
					<input type="hidden" name="CSRFToken"
						value="0228661a-4d03-4d61-8bf1-f14b757c6839"> <input
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
								class="btn_style_search" id="btn_style_search">Style Search</a>
							<a href="javascript:void(0);" rel="popular_search"
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
							action="/ko/hssearch/searchCount" method="post"
							onsubmit="return false;">
							<input type="hidden" name="query" value=""> <input
								type="hidden" name="collection" value=""> <input
								type="hidden" id="CSRFToken" name="CSRFToken"
								value="0228661a-4d03-4d61-8bf1-f14b757c6839"> <input
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
					<li><a href="/ko/member/login"
						onclick="GA_Event('공통','헤더_메뉴','로그인')">로그인<!-- 로그인 --></a></li>
					<li class="header_dropmemu mypage"><a href="/ko/mypage"
						class="btn" onclick="GA_Event('공통','헤더_메뉴','마이페이지')">마이페이지</a>
						<div class="list">
							<ul>
								<li><a href="/ko/mypage/order/myorders"
									onclick="GA_Event('공통','헤더_메뉴','마이페이지_주문조회')">주문조회<!-- 주문조회 --></a></li>
								<li><a href="/ko/mypage/myGradeInfo"
									onclick="GA_Event('공통','헤더_메뉴','마이페이지_나의회원등급')">나의회원등급<!-- 온라인등급 --></a></li>
								<li><a href="/ko/mypage/voucher"
									onclick="GA_Event('공통','헤더_메뉴','마이페이지_쿠폰조회')">쿠폰조회<!-- 쿠폰조회 --></a></li>
								<li><a href="/ko/mypage/mypoint"
									onclick="GA_Event('공통','헤더_메뉴','마이페이지_마일리지조회')">마일리지조회<!-- 포인트조회 --></a></li>
								<li><a href="/ko/mypage/myEGiftCard"
									onclick="GA_Event('공통','헤더_메뉴','마이페이지_e-Gift Card')">e-Gift
										Card<!-- e-Gfit Card -->
								</a></li>
								<li><a href="/ko/mypage/personInfomationChangePWCheck"
									onclick="GA_Event('공통','헤더_메뉴','마이페이지_회원정보변경')">회원정보변경<!-- 회원정보변경 --></a></li>
								<li><a href="/ko/svcenter/mantomaninquiry"
									onclick="GA_Event('공통','헤더_메뉴','마이페이지_온라인상담')">온라인상담<!-- 온라인 상담 --></a></li>
							</ul>
						</div></li>

					<li>
						<div class="header_dropmemu lang_switch lang_1911">
							<a href="javascript:void(0);" class="btn"
								onclick="GA_Event('공통','헤더_메뉴','LANGUAGE')">LANGUAGE</a>
							<div class="list"
								style="display: none; height: 87px; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px;">
								<ul>
									<li><a href="javascript:language('ko')"
										onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_한국어')">한국어</a></li>
									<li><a href="javascript:language('en')"
										onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_ENGLISH')">ENGLISH</a></li>
									<li><a href="javascript:language('zh')"
										onclick="GA_Event('공통','헤더_메뉴','LANGUAGE_中文')">中文</a></li>
								</ul>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<!-- validation check message global -->
	<input type="hidden" id="validationCheckPwd" value="비밀번호를 재입력 하셔야 합니다.">
	<input type="hidden" id="validationCheck" value="필수데이터가 입력되지 않았습니다.">
	<input type="hidden" id="validationCheckMsg" value="다음 사항을 확인해 주세요.">
	<input type="hidden" id="validationCheckMsg1"
		value="필수데이터가 입력되지 않았습니다."> <input type="hidden"
		id="validationCheckMsg2" value="동일문자를 3번 이상 사용할 수 없습니다."> <input
		type="hidden" id="validationCheckMsg3"
		value="연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다."> <input
		type="hidden" id="validationCheckMsg4" value="Caps Lock 이 켜져 있습니다.">
	<input type="hidden" id="validationCheckMsg5"
		value="이메일 아이디의 중복 확인이 필요합니다."> <input type="hidden"
		id="validationCheckMsg6" value="이메일의 중복확인이 필요합니다."> <input
		type="hidden" id="deliveryOkMsg" value="확인"> <input
		type="hidden" id="deliveryCancelMsg" value="취소">

	<form id="chatbotForm"
		action="https://talk.thehandsome.com/front/v1/jsp/view/chat.jsp"
		method="post" target="chatwindow">
		<input type="hidden" name="token" id="chatbot_token"> <input
			type="hidden" name="talkId" id="chatbot_talkId">
		<div>
			<input type="hidden" name="CSRFToken"
				value="0228661a-4d03-4d61-8bf1-f14b757c6839">
		</div>
	</form>
	<!-- //headerWrap -->
	<div class="gnbwarp com clearfix">
		<h1 class="logo logo1903">
			<a href="/ko/main" onclick="GA_Event('공통', '로고', '상단');">thehandsome.com</a>
		</h1>
		<div class="gnb_nav gnb_nav1903 hscene1906 hscene1910">
			<h2 class="invisible">주메뉴</h2>
			<ul class="cate_m cate_banner gnbul1" id="cate_m_main">
				<li><a href="javascript:void(0);" class="gnb_brand"
					onclick="GA_Event('공통','GNB','브랜드');">브랜드<span class="arr">arrow</span></a>
					<div class="sub_back">
						<div class="sub_menu clearfix" style="">
							<p class="gnbbr_txt">브랜드 명을 클릭하시면 해당 브랜드로 이동합니다.</p>
							<ul class="al_frt1 sm_dep1">
								<!-- #1141 - 카테고리 개편 - 메인 즐겨찾기 브랜드 레이어 -->
								<li><strong>여성 브랜드</strong>
									<ul class="clearfix sm_dep2">
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR01"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="TIME" onclick="GA_Common('WE_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_WE#BR01#1"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_WE_BR01"></label><a
											href="/ko/b/br01"
											onclick="GA_Common('WE_commonBrand',$(this));">TIME</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR02"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="MINE" onclick="GA_Common('WE_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_WE#BR02#2"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_WE_BR02"></label><a
											href="/ko/b/br02"
											onclick="GA_Common('WE_commonBrand',$(this));">MINE</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR19"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="LANVIN COLLECTION"
											onclick="GA_Common('WE_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_WE#BR19#3"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_WE_BR19"></label><a
											href="/ko/b/br19"
											onclick="GA_Common('WE_commonBrand',$(this));">LANVIN
												COLLECTION</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR03"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="SYSTEM" onclick="GA_Common('WE_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_WE#BR03#4"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_WE_BR03"></label><a
											href="/ko/b/br03"
											onclick="GA_Common('WE_commonBrand',$(this));">SYSTEM</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR04"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="SJSJ" onclick="GA_Common('WE_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_WE#BR04#5"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_WE_BR04"></label><a
											href="/ko/b/br04"
											onclick="GA_Common('WE_commonBrand',$(this));">SJSJ</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR08"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="the CASHMERE"
											onclick="GA_Common('WE_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_WE#BR08#6"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_WE_BR08"></label><a
											href="/ko/b/br08"
											onclick="GA_Common('WE_commonBrand',$(this));">the
												CASHMERE</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR44"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="CLUB MONACO"
											onclick="GA_Common('WE_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_WE#BR44#7"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_WE_BR44"></label><a
											href="/ko/b/br44"
											onclick="GA_Common('WE_commonBrand',$(this));">CLUB
												MONACO</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR43"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="OBZEE" onclick="GA_Common('WE_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_WE#BR43#8"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_WE_BR43"></label><a
											href="/ko/b/br43"
											onclick="GA_Common('WE_commonBrand',$(this));">OBZEE</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR31"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="LÄTT" onclick="GA_Common('WE_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_WE#BR31#9"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_WE_BR31"></label><a
											href="/ko/b/br31"
											onclick="GA_Common('WE_commonBrand',$(this));">LÄTT</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR45"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="O'2nd" onclick="GA_Common('WE_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_WE#BR45#10"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_WE_BR45"></label><a
											href="/ko/b/br45"
											onclick="GA_Common('WE_commonBrand',$(this));">O'2nd</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR61"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="oera" onclick="GA_Common('WE_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_WE#BR61#11"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_WE_BR61"></label><a
											href="/ko/b/br61"
											onclick="GA_Common('WE_commonBrand',$(this));">oera</a></li>
									</ul></li>
								<li><strong>남성 브랜드</strong>
									<ul class="clearfix sm_dep2">
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_ME_BR06"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="TIME HOMME"
											onclick="GA_Common('ME_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_ME#BR06#1"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_ME_BR06"></label><a
											href="/ko/b/br06"
											onclick="GA_Common('ME_commonBrand',$(this));">TIME HOMME</a>
										</li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_ME_BR07"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="SYSTEM HOMME"
											onclick="GA_Common('ME_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_ME#BR07#2"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_ME_BR07"></label><a
											href="/ko/b/br07"
											onclick="GA_Common('ME_commonBrand',$(this));">SYSTEM
												HOMME</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_ME_BR08"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="the CASHMERE"
											onclick="GA_Common('ME_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_ME#BR08#3"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_ME_BR08"></label><a
											href="/ko/b/br08"
											onclick="GA_Common('ME_commonBrand',$(this));">the
												CASHMERE</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_ME_BR44"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="CLUB MONACO"
											onclick="GA_Common('ME_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_ME#BR44#4"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_ME_BR44"></label><a
											href="/ko/b/br44"
											onclick="GA_Common('ME_commonBrand',$(this));">CLUB
												MONACO</a></li>
									</ul></li>
								<li><strong>편집 브랜드</strong>
									<ul class="clearfix sm_dep2">
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR15"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="TOM GREYHOUND"
											onclick="GA_Common('ED_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_ED#BR15#1"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_ED_BR15"></label><a
											href="/ko/b/br15"
											onclick="GA_Common('ED_commonBrand',$(this));">TOM
												GREYHOUND</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR35"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="FOURM THE STORE"
											onclick="GA_Common('ED_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_ED#BR35#2"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_ED_BR35"></label><a
											href="/ko/b/br35"
											onclick="GA_Common('ED_commonBrand',$(this));">FOURM THE
												STORE</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR30"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="FOURM STUDIO"
											onclick="GA_Common('ED_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_ED#BR30#3"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_ED_BR30"></label><a
											href="/ko/b/br30"
											onclick="GA_Common('ED_commonBrand',$(this));">FOURM
												STUDIO</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR32"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="FOURM MEN'S LOUNGE"
											onclick="GA_Common('ED_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_ED#BR32#4"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_ED_BR32"></label><a
											href="/ko/b/br32"
											onclick="GA_Common('ED_commonBrand',$(this));">FOURM
												MEN'S LOUNGE</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR16"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="MUE" onclick="GA_Common('ED_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_ED#BR16#5"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_ED_BR16"></label><a
											href="/ko/b/br16"
											onclick="GA_Common('ED_commonBrand',$(this));">MUE</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR47"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="H : SCENE"
											onclick="GA_Common('ED_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_ED#BR47#6"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_ED_BR47"></label><a
											href="/ko/b/br47"
											onclick="GA_Common('ED_commonBrand',$(this));">H : SCENE</a>
										</li>
										<li class="oera"><input
											id="gnb_br_NEW_NORMAL_BRANDS_ED_BR62" name="gnb_br_ch"
											type="checkbox" class="checkboxEvent"
											title="Liquides Perfume Bar"
											onclick="GA_Common('ED_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_ED#BR62#7"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_ED_BR62"></label><a
											href="/ko/b/br62"
											onclick="GA_Common('ED_commonBrand',$(this));">Liquides
												Perfume Bar<i class="ico-new">new</i>
										</a></li>
									</ul></li>
								<li><strong>해외 브랜드</strong>
									<ul class="clearfix sm_dep2">
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_OS_BR37"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="ROCHAS" onclick="GA_Common('OS_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_OS#BR37#1"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_OS_BR37"></label><a
											href="/ko/c/br37/br37"
											onclick="GA_Common('OS_commonBrand',$(this));">ROCHAS</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_OS_BR41"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="3.1 Phillip Lim"
											onclick="GA_Common('OS_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_OS#BR41#2"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_OS_BR41"></label><a
											href="/ko/c/br41/br41"
											onclick="GA_Common('OS_commonBrand',$(this));">3.1
												Phillip Lim</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_OS_BR20"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="LANVIN PARIS"
											onclick="GA_Common('OS_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_OS#BR20#3"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_OS_BR20"></label><a
											href="/ko/c/br20/br20"
											onclick="GA_Common('OS_commonBrand',$(this));">LANVIN
												PARIS</a></li>
										<li><input id="gnb_br_NEW_NORMAL_BRANDS_OS_BR21"
											name="gnb_br_ch" type="checkbox" class="checkboxEvent"
											title="BALLY" onclick="GA_Common('OS_brandLike',$(this));"
											value="NEW_NORMAL_BRANDS_OS#BR21#4"> <label
											for="gnb_br_NEW_NORMAL_BRANDS_OS_BR21"></label><a
											href="/ko/c/br21/br21"
											onclick="GA_Common('OS_commonBrand',$(this));">BALLY</a></li>
									</ul></li>
								<!-- #1141 - 카테고리 개편 - 메인 즐겨찾기 브랜드 레이어 -->
							</ul>
							<p class="gnbbr_txt">로그인 후 좋아하는 브랜드를 ♥해주세요. '적용하기' 버튼을 클릭하면
								웹사이트 상단에 추가됩니다.</p>
							<br>
							<div class="br_button_wrap">
								<button type="button" name="button" class="btn_br_apply"
									onclick="applyCategory();GA_Event('공통_브랜드','적용','적용하기');">적용하기</button>
								<button type="button" name="button" class="btn_br_reset"
									onclick="resetCategory();GA_Event('공통_브랜드','적용','초기화하기');">초기화하기</button>
							</div>

						</div>
					</div></li>

				<li><a href="/ko/item/we"
					onclick="GA_Event('공통','GNB','여성');GA_Event('공통_카테고리','1DEPTH','여성');">여성<span
						class="arr">arrow</span></a>
					<div class="sub_back">
						<div class="sub_menu clearfix" style="">
							<ul class="al_frt1 sm_dep1">
								<li><a href="/ko/c/we"
									onclick="GA_Event('공통_카테고리','2DEPTH','여성_전체보기');">전체보기<!-- 전체보기 --></a>
								</li>
								<li><a href="/ko/c/we09/"
									onclick="GA_Event('공통_카테고리','2DEPTH','여성_SPECIAL SHOP*');">SPECIAL
										SHOP*</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/we09v/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_SPECIAL SHOP*_MINE : CODE MINE E');">MINE
												: CODE MINE E</a></li>
										<li><a href="/ko/c/we09k/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_SPECIAL SHOP*_LATT : EXCLUSIVE -THE LINES');">LATT
												: EXCLUSIVE -THE LINES</a></li>
										<li><a href="/ko/c/we093/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_SPECIAL SHOP*_SYSTEM : JEANS');">SYSTEM
												: JEANS</a></li>
										<li><a href="/ko/c/we094/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_SPECIAL SHOP*_SJSJ : SCENT IN TALES');">SJSJ
												: SCENT IN TALES</a></li>
										<li><a href="/ko/c/we098/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_SPECIAL SHOP*_SYSTEM : PARIS PRESENTATION');">SYSTEM
												: PARIS PRESENTATION</a></li>
										<li><a href="/ko/c/we091/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_SPECIAL SHOP*_OBZEE : ICONIC OBZEE');">OBZEE
												: ICONIC OBZEE</a></li>
										<li><a href="/ko/c/we09b/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_SPECIAL SHOP*_O&amp;#039;2ND : 25TH ANNIV. MARIE ASSENAT ');">O'2ND
												: 25TH ANNIV. MARIE ASSENAT </a></li>
										<li><a href="/ko/c/we09j/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_SPECIAL SHOP*_TOMGREYHOUND: THE GREY');">TOMGREYHOUND:
												THE GREY</a></li>
										<li><a href="/ko/c/we095/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_SPECIAL SHOP*_FOURM THE STORE : PALETTE');">FOURM
												THE STORE : PALETTE</a></li>
										<li><a href="/ko/c/we096/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_SPECIAL SHOP*_FOURM STUDIO : RE:STUDIO');">FOURM
												STUDIO : RE:STUDIO</a></li>
										<li><a href="/ko/c/we097/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_SPECIAL SHOP*_LANVIN COLLECTION : IT. 1');">LANVIN
												COLLECTION : IT. 1</a></li>
										<li><a href="/ko/c/we092/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_SPECIAL SHOP*_TIME : SIGNATURE SUIT');">TIME
												: SIGNATURE SUIT</a></li>
										<li><a href="/ko/c/we09q/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_SPECIAL SHOP*_LATT : WITH 신민아');">LATT
												: WITH 신민아</a></li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/we05/"
									onclick="GA_Event('공통_카테고리','2DEPTH','여성_아우터');">아우터</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/we051/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_아우터_재킷');">재킷</a></li>
										<li><a href="/ko/c/we052/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_아우터_점퍼');">점퍼</a></li>
										<li><a href="/ko/c/we015/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_아우터_가디건/베스트');">가디건/베스트</a>
										</li>
										<li><a href="/ko/c/we053/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_아우터_트렌치 코트');">트렌치
												코트</a></li>
										<li><a href="/ko/c/we054/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_아우터_코트');">코트</a></li>
										<li><a href="/ko/c/we055/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_아우터_다운/패딩');">다운/패딩</a>
										</li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/we01/"
									onclick="GA_Event('공통_카테고리','2DEPTH','여성_탑');">탑</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/we011/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_탑_티셔츠');">티셔츠</a></li>
										<li><a href="/ko/c/we012/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_탑_블라우스');">블라우스</a>
										</li>
										<li><a href="/ko/c/we013/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_탑_셔츠');">셔츠</a></li>
										<li><a href="/ko/c/we014/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_탑_니트');">니트</a></li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/we04/"
									onclick="GA_Event('공통_카테고리','2DEPTH','여성_드레스');">드레스</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/we041/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_드레스_미니 드레스');">미니
												드레스</a></li>
										<li><a href="/ko/c/we042/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_드레스_미디 드레스');">미디
												드레스</a></li>
										<li><a href="/ko/c/we043/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_드레스_롱/맥시 드레스');">롱/맥시
												드레스</a></li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/we02/"
									onclick="GA_Event('공통_카테고리','2DEPTH','여성_팬츠');">팬츠</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/we021/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_팬츠_캐주얼');">캐주얼</a></li>
										<li><a href="/ko/c/we022/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_팬츠_포멀');">포멀</a></li>
										<li><a href="/ko/c/we023/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_팬츠_데님');">데님</a></li>
										<li><a href="/ko/c/we024/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_팬츠_쇼츠');">쇼츠</a></li>
									</ul></li>
								<!--  status2.last end -->
								<li style="margin-right: 0px"><a href="/ko/c/we03/"
									onclick="GA_Event('공통_카테고리','2DEPTH','여성_스커트');">스커트</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/we031/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_스커트_미니 스커트');">미니
												스커트</a></li>
										<li><a href="/ko/c/we032/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_스커트_펜슬 스커트');">펜슬
												스커트</a></li>
										<li><a href="/ko/c/we033/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_스커트_플레어 스커트');">플레어
												스커트</a></li>
										<li><a href="/ko/c/we034/"
											onclick="GA_Event('공통_카테고리','3DEPTH','여성_스커트_롱/맥시 스커트');">롱/맥시
												스커트</a></li>
									</ul></li>
							</ul>
							<div class="gnb_banner float_right"></div>
						</div>
					</div> <!--  status2.last end --> <!-- categoryItemList end --></li>
				<li><a href="/ko/item/me"
					onclick="GA_Event('공통','GNB','남성');GA_Event('공통_카테고리','1DEPTH','남성');">남성<span
						class="arr">arrow</span></a>
					<div class="sub_back">
						<div class="sub_menu clearfix" style="">
							<ul class="al_frt1 sm_dep1">
								<li><a href="/ko/c/me"
									onclick="GA_Event('공통_카테고리','2DEPTH','남성_전체보기');">전체보기<!-- 전체보기 --></a>
								</li>
								<li><a href="/ko/c/me09/"
									onclick="GA_Event('공통_카테고리','2DEPTH','남성_SPECIAL SHOP*');">SPECIAL
										SHOP*</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/me09c/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_SPECIAL SHOP*_SYSTEM HOMME : PLAYER LINE');">SYSTEM
												HOMME : PLAYER LINE</a></li>
										<li><a href="/ko/c/me094/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_SPECIAL SHOP*_SYSTEM HOMME : PARIS PRESENTATION');">SYSTEM
												HOMME : PARIS PRESENTATION</a></li>
										<li><a href="/ko/c/me093/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_SPECIAL SHOP*_SYSTEM HOMME : TYPE 2');">SYSTEM
												HOMME : TYPE 2</a></li>
										<li><a href="/ko/c/me091/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_SPECIAL SHOP*_CLUB MONACO : PANTS ARCHIVE');">CLUB
												MONACO : PANTS ARCHIVE</a></li>
										<li><a href="/ko/c/me095/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_SPECIAL SHOP*_TIME HOMME : ONLINE EXCLUSIVE');">TIME
												HOMME : ONLINE EXCLUSIVE</a></li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/me03/"
									onclick="GA_Event('공통_카테고리','2DEPTH','남성_아우터');">아우터</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/me031/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_아우터_재킷');">재킷</a></li>
										<li><a href="/ko/c/me032/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_아우터_점퍼');">점퍼</a></li>
										<li><a href="/ko/c/me015/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_아우터_가디건/베스트');">가디건/베스트</a>
										</li>
										<li><a href="/ko/c/me033/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_아우터_트렌치코트');">트렌치코트</a>
										</li>
										<li><a href="/ko/c/me034/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_아우터_코트');">코트</a></li>
										<li><a href="/ko/c/me035/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_아우터_다운/패딩');">다운/패딩</a>
										</li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/me01/"
									onclick="GA_Event('공통_카테고리','2DEPTH','남성_탑');">탑</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/me011/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_탑_티셔츠');">티셔츠</a></li>
										<li><a href="/ko/c/me012/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_탑_셔츠');">셔츠</a></li>
										<li><a href="/ko/c/me013/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_탑_니트');">니트</a></li>
										<li><a href="/ko/c/me014/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_탑_스웨터');">스웨터</a></li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/me02/"
									onclick="GA_Event('공통_카테고리','2DEPTH','남성_팬츠');">팬츠</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/me021/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_팬츠_루즈/테이퍼드');">루즈/테이퍼드</a>
										</li>
										<li><a href="/ko/c/me025/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_팬츠_슬림/스트레이트');">슬림/스트레이트</a>
										</li>
										<li><a href="/ko/c/me028/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_팬츠_조거/트랙');">조거/트랙</a>
										</li>
										<li><a href="/ko/c/me022/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_팬츠_데님');">데님</a></li>
										<li><a href="/ko/c/me023/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_팬츠_쇼츠');">쇼츠</a></li>
									</ul></li>
								<!--  status2.last end -->
								<li style="margin-right: 0px"><a href="/ko/c/me04/"
									onclick="GA_Event('공통_카테고리','2DEPTH','남성_수트');">수트</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/me041/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_수트_드레스셔츠');">드레스셔츠</a>
										</li>
										<li><a href="/ko/c/me042/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_수트_수트재킷');">수트재킷</a>
										</li>
										<li><a href="/ko/c/me044/"
											onclick="GA_Event('공통_카테고리','3DEPTH','남성_수트_수트팬츠');">수트팬츠</a>
										</li>
									</ul></li>
							</ul>
							<div class="gnb_banner float_right"></div>
						</div>
					</div> <!--  status2.last end --> <!-- categoryItemList end --></li>
				<li><a href="/ko/c/as"
					onclick="GA_Event('공통','GNB','잡화');GA_Event('공통_카테고리','1DEPTH','잡화');">잡화<span
						class="arr">arrow</span></a>
					<div class="sub_back">
						<div class="sub_menu clearfix" style="">
							<ul class="al_frt1 sm_dep1">
								<li><a href="/ko/c/as"
									onclick="GA_Event('공통_카테고리','2DEPTH','잡화_전체보기');">전체보기<!-- 전체보기 --></a>
								</li>
								<li><a href="/ko/c/as01/"
									onclick="GA_Event('공통_카테고리','2DEPTH','잡화_여성슈즈');">여성슈즈</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/as011/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성슈즈_부츠');">부츠</a></li>
										<li><a href="/ko/c/as012/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성슈즈_로퍼/블로퍼');">로퍼/블로퍼</a>
										</li>
										<li><a href="/ko/c/as013/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성슈즈_스니커즈');">스니커즈</a>
										</li>
										<li><a href="/ko/c/as014/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성슈즈_플랫');">플랫</a></li>
										<li><a href="/ko/c/as015/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성슈즈_힐/슬링백');">힐/슬링백</a>
										</li>
										<li><a href="/ko/c/as016/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성슈즈_샌들/슬라이드');">샌들/슬라이드</a>
										</li>
										<li><a href="/ko/c/as017/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성슈즈_기타 슈즈');">기타
												슈즈</a></li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/as02/"
									onclick="GA_Event('공통_카테고리','2DEPTH','잡화_남성슈즈');">남성슈즈</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/as021/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_남성슈즈_부츠');">부츠</a></li>
										<li><a href="/ko/c/as022/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_남성슈즈_포멀슈즈');">포멀슈즈</a>
										</li>
										<li><a href="/ko/c/as023/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_남성슈즈_스니커즈');">스니커즈</a>
										</li>
										<li><a href="/ko/c/as024/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_남성슈즈_샌들/슬라이드');">샌들/슬라이드</a>
										</li>
										<li><a href="/ko/c/as025/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_남성슈즈_기타 슈즈');">기타
												슈즈</a></li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/as03/"
									onclick="GA_Event('공통_카테고리','2DEPTH','잡화_여성백');">여성백</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/as031/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성백_토트백');">토트백</a>
										</li>
										<li><a href="/ko/c/as032/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성백_숄더/크로스바디백');">숄더/크로스바디백</a>
										</li>
										<li><a href="/ko/c/as033/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성백_클러치 백');">클러치
												백</a></li>
										<li><a href="/ko/c/as034/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성백_기타 백');">기타
												백</a></li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/as04/"
									onclick="GA_Event('공통_카테고리','2DEPTH','잡화_남성백');">남성백</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/as041/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_남성백_토트백');">토트백</a>
										</li>
										<li><a href="/ko/c/as042/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_남성백_숄더/크로스바디백');">숄더/크로스바디백</a>
										</li>
										<li><a href="/ko/c/as043/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_남성백_클러치 백');">클러치
												백</a></li>
										<li><a href="/ko/c/as044/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_남성백_기타 백');">기타
												백</a></li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/as05/"
									onclick="GA_Event('공통_카테고리','2DEPTH','잡화_머플러/스카프');">머플러/스카프</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/as051/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_머플러/스카프_머플러');">머플러</a>
										</li>
										<li><a href="/ko/c/as052/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_머플러/스카프_스카프');">스카프</a>
										</li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/as06/"
									onclick="GA_Event('공통_카테고리','2DEPTH','잡화_주얼리');">주얼리</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/as061/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_주얼리_이어링/커프');">이어링/커프</a>
										</li>
										<li><a href="/ko/c/as062/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_주얼리_목걸이');">목걸이</a>
										</li>
										<li><a href="/ko/c/as063/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_주얼리_팔찌');">팔찌</a></li>
										<li><a href="/ko/c/as064/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_주얼리_반지');">반지</a></li>
										<li><a href="/ko/c/as065/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_주얼리_기타 주얼리');">기타
												주얼리</a></li>
									</ul></li>
								<!--  status2.last end -->
								<li style="margin-right: 0px"><a href="/ko/c/as07/"
									onclick="GA_Event('공통_카테고리','2DEPTH','잡화_기타 ACC');">기타 ACC</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/as071/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_기타 ACC_모자');">모자</a>
										</li>
										<li><a href="/ko/c/as072/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_기타 ACC_양말');">양말</a>
										</li>
										<li><a href="/ko/c/as073/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_기타 ACC_장갑');">장갑</a>
										</li>
										<li><a href="/ko/c/as074/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_기타 ACC_벨트');">벨트</a>
										</li>
										<li><a href="/ko/c/as075/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_기타 ACC_지갑');">지갑</a>
										</li>
										<li><a href="/ko/c/as076/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_기타 ACC_헤어ACC');">헤어ACC</a>
										</li>
										<li><a href="/ko/c/as077/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_기타 ACC_테크ACC');">테크ACC</a>
										</li>
										<li><a href="/ko/c/as078/"
											onclick="GA_Event('공통_카테고리','3DEPTH','잡화_기타 ACC_기타소품');">기타소품</a>
										</li>
									</ul></li>
							</ul>
							<div class="gnb_banner float_right"></div>
						</div>
					</div> <!--  status2.last end --> <!-- categoryItemList end --></li>
				<li><a href="/ko/c/be"
					onclick="GA_Event('공통','GNB','뷰티');GA_Event('공통_카테고리','1DEPTH','뷰티');">뷰티<i
						class="ico-new">new</i><span class="arr">arrow</span></a>
					<div class="sub_back">
						<div class="sub_menu clearfix" style="">
							<ul class="al_frt1 sm_dep1">
								<li><a href="/ko/c/be"
									onclick="GA_Event('공통_카테고리','2DEPTH','뷰티_전체보기');">전체보기<!-- 전체보기 --></a>
								</li>
								<li><a href="/ko/c/be01/"
									onclick="GA_Event('공통_카테고리','2DEPTH','뷰티_스킨케어');">스킨케어</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/be011/"
											onclick="GA_Event('공통_카테고리','3DEPTH','뷰티_스킨케어_토너/에멀전/크림');">토너/에멀전/크림</a>
										</li>
										<li><a href="/ko/c/be012/"
											onclick="GA_Event('공통_카테고리','3DEPTH','뷰티_스킨케어_세럼/앰플/오일/밤');">세럼/앰플/오일/밤</a>
										</li>
										<li><a href="/ko/c/be013/"
											onclick="GA_Event('공통_카테고리','3DEPTH','뷰티_스킨케어_클렌징/스크럽/마스크');">클렌징/스크럽/마스크</a>
										</li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/be03/"
									onclick="GA_Event('공통_카테고리','2DEPTH','뷰티_바디/헤어케어');">바디/헤어케어</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/be031/"
											onclick="GA_Event('공통_카테고리','3DEPTH','뷰티_바디/헤어케어_핸드·바디로션/크림/오일');">핸드·바디로션/크림/오일</a>
										</li>
										<li><a href="/ko/c/be032/"
											onclick="GA_Event('공통_카테고리','3DEPTH','뷰티_바디/헤어케어_핸드·바디워시/스크럽');">핸드·바디워시/스크럽</a>
										</li>
										<li><a href="/ko/c/be033/"
											onclick="GA_Event('공통_카테고리','3DEPTH','뷰티_바디/헤어케어_샴푸/컨디셔너');">샴푸/컨디셔너</a>
										</li>
										<li><a href="/ko/c/be034/"
											onclick="GA_Event('공통_카테고리','3DEPTH','뷰티_바디/헤어케어_트리트먼트/오일/스프레이');">트리트먼트/오일/스프레이</a>
										</li>
										<li><a href="/ko/c/be035/"
											onclick="GA_Event('공통_카테고리','3DEPTH','뷰티_바디/헤어케어_기타 바디/헤어케어');">기타
												바디/헤어케어</a></li>
									</ul></li>
								<!--  status2.last end -->
								<li style="margin-right: 0px"><a href="/ko/c/be04/"
									onclick="GA_Event('공통_카테고리','2DEPTH','뷰티_향수');">향수</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/be041/"
											onclick="GA_Event('공통_카테고리','3DEPTH','뷰티_향수_향수');">향수</a></li>
									</ul></li>
							</ul>
							<div class="gnb_banner float_right"></div>
						</div>
					</div> <!--  status2.last end --> <!-- categoryItemList end --></li>
				<li><a href="/ko/c/ls"
					onclick="GA_Event('공통','GNB','라이프스타일');GA_Event('공통_카테고리','1DEPTH','라이프스타일');">라이프스타일<span
						class="arr">arrow</span></a>
					<div class="sub_back">
						<div class="sub_menu clearfix" style="">
							<ul class="al_frt1 sm_dep1">
								<li><a href="/ko/c/ls"
									onclick="GA_Event('공통_카테고리','2DEPTH','라이프스타일_전체보기');">전체보기<!-- 전체보기 --></a>
								</li>
								<li><a href="/ko/c/ls01/"
									onclick="GA_Event('공통_카테고리','2DEPTH','라이프스타일_홈');">홈</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/ls011/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_홈_패브릭');">패브릭</a>
										</li>
										<li><a href="/ko/c/ls012/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_홈_프래그런스');">프래그런스</a>
										</li>
										<li><a href="/ko/c/ls013/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_홈_데코레이션');">데코레이션</a>
										</li>
										<li><a href="/ko/c/ls014/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_홈_기타소품');">기타소품</a>
										</li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/ls02/"
									onclick="GA_Event('공통_카테고리','2DEPTH','라이프스타일_배스');">배스</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/ls022/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_배스_욕실용품');">욕실용품</a>
										</li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/ls03/"
									onclick="GA_Event('공통_카테고리','2DEPTH','라이프스타일_키친');">키친</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/ls031/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_키친_그릇');">그릇</a>
										</li>
										<li><a href="/ko/c/ls032/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_키친_보드/트레이');">보드/트레이</a>
										</li>
										<li><a href="/ko/c/ls033/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_키친_커트러리');">커트러리</a>
										</li>
										<li><a href="/ko/c/ls034/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_키친_커피/티');">커피/티</a>
										</li>
										<li><a href="/ko/c/ls035/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_키친_패브릭/냅킨');">패브릭/냅킨</a>
										</li>
										<li><a href="/ko/c/ls036/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_키친_기타소품');">기타소품</a>
										</li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/ls04/"
									onclick="GA_Event('공통_카테고리','2DEPTH','라이프스타일_데스크');">데스크</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/ls041/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_데스크_문구');">문구</a>
										</li>
										<li><a href="/ko/c/ls043/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_데스크_기타소품');">기타소품</a>
										</li>
									</ul></li>
								<!--  status2.last end -->
								<li><a href="/ko/c/ls06/"
									onclick="GA_Event('공통_카테고리','2DEPTH','라이프스타일_키즈');">키즈</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/ls061/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_키즈_의류');">의류</a>
										</li>
										<li><a href="/ko/c/ls062/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_키즈_잡화');">잡화</a>
										</li>
									</ul></li>
								<!--  status2.last end -->
								<li style="margin-right: 0px"><a href="/ko/c/ls05/"
									onclick="GA_Event('공통_카테고리','2DEPTH','라이프스타일_펫');">펫</a>
									<ul class="clearfix sm_dep2">
										<li><a href="/ko/c/ls051/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_펫_패션');">패션</a>
										</li>
										<li><a href="/ko/c/ls052/"
											onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_펫_기타소품');">기타소품</a>
										</li>
									</ul></li>
							</ul>
							<div class="gnb_banner float_right"></div>
						</div>
					</div> <!--  status2.last end --> <!-- categoryItemList end --></li>
			</ul>

			<ul class="cate_m cate_banner gnbul2" id="cate_m_main"
				style="float: right;">
				<li><a href="/ko/magazine/exhibitions"
					onclick="GA_Event('공통','GNB','기획전');">기획전<!-- 기획전 --></a></li>
				<li><a href="/ko/magazine/events"
					onclick="GA_Event('공통','GNB','이벤트');">이벤트</a></li>
				<!-- THE 매거진 수정 200330 -->
				<li><a href="/ko/magazine/submain" class="magazine1803"
					onclick="GA_Event('공통','GNB','THE 매거진');">THE 매거진<!-- 매거진 --> <span
						class="arr">arrow</span></a>
					<div class="sub_back">
						<div class="sub_menu clearfix newtmzbox" style="">
							<ul class="the_maga_sublist sm_dep1">
								<li><a href="/ko/magazine/submain">전체보기</a>
									<ul class="sm_dep2">
										<li><a href="/ko/magazine/coverstory">커버스토리</a></li>
										<li><a href="/ko/magazine/weeklypick">위클리 픽</a></li>
										<li><a href="/ko/magazine/selection">셀렉션</a></li>
										<li><a href="/ko/magazine/styleguide">스타일 가이드</a></li>
										<li><a href="/ko/magazine/some">#SOME</a></li>
										<li><a href="/ko/magazine/news">뉴스 </a></li>
									</ul></li>
							</ul>
							<div class="img_themaga_sub">
								<a
									href="/magazine/newsDetailtemplatetype4?newsCode=8803498645276">
									<img class="amc_img"
									src="http://cdn.thehandsome.com/mobile/news/list/banner/20220502_38037817234832454_ko.jpg"
									alt="">
									<p>
										<strong>뉴스</strong> <span>세상 유일한 무이 스타일 '유일무이' 4화</span>
									</p>
								</a> <a href="/ko/magazine/editorials/8806021781576"> <img
									class="amc_img"
									src="http://cdn.thehandsome.com/mobile/editorial/list/banner/20220428_37731240926702146_ko.jpg"
									alt="">
									<p>
										<strong>#SOME</strong> <span>일상을 빛내는 작가 켈리박</span>
									</p>
								</a> <a href="/ko/magazine/editorials/8805989046344"> <img
									class="amc_img"
									src="http://cdn.thehandsome.com/pc/editorial/detail/image/20220429_37795065057341863_ko.jpg"
									alt="">
									<p>
										<strong>위클리 픽</strong> <span>WOMEN'S T-SHIRTS</span>
									</p>
								</a>
							</div>
						</div>
					</div></li>
				<!-- // THE 매거진 수정 200330 -->
				<!-- 20210319 편집샵 추가 -->
				<li><a href="/ko/ed/edMain"
					onclick="GA_Event('공통','GNB','편집샵');">편집샵</a></li>
				<!-- 20200710 룩북 추가 -->
				<li><a href="/ko/magazine/lookbook">룩북</a></li>
				<li><a href="/ko/ou/outletMain"
					onclick="GA_Event('공통','GNB','아울렛');">아울렛*</a></li>
			</ul>
		</div>
		<!-- 첫번째 c:if -->


		<div id="transparent_mask"></div>
		<!-- 201803 util menu -->
		<div class="util_menu util_menu1803">
			<ul class="clearfix">
				<li><a href="javascript:void(0);"><span class="ico_sh">search</span></a></li>
				<li><a href="/ko/mypage/myWish"
					onclick="GA_Event('공통','유틸_메뉴','위시리스트');"><span
						class="ico wishlist">wish list</span> <span class="count">(<span
							id="wishlistCount">0</span>)
					</span></a></li>
				<li><a href="/ko/shoppingbag"
					onclick="GA_Event('공통','유틸_메뉴','쇼핑백');"><span class="ico cart">장바구니</span>
						<span class="count">(<span id="cartCount">0</span>)
					</span></a></li>
			</ul>
		</div>
	</div>
	<!-- //201803 util menu -->
</div>