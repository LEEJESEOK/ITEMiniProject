<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=1, target-densitydpi=medium-dpi">
<meta property="og:type" content="article">
<meta property="og:title" content="더한섬닷컴 | THE HANDSOME.COM">
<meta property="og:description"
	content="타임, 마인, 시스템, SJSJ 등 프리미엄 브랜드 및 트렌디한 해외·편집숍까지 가득한 스타일 플랫폼!">
<meta property="og:image"
	content="http://s3.ap-northeast-2.amazonaws.com/cdn.thehandsome.com-kr/pc/210510_logo/%E3%84%B9%EB%A1%9C%EA%B3%A0.png">
<meta property="og:url" content="http://www.thehandsome.com/ko/">
<meta name="keywords"
	contents="한섬, 더한섬닷컴, 한섬몰, 한섬아울렛, 한섬닷컴, 더한섬, 한섬올라인몰, HANDSOME, thehandsome">
<title>더한섬닷컴 | THE HANDSOME.COM</title>
<link rel="shortcut icon"
	href="http://cdn.thehandsome.com/_ui/desktop/common/images/common/thehandsome_ic_16x16.ico">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/font_80.css" media="all">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/common.css?20220401" media="all">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/layout.css?20220331" media="all">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/popup.css?20210225" media="all">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/jquery-ui.min.css" media="all">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/brand.css" media="all">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/swiper.css" media="all">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/main_201903.css" media="all">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/footer.css?20220406" media="all">
<style type="text/css" media="print">
@IMPORT url("${contextPath}/resources/blueprint/print.css");
</style>
<script type="text/javascript"
	src="${contextPath}/resources/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/jquery-ui-1.11.2.min.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/handsome/common.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/handsome/html5shiv-printshiv.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/handsome/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/handsome/ui.js?20211105"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/handsome/jquery.bxslider.min.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/common_function.js?20220411"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/jquery.vticker.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/jquery.form-3.51.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/swiper.min.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/videojs-ie8.min.js"></script>
</head>
<body>
	<!-- headerWrap -->
	<div id="headerWrap">
		<div class="header header_fixed header_main1903">
			<form id="autologinForm" name="autologinForm"
				action="${contextPath}/hp/autologin" method="get">
				<input type="hidden" name="hcid" id="hcid" value="e2gaf@naver.com">
			</form>

			<%@include file="include/top_nav.jsp"%>
			
			<!-- validation check message global -->
			<input type="hidden" id="validationCheckPwd"
				value="비밀번호를 재입력 하셔야 합니다."> <input type="hidden"
				id="validationCheck" value="필수데이터가 입력되지 않았습니다."> <input
				type="hidden" id="validationCheckMsg" value="다음 사항을 확인해 주세요.">
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

			<%@include file="include/gnb.jsp"%>
		</div>
	</div>
	<!-- end headerWrap -->
	<script type="text/javascript">
		var newItemsSlider = "";
		var bestItemsSlider = "";
		var newProductCategory = "";
		var bestProductCategory = "";
		var checkInstagramInfo = false;
		var allLinkTemp = [];
		var allUrlTemp = [];
		var allCaptionTemp = [];
		var allIndex = 0;
		var accountCount = 0;
		var horiz = $(".horiz_topbanner").length;

		var rate_en = "";
		var symbol_en = "";
		var rate_zh = "";
		var symbol_zh = "";

		$(document).ready(function () {
			var todayDate = new Date();




			if (horiz > 0) {
				$("#mainNoticeWrap").css("top", "230px");
				$(".popWrap1901").css("top", "78px");
			}

			mainSlider1903();
			edtSlider1903();
			videoPlay1903();

			$.ajax({
				type: "get",
				url: "/intro/mainCategoryList",
				async: true,
				contentType: "application/json",
				error: function (request, status, error) {
					console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				},
				success: function (result) {
					if (result.length > 0) {
						var newHtml = "";
						var bestHtml = "";
						var newCount = 0;
						var bestCount = 0;
						var isoCode = "ko";
						var categoryName = "";

						for (var i = 0; i < result.length; i++) {
							if (isoCode == "ko") {
								categoryName = result[i].categoryName;
							} else if (isoCode == "en") {
								categoryName = result[i].categoryNameEN;
							} else if (isoCode == "zh") {
								categoryName = result[i].categoryNameZH;
							}

							if (result[i].displayTypeYn == true) {
								if (result[i].displayType == true) {
									if (newCount == 0) {
										newProductCategory = result[i].categoryCode;
										newHtml += '<li class="on">';
									} else {
										newHtml += '<li>';
									}

									newHtml += '	<a href="javascript:getNewProductList(\'' + result[i].categoryCode + '\')" >' + categoryName + '</a>';
									newHtml += '</li>';
									newCount++;
								} else if (result[i].displayType == false) {
									if (bestCount == 0) {
										bestProductCategory = result[i].categoryCode;
										bestHtml += '<li class="on">';
									} else {
										bestHtml += '<li>';
									}

									bestHtml += '	<a href="javascript:getBestProductList(\'' + result[i].categoryCode + '\')" >' + categoryName + '</a>';
									bestHtml += '</li>';
									bestCount++;
								}
							}
						}
						$(".nbe_cnt.new .product_left_menu > ul").html(newHtml);
						tabNew();
						getNewProductList(newProductCategory);
						$(".nbe_cnt.best .product_left_menu > ul").html(bestHtml);
						tabBest();
						getBestProductList(bestProductCategory);
					}
				}
			});

			getMagazineList();

			var getUrlParameter = function getUrlParameter(sParam) {//URL에 포함된 파라미터 이용하기
				var sPageURL = window.location.search.substring(1),
					sURLVariables = sPageURL.split('&'),
					sParameterName,
					i;
				for (i = 0; i < sURLVariables.length; i++) {
					sParameterName = sURLVariables[i].split('=');
					if (sParameterName[0] === sParam) {
						return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
					}
				}
			};
			//layerPopup front test (노출 기한 상관 없이 pk 이용하여 메인에서 팝업 보기)
			var pop1 = getUrlParameter('pop1');
			if (typeof pop1 == "undefined") pop1 = "N";

			$.ajax({
				type: "get",
				url: "/svcenter/mainNotice",
				cache: false,
				data: { "pop1": pop1 },
				async: true,
				contentType: "application/json",
				error: function (request, status, error) {
					console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				},
				success: function (result) {
					var todayDate = new Date();
					var switchMain = "";
					if (result.length > 0) switchMain = result[0].readCount;
					if ("N" != switchMain) {//switchMain = "N" 이면 메인팝업 기존방식(하드코딩)으로 돌리기 
						if (result.length > 0) {
							var documentResult = "";
							var isocode = "ko";
							for (var i = 0; i < result.length; i++) {
								var showYn = "N";
								if (getCookie(result[i].pk + isocode) != todayDate.getDate()) showYn = "Y"; // 오늘은 그만보기
								if (pop1 != "N") showYn = "Y"; //팝업 미리보기
								if (showYn == "Y") {
									if (null != result[i].bgImage && "" != result[i].bgImage.trim()) {
										documentResult += "<div class='popwrap_renewal1910 txtonimg add1' id='" + result[i].pk + isocode + "'>";
										documentResult += "<img src='" + result[i].bgImage + "' alt='' class='pop_backimg'>";
									} else {
										documentResult += "<div class='popwrap_renewal1910' id='" + result[i].pk + isocode + "'>";
									}
									documentResult += "    <div class='pop_cnt'>";
									if (null != result[i].noticeContentsYN && result[i].noticeContentsYN) {//단순 텍스트 출력 시 title 노출, html 포함 출력 시 title 비노출(html 코드에 title 포함)
										if (null != result[i].noticeTitle && "" != result[i].noticeTitle.trim()) {
											var noticeTitle = result[i].noticeTitle;
											var replacedTitle = noticeTitle.replace(/(?:\r\n|\r|\n)/g, '<br>');
											documentResult += '<h3 class="pop_tlt">' + replacedTitle + '</h3>';
										}
									}
									if (null != result[i].noticeContents && "" != result[i].noticeContents.trim()) {
										if (result[i].noticeContentsYN) {
											documentResult += "        <p class='pop_txt'>";
										} else {//html 코드 출력
											documentResult += "        <p class='pop_txt' style='min-height: 0; padding: 25px 0 0 0;'>";
										}
										var noticeContents = result[i].noticeContents;
										var replacedContents = noticeContents.replace(/(?:\r\n|\r|\n)/g, '<br>');
										documentResult += replacedContents;
										documentResult += "        </p>";
									}
									if (null != result[i].bannerLink && "" != result[i].bannerLink.trim()) {
										documentResult += "        <div class='linkbox'>";
										documentResult += "            <a href='" + result[i].bannerLink + "'>";
										if (null != result[i].bannerLinkText && "" != result[i].bannerLinkText.trim()) documentResult += result[i].bannerLinkText;
										documentResult += "            </a>";
										documentResult += "        </div>";
									}
									documentResult += "    </div>";
									documentResult += "    <div class='btnwrap'>";
									documentResult += "        <input type='button' class='btn stoptoday closeLayerPopup' value=\"오늘은 그만보기 \">";
									documentResult += "        <input type='button' class='btn close closeLayerPopup' value=\"닫기\">";
									documentResult += "    </div>";
									documentResult += "    <a href='#' class='btn_close closeLayerPopup'><img src='/_ui/desktop/common/images/popup/ico_close.png' alt=\"닫기\"></a>";
									documentResult += "</div>";
								}
							}
							$("#mainNoticeWrap").html(documentResult);

							$(".closeLayerPopup").on("click", function () {
								if ($(this).hasClass("stoptoday")) {//오늘은 그만보기
									var todayDate = new Date();
									var cookieId = $(this).parents(".popwrap_renewal1910").attr("id");
									setCookie(cookieId, todayDate.getDate(), 1);
								}
								$(this).parents(".popwrap_renewal1910").css("display", "none");
							});

						}
					} else {
						// 한섬마일리지 조회/사용불가
						if (getCookie('HSlayerPopup3') != todayDate.getDate()) {
							var startDate1 = new Date('2018/12/28 16:00:00'), endDate1 = new Date('2019/02/31 00:00:00');
							if (todayDate.getTime() >= startDate1.getTime() && todayDate.getTime() <= endDate1.getTime()) {
								//layerPopup6('open');
							}
						}
					}
				}
			});

			$(".closeLayerPopup").on("click", function () {
				if ($(this).hasClass("stoptoday")) {//오늘은 그만보기
					var todayDate = new Date();
					var cookieId = $(this).parents(".popwrap_renewal1910").attr("id");
					setCookie(cookieId, todayDate.getDate(), 1);
				}
				$(this).parents(".popwrap_renewal1910").css("display", "none");
			});

			//비로그인 상태에서 메인페이지 진입시 쿠키 삭제 

			deletecookiePath("UID", "/");
			deletecookiePath("criteoEmail", "/");
			deletecookiePath("memberGb", "/");


			var todayDate = new Date();

			//전환된 회원일 경우 처리


			//전환가입유도 팝업


			//자동로그인 팝업


			//인스타그램 생성 --START-- 중국어 인스타 그램 제외

			$.ajax({
				type: "get",
				url: "/magazine/getAllInstargram" + "?type=search",
				cache: false,
				dataType: "json",
				async: true,
				contentType: "application/json",
				error: function (request, status, error) {
					console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
				},
				success: function (result) {
					if (result.length > 0) {
						//정보 보여주기
						var allHtml = [];
						var account = "", logoImg = "";
						var html = "";
						accountCount = result.length;

						for (var i = 0; i < result.length; i++) {
							account = result[i].account;
							logoImg = result[i].accountLogoImage;

							allHtml = JSON.parse(result[i].html).data;
							allHtml.sort(function (a, b) {
								return a.created_time > b.created_time ? -1 : a.created_time < b.created_time ? 1 : 0;
							});

							$.each(allHtml, function (j, v) {
								if (j == 0) {
									if (v.user.username != "fourm_official" && v.user.username != "youarehandsome") {
										html += '<li class="swiper-slide">';
										html += '    <a href="' + '/magazine/instagram"' + '>';
										html += '       <img src="' + v.images.low_resolution.url + '" class="respon_image" onerror="this.src=\'http://cdn.thehandsome.com/_ui/desktop/common/images/instagram_video_thumb_283.jpg\'" />';
										html += '		<div class="insta_account1903">';
										html += '			<div class="account">';
										html += '				<div class="img_wrap">';
										if (account == v.user.username) {
											html += '					<img src="' + logoImg + '/dims/resize/50x50" alt="brandimg">';
										}
										html += '				</div>';
										html += '				<p>@' + v.user.username + '</p>';
										html += '			</div>';
										html += '		</div>';
										html += '		<div class="insta_pic_info"></div>';
										html += '		<div class="insta_pic_info_txt">';
										if (v.caption != null) {
											html += '			<p class="title">' + v.caption.text.normalize('NFC') + '</p>';
										} else {
											html += '          <p class="title"></p>';
										}
										html += '		</div>';
										html += '	</a>';
										html += '	<div class="insta_cover_dim"></div>';
										html += '</li>';
									}
								}
							});
						}
					}

					$('#instaContents > ul').html(html);

					instagramSlider1903();
					instaImgHover();
				}
			});

			//인스타그램 생성 --END--

			//룰렛 이벤트

			var uid = "anonymous";
			var chkUid = ["test1", "test2", "test3", "test4", "test5", "dlwnsdnjs7@yopmail.com",
				"test6", "test7", "test8", "test10", "dlwnsdnjs70@yopmail.com"];

			var jeventStartDate = new Date('2019/11/01 00:00:00'), jeventEndDate = new Date('2019/12/31 00:00:00');

			if (location.href.indexOf("www.thehandsome.com") > -1) {
				jeventStartDate = new Date('2019/12/01 00:00:00')
			}


			var eventStartDate = new Date('2019/10/29 00:00:00'), eventEndDate = new Date('2019/12/01 00:00:00');

			if (location.href.indexOf("www.thehandsome.com") > -1) {
				eventStartDate = new Date('2019/11/01 13:00:00')
			}

			for (var i = 0; i < $("#edtSlider1903_0 > ul > li .price").length; i++) {
				var exPrice = $("#edtSlider1903_0 > ul > li .price").eq(i).html();
				$("#edtSlider1903_0 > ul > li .price").eq(i).html(getExchangePrice(exPrice));
			}

			for (var i = 0; i < $("#edtSlider1903_1 > ul > li .price").length; i++) {
				var exPrice = $("#edtSlider1903_1 > ul > li .price").eq(i).html();
				$("#edtSlider1903_1 > ul > li .price").eq(i).html(getExchangePrice(exPrice));
			}



			function getNewProductList(categoryCode) {
				$.ajax({
					type: "get",
					url: "/intro/mainNewProductList" + "?categoryCode=" + categoryCode,
					dataType: "json",
					async: true,
					contentType: "application/json",
					error: function (request, status, error) {
						console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
					},
					success: function (result) {
						var html = "";
						if (result.length > 0) {
							window.sessionStorage.setItem('main_new_ecommerceDataList', JSON.stringify(result));
							html += '<div class="nbe_cnt_inner swiper-container" id="newListSlider">';
							html += '	<ul class="items_list swiper-wrapper">';
							for (var i = 0; i < result.length; i++) {
								html += '		<li class="swiper-slide">';
								html += '			<div class="item_box">';
								html += '				<a href="/p/' + result[i].productCode + '" class="item_info1" setEcommerceData(' + i + ', \'NEW\', \'' + categoryCode + '\');">';
								html += '					<span class="item_img">';
								html += '						<img src="' + result[i].T01imageUrl + '/dims/resize/234x353" alt="" name="' + result[i].productName + '" class="respon_image">';
								html += '					</span>';
								html += '				</a>';
								html += '				<a href="/p/' + result[i].productCode + '" class="item_info2" setEcommerceData(' + i + ', \'NEW\', \'' + categoryCode + '\');">';
								html += '					<span class="brand">' + result[i].brandName + '</span>';
								html += '					<span class="price">' + getExchangePrice(result[i].price) + '</span>';
								html += '				</a>';
								html += '			</div>';
								html += '		</li>';
							}
							html += '	</ul>';
							html += '<div class="swiper-button-next"></div>';
							html += '<div class="swiper-button-prev"></div>';
							html += '</div>';
							$(".product_list1903 .nbe_cnt.new .nbe_cnt_inner_wrap").html(html);
							newProductListSlider1903();
						} else {
							$(".product_list1903 .nbe_cnt.new .nbe_cnt_inner_wrap").html(html);
						}
					}
				});
			}

			function getBestProductList(categoryCode) {
				$.ajax({
					type: "get",
					url: "/intro/mainBestProductList" + "?categoryCode=" + categoryCode,
					dataType: "json",
					async: true,
					contentType: "application/json",
					error: function (request, status, error) {
						console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
					},
					success: function (result) {
						var html = "";
						if (result.length > 0) {
							window.sessionStorage.setItem('main_best_ecommerceDataList', JSON.stringify(result));
							html += '<div class="nbe_cnt_inner swiper-container" id="bestListSlider">';
							html += '	<ul class="items_list swiper-wrapper">';
							for (var i = 0; i < result.length; i++) {
								html += '		<li class="swiper-slide">';
								html += '			<div class="item_box">';
								html += '				<a href="/p/' + result[i].productCode + '" class="item_info1" onclick="javascript:setEcommerceData(' + i + ', \'BEST\', \'' + categoryCode + '\');">';
								html += '					<span class="item_img">';
								html += '						<img src="' + result[i].T01imageUrl + '/dims/resize/234x353" alt="" name="' + result[i].productName + '" class="respon_image" >';
								html += '					</span>';
								html += '				</a>';
								html += '				<a href="/p/' + result[i].productCode + '" class="item_info2">';
								html += '					<span class="brand">' + result[i].brandName + '</span>';
								html += '					<span class="price">' + getExchangePrice(result[i].price) + '</span>';
								html += '				</a>';
								html += '			</div>';
								html += '		</li>';
							}
							html += '	</ul>';
							html += '<div class="swiper-button-next"></div>';
							html += '<div class="swiper-button-prev"></div>';
							html += '</div>';
							$(".product_list1903 .nbe_cnt.best .nbe_cnt_inner_wrap").html(html);
							bestProductListSlider1903();
						} else {
							$(".product_list1903 .nbe_cnt.best .nbe_cnt_inner_wrap").html(html);
						}
					}
				});
			}

			function getMagazineList() {
				$.ajax({
					type: "get",
					url: "/intro/mainMagazine",
					cache: false,
					dataType: "json",
					async: true,
					contentType: "application/json",
					error: function (request, status, error) {
						console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
					},
					success: function (result) {
						var categoryText = "";
						var url = "";
						var html = "";
						if (result.length > 0) {
							for (var i = 0; i < result.length; i++) {
								if (result[i].category == "뉴스") {
									categoryText = "뉴스";
								} else if (result[i].category == "SPOTLIGHT_ON") {
									categoryText = "위클리 픽";
								} else if (result[i].category == "HANDSOME_PEOPLE") {
									categoryText = "핸썸피플";
								} else if (result[i].category == "TREND_TO_KNOW") {
									categoryText = "셀렉션";
								} else if (result[i].category == "HOW_TO_STYLE") {
									categoryText = "커버스토리";
								} else if (result[i].category == "EDITORS_PICK") {
									categoryText = "스타일 가이드";
								} else if (result[i].category == "PLAY_PLAY") {
									categoryText = "플레이";
								} else if (result[i].category == "SHARP_SOME") {
									categoryText = "#SOME";
								}

								html += '<li class="swiper-slide">';
								if (result[i].category == "뉴스") {
									html += '	<a href="/magazine/newsDetail' + result[i].template + '?newsCode=' + result[i].pk + '" class="img_wrap">';
								} else {
									html += '	<a href="/magazine/editorials/' + result[i].pk + '" class="img_wrap">';
								}
								if (result[i].imageUrl.indexOf(".mp4") > -1) {
									html += '          <video autoplay muted playsinline loop preload="auto" style="width:100%; max-height:352px; auto;outline:none;" poster="">';
									html += '          <source src="' + result[i].imageUrl + '" type="video/mp4">';
									html += '          </video>';
								} else {
									html += '       <img src="' + result[i].imageUrl + '/dims/resize/348x352" alt="매거진이미지">';
								}


								html += '	</a>';
								html += '	<div class="txt_wrap">';
								html += '		<p class="magazine_tit">' + categoryText + '</p>';
								html += '		<p class="tit">' + result[i].desktopTitle + '</p>';
								html += '		<p class="s_t">' + result[i].desktopSubTitle + '</p>';
								if (result[i].category == "뉴스") {
									html += '		<a href="/magazine/newsDetail' + result[i].template + '?newsCode=' + result[i].pk + '" class="detail">자세히 보기</a>';
								} else {
									html += '		<a href="/magazine/editorials/' + result[i].pk + '" class="detail">자세히 보기</a>';
								}
								html += '	</div>';
								html += '</li>';
								html += '';
							}
							$(".the_magazine_wrap1903 .magazine_slider1903 > ul").html(html);
							magazinSlider1903();
						}
					}
				});
			}

			// 상단 띠 배너 닫기
			function popClose03() {
				$('.horiz_topbanner, .horiz_topbanner_inner').slideUp();
				if (horiz > 0) {
					$("#mainNoticeWrap").css("top", "150px");
				}
			};

			// RECOMMEND 호출 ajax
			function getProductInfo(productOrderCode) {

				var categorySize = 0;
				var categoryList = "";

				$.ajax({
					type: "get",
					url: "/intro/newRecommend",
					cache: false,
					dataType: "json",
					contentType: "application/json",
					error: function (request, status, error) {
						console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
					},
					success: function (result) {
						//추천상풍 리스트

						var html = "";
						if (result.length > 0) {
							window.sessionStorage.setItem('main_recommend_ecommerceDataList', JSON.stringify(result));
						}
						for (var i = 0; i < result.length; i++) {
							var image = result[i].imageUrl;
							if (image.indexOf("_T01") > -1) {
								image = image.replace("_T01", "_S01");
							}

							html += "<li>";
							//                         html +="    <a href=\"javascript:goDetailPagebyRecommend('" + result[i].baseProductCode + "','" + result[i].clicklogRedirectLink + "')\" > \n";
							//                         html += '	<a href="/p/'+result[i].productCode+'" class="item_info1" onclick="javascript:setEcommerceData('+ i +', \'RECOMMEND\', \'\');">';
							html += '   <a href="javascript:goDetailPagebyRecommend(\'' + result[i].baseProductCode + '\',\'' + result[i].clicklogRedirectLink + '\')" class="item_info1">';
							html += "        <img src=\"" + image + "/dims/resize/289x289\"/> \n";
							html += "    </a>";
							html += "    <span class=\"item_info2\">";
							html += "            <span class=\"brand " + result[i].brandCode + "\">" + result[i].brandName + "</span> \n";
							html += "            <span class=\"title\">" + result[i].productName + "</span> \n";
							if (result[i].price === 0) {
								html += "        <span class=\"price\"></span> \n";
							} else {
								html += "        <span class=\"price\">" + getExchangePrice(result[i].price) + "</span> \n";
							}
							html += "    </span> \n";
							html += "    <span class=\"flag\"></span> \n";
							html += "</li>";
						}

						if (result.length == 0) {
							$(".pickfor_wrap1903").hide();
						}
						$("#pickForSlider1903 ul").html(html);
						pickForSlider1903();
					}
				});
			}

			//전환가입
			function hpoinJoin() {
				var url = "/hpoint/transInfo";

				$.ajax({
					type: "GET",
					url: url,
					success: function (data) {
						var hdUrl = data.hpUrl + "/cu/join/start.nhd";
						$("#prtnrId").val(data.pt1002.prtnrId);
						$("#chnnlId").val(data.pt1002.chnnlId);
						$("#custNm").val(data.pt1002.custNm);
						$("#birthDt").val(data.pt1002.birthDt);
						$("#mophNo").val(data.pt1002.mophNo);
						$("#chId").val(data.pt1002.chId);
						$("#custUniqKey").val(data.pt1002.custUniqKey);
						$("#email").val(data.pt1002.email);
						$("#sexGbCd").val(data.pt1002.sexGbCd);

						window.open(hdUrl, "transMember");

						document.getElementById("ptcoReqnMdaInf").value = "pc";
						$("#userHiddenForm").attr("action", hdUrl);
						$("#userHiddenForm").submit();
						$("#hpMemberLayer").hide();
					},
					error: function (e) {
					}
				});
			}

			function ssoTokenSuc(data) {
				if (data.succYn == "Y") {
					$.ajax({
						type: "GET",
						url: "/hpoint/simpleJoinMember",
						data: { "mcustNo": data.mcustNo },
						success: function (data) {
							if (data.resultCode == "C") {
								$("#ssoMcustNo").val(data.mcustNo);
								layerPopup4('open');
							}
						},
						error: function (e) {
						}
					});
				}
			}

			//간편회원가입 전송
			function simpJoin() {
				var hdUrl = "https://www.h-point.co.kr/cu/join/simpJoinStart.nhd";
				window.open(hdUrl, "simpStart_window");

				document.getElementById("ptcoReqnMdaInf").value = "pc";
				$("#simpJoinForm").attr("action", hdUrl);
				$("#simpJoinForm").submit();
				$("#simpJoinLayer").hide();
			}

			//전환가입 유도 팝업    
			function layerPopup3(division) {
				if (division == "open") {
					$("#hpMemberLayer").show();
				} else if (division == "close") {
					if ($('#memPop').is(":checked")) {
						setCookie("memberTransPopup", 'Y', 90);
					} else {
						setCookie("memberTransPopup", 'N', 0);
					}
					$("#hpMemberLayer").hide();
				} else if (division == "oneweek") {
					if ($('#oweek').is(":checked")) {
						setCookie("memberTransPopup", 'Y', 7);
					} else {
						setCookie("memberTransPopup", 'N', 0);
					}
					$("#hpMemberLayer").hide();
				}
			}
			//간편가입팝업
			function layerPopup4(division) {
				if (division == "open") {
					$("#simpJoinLayer").show();
				} else {
					$("#simpJoinLayer").hide();
				}
			}

			function layerPopup6(division) {
				var documentResult = "";

				if (division == "open") {

					//                     documentResult += '<div class="popWrap1901" style="position:fixed;top:90px;right:20px;z-index:3;">                                     ';
					// 	                documentResult += '    <div class="popwrap main_banner position1" style="position:relative;">                                          ';
					// 	                documentResult += '        <div class="pop_cnt">                                                                                       ';
					// 	                documentResult += '            <img usemap="#main_popup" src="http://cdn.thehandsome.com/pc/notice/pc_delivnoti_ko_190906.jpg" alt=""> ';
					// 	                documentResult += '            <div class="chkbox_cls">                                                                                ';
					// 	                documentResult += '                <input type="checkbox" id="popPos3" name="popPos3" onclick="layerPopup6(\'close\');" > <label for="popPos3">오늘 하루 열지 않음</label>               ';
					// 	                documentResult += '            </div>                                                                                                  ';
					// 	                documentResult += '        </div>                                                                                                      ';
					// 	                documentResult += '        <a href="#" class="btn_close" onclick="layerPopup6(\'close\');">닫기</a>                                           ';
					// 	                documentResult += '    </div>                                                                                                          ';
					// 	                documentResult += '</div>                                                                                                              ';

					documentResult += '<div class="popWrap1901" style="position:fixed;top:-22px;right:10px;z-index:20;">                                           ';
					documentResult += '    <div class="popwrap main_banner position1" style="position:relative;">                                             ';
					documentResult += '        <div class="pop_cnt" style="position:relative;">                                                               ';
					documentResult += '            <img src="http://cdn.thehandsome.com/pc/notice/pc_delivnoti_ko_200922.jpg" alt="">                         ';
					documentResult += '            <a href="/svcenter/notice" style="display:block;overflow:hidden;text-indent:-999em;position:absolute;left:50%;transform:translate3d(-50%,0,0);bottom:5%;width:140px;height:35px;">자세히보기</a>';
					documentResult += '        </div>                                                                                                         ';
					documentResult += '        <div class="chkbox_cls" style="background:#363636;">                                                           ';
					documentResult += '            <input type="checkbox" id="popPos3" name="popPos3" onclick="layerPopup6(\'close\');"> <label for="popPos3">1일 동안 열지 않음</label>            ';
					documentResult += '        </div>                                                                                                         ';
					documentResult += '        <a href="#" class="btn_close" onclick="layerPopup6(\'close\');"">닫기</a>                                              ';
					documentResult += '    </div>                                                                                                             ';
					documentResult += '</div>                                                                                                                 ';

					$("#mainPopwrap1").html(documentResult);

				} else if (division == "close") {

					if ($('#popPos3').is(":checked")) {
						var todayDate = new Date();
						setCookie("HSlayerPopup3", todayDate.getDate(), 1);
					}
					$("#mainPopwrap1").data('scroll', $('#mainPopwrap1').scrollTop());
					$("#mainPopwrap1").hide();
				}
			}
			//설날 공지 팝업
			function layerPopup7(division) {

				var todayDate = new Date();
				var endBankCheck = new Date('2020/01/26 06:00:00');
				var documentResult = "";
				if (division == "open") {

					documentResult += '<div class="popWrap1901" style="position:fixed;top:78px;right:10px;z-index:20;"><!--수정 200117--> ';
					documentResult += '    <div class="popwrap main_banner position1" style="position:relative;">';
					documentResult += '        <div class="pop_cnt" style="position:relative;">';
					if (todayDate.getTime() < endBankCheck.getTime()) {
						documentResult += '            <img src="http://cdn.thehandsome.com/pc/notice/pc_main_popup_holiday_20200122_ko.jpg" alt="2020년 명절배송안내"><!--수정 200117-->';
						documentResult += '            <a href="/svcenter/notice" style="display:block;overflow:hidden;text-indent:-999em;position:absolute;left:107px;bottom:10px;width:142px;height:37px;">자세히보기</a><!--수정 200122-->';
					} else {
						documentResult += '            <img src="http://cdn.thehandsome.com/pc/notice/pc_main_popup_holiday_200116_ko.jpg" alt="2020년 명절배송안내"><!--수정 200117-->';
						documentResult += '            <a href="/svcenter/notice" style="display:block;overflow:hidden;text-indent:-999em;position:absolute;left:178px;transform:translate3d(-50%,0,0);bottom:29px;width:142px;height:37px;">자세히보기</a><!--수정 200117-->';
					}
					documentResult += '        </div>';
					documentResult += '        <div class="chkbox_cls" style="background:#363636;">';
					documentResult += '            <input type="checkbox" id="popPos4" name="popPos4" onclick="layerPopup7(\'close\');"><label for="popPos4">1일 동안 열지 않음</label>                      ';
					documentResult += '        </div>';
					documentResult += '        <a href="#" class="btn_close" onclick="layerPopup7(\'close\');">닫기</a>';
					documentResult += '    </div>';
					documentResult += '</div>';


					$("#mainPopwrap1").html(documentResult);
				} else if (division == "close") {

					if ($('#popPos4').is(":checked")) {
						var todayDate = new Date();
						setCookie("newYearPopup", todayDate.getDate(), 1);
					}
					$("#mainPopwrap1").data('scroll', $('#mainPopwrap1').scrollTop());
					$("#mainPopwrap1").hide();
				}
			}

			//올빼미 8월 이벤트 팝업
			function layerPopup8(division, week) {

				if (division === "open") {
					var documentResult = "";

					if (week === "fri" || week === "sat" || week === "sun") {
						documentResult += '<div class="layerArea" id="nightEvtPop">';
						documentResult += '    <div class="layerBg" style="display:block;"></div>';
						documentResult += '        <div class="popwrap notipop_20190813 images-event-popup" style="display:block;">';
						documentResult += '            <div class="in-box">';
						documentResult += '                <div class="in-ab">';
						if (week === "fri") {
							documentResult += '        <div class="event-img-zone">';
							documentResult += '            <img src="http://cdn.thehandsome.com/mobile/event/detail/image/handsome_202008/happy_4hour_mob_popup_img_01.jpg" style="width:100%;" alt="">';
							documentResult += '        </div>';
							documentResult += '        <div class="grayCloseCheckBox190821 black">';
							documentResult += '            <input type="checkbox" id="eventpop_check_fri" onclick="layerPopup8(\'close\', \'fri\');"><label for="eventpop_check">오늘 그만 보기</label>';
							documentResult += '        </div>';
						}
						if (week === "sat") {
							documentResult += '        <div class="event-img-zone">';
							documentResult += '            <img src="http://cdn.thehandsome.com/mobile/event/detail/image/handsome_202008/happy_4hour_mob_popup_img_02.jpg" style="width:100%;" alt="">';
							documentResult += '        </div>';
							documentResult += '        <div class="grayCloseCheckBox190821 black">';
							documentResult += '            <input type="checkbox" id="eventpop_check_sat" onclick="layerPopup8(\'close\', \'sat\');"><label for="eventpop_check">오늘 그만 보기</label>';
							documentResult += '        </div>';
						}
						if (week === "sun") {
							documentResult += '        <div class="event-img-zone">';
							documentResult += '            <img src="http://cdn.thehandsome.com/mobile/event/detail/image/handsome_202008/happy_4hour_mob_popup_img_03.jpg" style="width:100%;" alt="">';
							documentResult += '        </div>';
							documentResult += '        <div class="grayCloseCheckBox190821 black">';
							documentResult += '            <input type="checkbox" id="eventpop_check_sun" onclick="layerPopup8(\'close\', \'sun\');"><label for="eventpop_check">오늘 그만 보기</label>';
							documentResult += '        </div>';
						}
						documentResult += '                <a href="javascript:void(0);" class="btn_close" onclick="nightEvtPopLayerClose();"><img src="/_ui/desktop/common/images/popup/ico_close.png"></a>';
						documentResult += '            </div>';
						documentResult += '        </div>';
						documentResult += '    </div>';
						documentResult += '</div>';
					}

					$("#nightEventPopup").html(documentResult);

				} else if (division === "close") {

					if (week === "fri" && $("#eventpop_check_fri").is(":checked")) {
						var todayDate = new Date();
						setCookie("nightEvtFriPopup", todayDate.getDate(), 1);
					}

					if (week === "sat" && $("#eventpop_check_sat").is(":checked")) {
						var todayDate = new Date();
						setCookie("nightEvtSatPopup", todayDate.getDate(), 1);
					}

					if (week === "sun" && $("#eventpop_check_sun").is(":checked")) {
						var todayDate = new Date();
						setCookie("nightEvtSunPopup", todayDate.getDate(), 1);
					}

					$("#nightEventPopup").data('scroll', $('#mainPopwrap1').scrollTop());
					$("#nightEventPopup").hide();
				}

			}

			//설날 공지 팝업 (2021)
			function layerPopup9(division) {

				var todayDate = new Date();
				var documentResult = "";
				if (division == "open") {

					documentResult += '	<div class="popWrap1901" style="position:fixed;top:-21px;right:10px;z-index:20;"> ';
					documentResult += '		<div class="popwrap main_banner position1 newyears-pop" style="position:relative;">';
					documentResult += '        	<div class="pop_cnt" style="position:relative;">';
					documentResult += '				<img src="http://cdn.thehandsome.com/pc/notice/pc_newyear_ko_220120.jpg" alt="설 연휴 배송 안내">';
					documentResult += '        		<a href="/svcenter/notice" style="display:block;overflow:hidden;text-indent:-999em;position:absolute;left:50%;transform:translate3d(-50%,0,0);bottom:5%;width:140px;height:35px;">자세히보기</a>';
					documentResult += '        	</div>';
					documentResult += '        	<div class="chkbox_cls" style="background:#363636;">';
					documentResult += '        		<input type="checkbox" id="cls" onclick="layerPopup9(\'close\')"> <label for="cls"> 1일 동안 열지 않음</label>';
					documentResult += '			</div>';
					documentResult += '			<a href="javascript:;" class="btn_close" onclick="layerPopup9(\'close\')">닫기</a>';
					documentResult += '		</div>';
					documentResult += '	</div>';


					$("#mainPopwrap1").html(documentResult);
				} else if (division == "close") {

					if ($('#cls').is(":checked")) {
						var todayDate = new Date();
						setCookie("newYearPopup2022", todayDate.getDate(), 1);
					}
					$("#mainPopwrap1").data('scroll', $('#mainPopwrap1').scrollTop());
					$("#mainPopwrap1").hide();
				}
			}

			//추석 공지 팝업 (2021)
			function layerPopup11(division) {

				var todayDate = new Date();
				var documentResult = "";
				if (division == "open") {

					documentResult += ' <div class="popWrap1901" style="position:fixed;top:78px;right:10px;z-index:20;"> ';
					documentResult += '     <div class="popwrap main_banner position1 newyears-pop" style="position:relative;">';
					documentResult += '         <div class="pop_cnt" style="position:relative;">';
					documentResult += '             <img src="http://cdn.thehandsome.com/pc/notice/pc_thanksgiving_ko_210914.jpg" alt="추석 연휴 배송 안내">';
					documentResult += '             <a href="/svcenter/notice" style="display:block;overflow:hidden;text-indent:-999em;position:absolute;left:50%;transform:translate3d(-50%,0,0);bottom:5%;width:140px;height:35px;">자세히보기</a>';
					documentResult += '         </div>';
					documentResult += '         <div class="chkbox_cls" style="background:#363636;">';
					documentResult += '             <input type="checkbox" id="cls" onclick="layerPopup11(\'close\')"> <label for="cls"> 1일 동안 열지 않음</label>';
					documentResult += '         </div>';
					documentResult += '         <a href="javascript:;" class="btn_close" onclick="layerPopup11(\'close\')">닫기</a>';
					documentResult += '     </div>';
					documentResult += ' </div>';


					$("#mainPopwrap1").html(documentResult);
				} else if (division == "close") {

					if ($('#cls').is(":checked")) {
						var todayDate = new Date();
						setCookie("chuseokPopup2021", todayDate.getDate(), 1);
					}
					$("#mainPopwrap1").data('scroll', $('#mainPopwrap1').scrollTop());
					$("#mainPopwrap1").hide();
				}
			}

			//통합 멤버십 약관 제정 안내 팝업(21/03/01 00시~ 03/07 23:59:59)
			function layerPopup10(division) {

				var todayDate = new Date();
				var documentResult = "";
				if (division == "open") {

					//layerPopup 생성
					documentResult += '	<div class="layerArea"> ';
					documentResult += ' 	<div class="layerBg" style="display:block;"></div>';
					documentResult += '     <div class="popwrap notipop_20190813 images-event-popup wd-atuo integration-pop" style="display:block;" tabindex="-1">';
					documentResult += '			<div class="in-box">';
					documentResult += '     		<div class="in-ab" style="width:420px; height:421px;">';
					documentResult += '					<div class="event-img-zone">';
					documentResult += '						<img src="http://cdn.thehandsome.com/pc/notice/main-popup-integration-img.jpg" alt="한섬 통합 멤버십 이용 약관 제정 안내">';
					documentResult += '						<a href="http://www.thehandsome.com/ko/svcenter/notice?subject=한섬 통합 멤버십 이용 약관 제정 안내" class="link-btn"><span class="blind">자세한 내용 보기</span></a>';
					documentResult += '					</div>';
					documentResult += '					<div class="grayCloseCheckBox190821 black">';
					documentResult += '						<input type="checkbox" id="eventpop_check" name="eventpop_check" onclick="layerPopup10(\'close\')"><label for="eventpop_check">7일 동안 열지 않음</label>';
					documentResult += '					</div>';
					documentResult += '					<a href="javascript:void(0)" class="btn_close" onclick="layerPopup10(\'close\')"><img src="/_ui/desktop/common/images/popup/ico_close.png"></a>';
					documentResult += '				</div>';
					documentResult += '			</div>';
					documentResult += '		</div>';
					documentResult += '	</div>';


					//layerPopup 삽입
					$("#membershipInfoMainWrap").html(documentResult);
				} else if (division == "close") {
					if ($('#eventpop_check').is(":checked")) {
						//쿠키생성 유효기간 쿠키생성일부터 7일 
						var todayDate = new Date();
						setCookie("membershipInfoMain", todayDate.getDate(), 7);
					}
					$("#membershipInfoMainWrap").data('scroll', $('#membershipInfoMainWrap').scrollTop());
					//popup hide
					$("#membershipInfoMainWrap").hide();
				}
			}

			//#1240 recopick 추가
			function goDetailPagebyRecommend(productCode, clickUrl) {
				var url = '/p' + "/" + productCode;
				var host = "http://" + $(location).attr('host') + url + "?type=recommendProd";
				var tempUrl = clickUrl + "&url=" + encodeURI(host);
				window.location.href = tempUrl;
			}

			function mainSlider1903() {
				$('.big_banner_inner').each(function () {
					if ($(this).hasClass('init')) {
						$(this).removeClass('init');
					}
				});

				/* 슬라이드 갯수에 따른 loop추가 및 제거(20210222) */
				var bannerIndex1 = $('#mainSlider1903_0 .swiper-slide').length;
				var bannerIndex2 = $('#mainSlider1903_1 .swiper-slide').length;
				var bannerIndex3 = $('#mainSlider1903_2 .swiper-slide').length;

				var interleaveOffset = 1;
				var swiperOptions0 = {
					initialSlide: 0,
					loop: bannerIndex1 === 1 ? false : true,
					autoplay: {
						delay: 4000,
						autoplayDisableOnInteraction: true,// 쓸어 넘기거나 버튼 클릭 시 자동 슬라이드 정지.
						disableOnInteraction: false,//180911 스와이핑 후에도 자동 롤링 되도록 추가
					},
					loopAdditionalSlides: 6,
					speed: 1000,
					pagination: {
						el: '.swiper-pagination',
						clickable: true,
						// 20200914 페이징 퍼이를 위한 주석처리
						/* type: 'progressbar', */
					},
					navigation: {
						nextEl: '.swiper-button-next.bigb',
						prevEl: '.swiper-button-prev.bigb',
					},
					simulateTouch: false,
					parallax: true,
					grabCursor: true,
					watchSlidesProgress: true,
					slidesPerView: 'auto',
					centeredSlides: true,
					on: {
						progress: function () {
							var swiper = this;
							for (var i = 0; i < swiper.slides.length; i++) {
								var slideProgress = swiper.slides[i].progress,
									innerOffset = swiper.width * interleaveOffset,
									innerTranslate = slideProgress * innerOffset;
								swiper.slides[i].querySelector(".slide-bgimg").style.transform =
									"translate3d(" + innerTranslate + "px, 0, 0)";
							}
						},
						touchStart: function () {
							var swiper = this;
							for (var i = 0; i < swiper.slides.length; i++) {
								swiper.slides[i].style.transition = "";
							}
						},
						setTransition: function (speed) {
							var swiper = this;
							for (var i = 0; i < swiper.slides.length; i++) {
								swiper.slides[i].style.transition = speed + "ms";
								swiper.slides[i].querySelector(".slide-bgimg").style.transition =
									speed + "ms";
							}
						}
					}
				}
				var swiperOptions1 = {
					initialSlide: 1,
					loop: bannerIndex2 === 1 ? false : true,
					autoplay: {
						delay: 4000,
						autoplayDisableOnInteraction: true,// 쓸어 넘기거나 버튼 클릭 시 자동 슬라이드 정지.
						disableOnInteraction: false,//180911 스와이핑 후에도 자동 롤링 되도록 추가
					},
					loopAdditionalSlides: 6,
					speed: 1000,
					navigation: {
						nextEl: '.swiper-button-next.bigb',
						prevEl: '.swiper-button-prev.bigb',
					},
					parallax: true,
					grabCursor: true,
					watchSlidesProgress: true,
					slidesPerView: 'auto',
					centeredSlides: true,
					on: {
						progress: function () {
							var swiper = this;
							for (var i = 0; i < swiper.slides.length; i++) {
								var slideProgress = swiper.slides[i].progress,
									innerOffset = swiper.width * interleaveOffset,
									innerTranslate = slideProgress * innerOffset;
								swiper.slides[i].querySelector(".slide-bgimg").style.transform =
									"translate3d(" + innerTranslate + "px, 0, 0)";
							}
						},
						touchStart: function () {
							var swiper = this;
							for (var i = 0; i < swiper.slides.length; i++) {
								swiper.slides[i].style.transition = "";
							}
						},
						setTransition: function (speed) {
							var swiper = this;
							for (var i = 0; i < swiper.slides.length; i++) {
								swiper.slides[i].style.transition = speed + "ms";
								swiper.slides[i].querySelector(".slide-bgimg").style.transition =
									speed + "ms";
							}
						}
					}
				}
				var swiper2length = $("#mainSlider1903_2 > ul > li").length;
				if (swiper2length > 0) {
					swiper2length -= 1;
				}
				var swiperOptions2 = {
					initialSlide: swiper2length,
					loop: bannerIndex3 === 1 ? false : true,
					autoplay: {
						delay: 4000,
						autoplayDisableOnInteraction: true,// 쓸어 넘기거나 버튼 클릭 시 자동 슬라이드 정지.
						disableOnInteraction: false,//180911 스와이핑 후에도 자동 롤링 되도록 추가
					},
					loopAdditionalSlides: 6,
					speed: 1000,
					navigation: {
						nextEl: '.swiper-button-next.bigb',
						prevEl: '.swiper-button-prev.bigb',
					},
					parallax: true,
					grabCursor: true,
					watchSlidesProgress: true,
					slidesPerView: 'auto',
					centeredSlides: true,
					on: {
						progress: function () {
							var swiper = this;
							for (var i = 0; i < swiper.slides.length; i++) {
								var slideProgress = swiper.slides[i].progress,
									innerOffset = swiper.width * interleaveOffset,
									innerTranslate = slideProgress * innerOffset;
								swiper.slides[i].querySelector(".slide-bgimg").style.transform =
									"translate3d(" + innerTranslate + "px, 0, 0)";
							}
						},
						touchStart: function () {
							var swiper = this;
							for (var i = 0; i < swiper.slides.length; i++) {
								swiper.slides[i].style.transition = "";
							}
						},
						setTransition: function (speed) {
							var swiper = this;
							for (var i = 0; i < swiper.slides.length; i++) {
								swiper.slides[i].style.transition = speed + "ms";
								swiper.slides[i].querySelector(".slide-bgimg").style.transition =
									speed + "ms";
							}
						}
					}
				};

				$("#mainSlider1903_1").find("div.a_txt_wrap").hide();
				$("#mainSlider1903_2").find("div.a_txt_wrap").hide();
				var swiper01 = new Swiper("#mainSlider1903_0", swiperOptions0);
				var swiper02 = new Swiper("#mainSlider1903_1", swiperOptions1);
				var swiper03 = new Swiper("#mainSlider1903_2", swiperOptions2);
			}


			function edtSlider1903() {//기획전 슬라이더
				$('.edt_banner_wrap1903 .edt_list1903').each(function (idx) {
					var swiper1903 = new Swiper('#edtSlider1903_' + idx, {
						slidesPerView: 3,
						freeMode: false,
						spaceBetween: 11,
						simulateTouch: true,
						/* scrollbar: {
							el: '.swiper-scrollbar.bar'+idx,
							hide: false,
						}, */
						pagination: {
							el: '.edt-swiper-pagination',
						},
						navigation: {
							nextEl: '.swiper-button-next.btn' + idx,
							prevEl: '.swiper-button-prev.btn' + idx,
						}
					});

					if ($(this).find('.swiper-slide').length < 4) {
						$(this).find('.swiper-button-next, .swiper-button-prev').hide();
					}
				});
			}

			function newProductListSlider1903() {//신상품 슬라이더
				var swiper1903 = new Swiper('#newListSlider', {
					slidesPerView: 'auto',
					freeMode: false,
					//                 spaceBetween: 7,
					simulateTouch: false,
					navigation: {
						nextEl: '.swiper-button-next',
						prevEl: '.swiper-button-prev',
					}
				});
			}
			function bestProductListSlider1903() {//베스트 슬라이더
				var swiper1903 = new Swiper('.product_list1903 .nbe_cnt.best .nbe_cnt_inner', {
					slidesPerView: 'auto',
					freeMode: false,
					//                 spaceBetween: 7,
					simulateTouch: false,
					navigation: {
						nextEl: '.swiper-button-next',
						prevEl: '.swiper-button-prev',
					}
				});
			}
			function tabNew() {
				var $newMenu = $('.product_list1903 .nbe_cnt.new .product_left_menu');
				var $newProd = $('.product_list1903 .nbe_cnt.new .nbe_cnt_inner');
				$newMenu.find('a').on('click', function () {
					$newMenu.find('li').removeClass('on');
					$(this).closest('li').addClass('on');
				});
			}
			function tabBest() {
				var $bestMenu = $('.product_list1903 .nbe_cnt.best .product_left_menu');
				var $bestProd = $('.product_list1903 .nbe_cnt.best .nbe_cnt_inner');
				$bestMenu.find('a').on('click', function () {
					$bestMenu.find('li').removeClass('on');
					$(this).closest('li').addClass('on');
				});
			}
			function magazinSlider1903() {
				var swiper1903 = new Swiper('#magazinSlider1903', {
					slidesPerView: 3,
					freeMode: false,
					spaceBetween: 20,
					navigation: {
						nextEl: '.themagazine_arrow.next',
						prevEl: '.themagazine_arrow.prev',
					}
				});

				$(".the_magazine_wrap1903 .themagazine_arrow.prev").css("opacity", "1");
				$(".the_magazine_wrap1903 .themagazine_arrow.next").css("opacity", "1");
				$(".the_magazine_wrap1903 .magazine_slider1903 ul").css("opacity", "1");
			}//더매거진 슬라이더
			function videoWidth() {
				var target = $('.video_area1903').attr('id');
				var idx = 0;
				var width = $("#" + target + " div:eq(" + idx + ")").width();
				var height = $("#" + target + "  div:eq(" + idx + ")").height();
				$('#' + target).find('video').css({ 'width': width + 'px', 'height': height + 'px' });
				$('#' + target).css({ 'width': width + 'px', 'height': height + 'px' });
			}
			function videoPlay1903() {
				$('.video_area1903').children('a').on('click', function () {
					$(this).find('.video_main').next('video').show();
					$(this).find('.video_main').hide();
					$('#video')[0].play();
				});
			}
			function videoEnded(target, idx) {
				$("#" + target + " video").hide();
				$("#" + target + " div:eq(" + idx + ")").show();
			}

			function pickForSlider1903() {
				var position = 0;
				var movesize = 206;
				var activeSlide = 3;
				var viewTotalWidth = $("#pickForSlider1903 ul li").size();
				var $slideId = $('#pickForSlider1903 ul');
				//$slideId.width((movesize * viewTotalWidth)+88);
				$slideId.css('left', position);
				for (var i = 0; i < 2; i++) {
					$slideId.find('li:last-child').prependTo("#pickForSlider1903 ul");
				}
				$slideId.find('li:nth-child(' + activeSlide + ')').addClass('slide_active');
				$('#pickforControls > a').click(function (event) {
					var $target = $(event.target);
					if ($target.is('#pickforControls > .next')) {
						if (position == -movesize) {
							$slideId.css('left', 0);
							$slideId.find('li:first-child').appendTo("#pickForSlider1903 ul");
							position = 0;
						}
						position -= movesize;
						$slideId.stop().animate({ left: position }, 'fast', 'swing', function () {
							if (position == -movesize) {
								$slideId.css('left', 0);
								$slideId.find('li:first-child').appendTo("#pickForSlider1903 ul");
								position = 0;
							}
							activeSlide = 3;
							$slideId.find('li').removeClass('slide_active');
							$slideId.find('li:nth-child(' + activeSlide + ')').addClass('slide_active');
						});

					} else if ($target.is('#pickforControls > .prev')) {
						if (position == 0) {
							$slideId.css('left', -movesize);
							$slideId.find('li:last-child').prependTo("#pickForSlider1903 ul");
							position = -movesize;
						}
						position += movesize;
						$slideId.stop().animate({ left: position }, 'fast', function () {
							if (position == 0) {
								$slideId.css('left', -movesize);
								$slideId.find('li:last-child').prependTo("#pickForSlider1903 ul");
								position = -movesize;
							}
							activeSlide = 4;
							$slideId.find('li').removeClass('slide_active');
							$slideId.find('li:nth-child(' + activeSlide + ')').addClass('slide_active');
						});

					}
				});

				$(".pickfor_wrap1903 .controls .prev").css("opacity", "1");
				$(".pickfor_wrap1903 .controls .next").css("opacity", "1");
				$(".pickfor_wrap1903 .pick_for ul").css("opacity", "1");
			}//당신만을 위 추천 슬라이더

			function instagramSlider1903() {
				var swiper1903 = new Swiper('#instaContents', {
					slidesPerView: 'auto',
					paginationClickable: false,
					simulateTouch: false,
					freeMode: false,
					loopedSlides: accountCount,
					spaceBetween: 20,
					centeredSlides: true,
					loop: true,
					speed: 600,
					navigation: {
						nextEl: '.instagram_arrow.next',
						prevEl: '.instagram_arrow.prev'
					}
				});
			}

			function instaImgHover() {//인스타 이미지 hover
				$(".instagram_wrap1903 #instaContents li a > div.insta_pic_info, #instaContents li a > div.insta_pic_info_txt").hide();
				$(".instagram_wrap1903 #instaContents li > a").hover(function () {
					$(this).find(".insta_pic_info").stop().fadeIn("easeOutQuart");
					$(this).find(".insta_pic_info_txt").stop().fadeIn("easeOutQuart");
					$(this).children('img').addClass('active');
				}, function () {
					$(this).find(".insta_pic_info, .insta_pic_info_txt").stop().fadeOut("300");
					$(this).children('img').removeClass('active');
				});
			}

			//CMS 컴포넌트 처리용 GA 전자상거래 메인데이터
			function setEcommerceDataCompnt(productCode, brandName, productName, location) {
				var listNm = "";
				var position;
				if (location == "0") {
					listNm = "메인_기획전";
					position = 1;
				} else if (location == "1") {
					listNm = "메인_기획전_하단";
					position = 2;
				}

				dataLayer.push({
					'event': 'ga_event', 'layerCategory': 'Ecommerce', 'layerAction': 'Click', 'layerLabel': undefined,
					'ecommerce': {
						'currencyCode': 'KRW', //통화
						'click': {
							'actionField': { 'list': listNm }, //상품 리스트명
							'products':
								[{
									"id": productCode.indexOf("_") > -1 ? productCode.split("_")[0] : productCode, //상품코드
									"name": productName.replace(/\&#039;/gi, "'"), //상품명
									"brand": brandName.replace(/\&#039;/gi, "'"), //상품 브랜드
									"category": "", //상품 카테고리
									"position": position //상품 위치
								}]
						}
					}
				});
				/* Ecommerce data 초기화
				dataLayer에 남아 있는 경우에는 전자상거래 단계만을 위해 사용하는
				필드들이 세팅되어 있으므로 undefined를 통해 초기화합니다. */
				dataLayer.push({
					'layerCategory': undefined,
					'layerAction': undefined,
					'nonInteraction': false,
					'ecommerce': undefined
				});
			}

			//기본 GA 전자상거래 메인데이터
			function setEcommerceData(idx, type, categoryCode) {
				var listNm = "";
				var position;
				var prodList;

				if (type == "NEW") {
					prodList = JSON.parse(window.sessionStorage.getItem('main_new_ecommerceDataList'));
					if (categoryCode == "WE") {
						listNm += "메인_신상품_여성";
						position = 3;
					} else if (categoryCode == "ME") {
						listNm += "메인_신상품_남성";
						position = 4;
					}
				} else if (type == "BEST") {
					prodList = JSON.parse(window.sessionStorage.getItem('main_best_ecommerceDataList'));
					if (categoryCode == "WE") {
						listNm += "메인_베스트_여성";
						position = 5;
					} else if (categoryCode == "ME") {
						listNm += "메인_베스트_남성";
						position = 6;
					}
				} else if (type == "RECOMMEND") {

					prodList = JSON.parse(window.sessionStorage.getItem('main_recommend_ecommerceDataList'));
					listNm += "메인_개인화 추천";
					position = 7;

				}

				if (prodList != null && typeof prodList != undefined) {
					if (prodList.length > 0) {
						var prodInfo = prodList[idx];

						if (listNm != "") {
							dataLayer.push({
								'event': 'ga_event', 'layerCategory': 'Ecommerce', 'layerAction': 'Click', 'layerLabel': undefined,
								'ecommerce': {
									'currencyCode': 'KRW', //통화
									'click': {
										'actionField': { 'list': listNm }, //상품 리스트명
										'products':
											[{
												'id': prodInfo.baseProductCode.indexOf("_") > -1 ? prodInfo.baseProductCode.split("_")[0] : prodInfo.baseProductCode,  //상품코드
												'name': prodInfo.productName, //상품명
												'brand': prodInfo.brandName, //상품 브랜드
												'category': '', //상품 카테고리
												'position': position //상품 위치
											}]
									}
								}
							});
							/* Ecommerce data 초기화
							dataLayer에 남아 있는 경우에는 전자상거래 단계만을 위해 사용하는
							필드들이 세팅되어 있으므로 undefined를 통해 초기화합니다. */
							dataLayer.push({
								'layerCategory': undefined,
								'layerAction': undefined,
								'nonInteraction': false,
								'ecommerce': undefined
							});
						}

					}
				}
			}

			function getExchangeRate() {
				$.ajax({
					type: "get",
					url: "/intro/getExchageRate",
					dataType: "json",
					async: false,
					success: function (result) {
						if (result.length > 0) {
							for (var i = 0; i < result.length; i++) {
								if (result[i].currencyCode == "USD") {
									rate_en = result[i].exchangeRate;
									symbol_en = result[i].symbol;
								} else {
									rate_zh = result[i].exchangeRate;
									symbol_zh = result[i].symbol;
								}
							}
						}
					}
				});
			}

			function getExchangePrice(price) {
				var exchangePrice = "";

				exchangePrice = "₩" + addComma(parseInt(price));


				return exchangePrice;
			}

	</script>
	<div id="bodyWrap">
		<div class="main_container">
			<!-- new & best -->
			<div class="product_list1903">
				<div class="nbe_cnt new">
					<div class="product_left_menu">
						<h4 class="tit">신상품</h4>
						<ul>
							<!-- jQuery Ajax -->
							<!-- default : 여성 -->
							<li><a href="javascript:getNewProductList('WE')">여성</a></li>
							<li><a href="javascript:getNewProductList('ME')">남성</a></li>
						</ul>
					</div>
					<div class="nbe_cnt_inner_wrap">
						<div
							class="nbe_cnt_inner swiper-container swiper-container-horizontal swiper-container-wp8-horizontal"
							id="newListSlider">
							<ul class="items_list swiper-wrapper">
								<!-- TODO 신상품 loop li.swiper-slide > div.item_box -->
								<c:forEach begin="0" end="10">
									<li class="swiper-slide">
										<div class="item_box">
											<!--
							class="item_info1" : 상품 이미지
							class="item_info2" : 상품 설명(브랜드, 가격)
							공통 : 상품 상세 페이지 링크
							-->
											<!-- 상품 상세 페이지 주소 -->
											<a href="${contextPath}/p/OB2C4WTO144W_CR" class="item_info1">
												<span class="item_img"> <img
													src="http://newmedia.thehandsome.com/OB/2C/SS/OB2C4WTO144W_CR_W01.jpg/dims/resize/234x353"
													alt="" name="시스루 블록 탑" class="respon_image">
											</span>
											</a> <a href="${contextPath}/p/OB2C4WTO144W_CR"
												class="item_info2"
												onclick="setEcommerceData(0, 'NEW', 'WE');"> <!-- brand -->
												<span class="brand">OBZEE</span> <!-- price --> <span
												class="price">₩595,000</span>
											</a>
										</div>
									</li>
								</c:forEach>
								<!-- end items_list loop -->
							</ul>
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
						</div>
					</div>
				</div>
				<div class="nbe_cnt best">
					<div class="product_left_menu">
						<h4 class="tit">베스트</h4>
						<ul>
							<!-- TODO -->
							<!-- jQuery Ajax -->
							<!-- default : 여성 -->
							<li><a href="javascript:getBestProductList('WE')">여성</a></li>
							<li><a href="javascript:getBestProductList('ME')">남성</a></li>
						</ul>
					</div>
					<div class="nbe_cnt_inner_wrap">
						<div
							class="nbe_cnt_inner swiper-container swiper-container-horizontal swiper-container-wp8-horizontal"
							id="bestListSlider">
							<ul class="items_list swiper-wrapper">
								<!-- TODO 베스트 loop li.swiper-slide > div.item_box -->
								<c:forEach begin="0" end="10">
									<li class="swiper-slide">
										<div class="item_box">
											<a href="${contextPath}/p/CM2C3WPC260W_BK" class="item_info1"
												onclick="javascript:setEcommerceData(0, 'BEST', 'WE');">
												<span class="item_img"> <img
													src="http://newmedia.thehandsome.com/CM/2C/SS/CM2C3WPC260W_BK_W01.jpg/dims/resize/234x353"
													alt="" name="백 밴딩 원턱 팬츠" class="respon_image">
											</span>
											</a> <a href="${contextPath}/p/CM2C3WPC260W_BK"
												class="item_info2"
												onclick="setEcommerceData(0, 'BEST', 'WE');"> <!-- brand -->
												<span class="brand">the CASHMERE</span> <!-- price --> <span
												class="price">₩425,000</span>
											</a>
										</div>
									</li>
								</c:forEach>
								<!-- end loop li.swiper-slide > div.item_box -->
							</ul>
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev swiper-button-disabled"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- new & best -->
		</div>
	</div>

	<!-- footerWrap -->
	<div id="footerWrap">
		<%@include file="include/footer.jsp"%>
	</div>
	<!-- footerWrap -->
</body>

</html>