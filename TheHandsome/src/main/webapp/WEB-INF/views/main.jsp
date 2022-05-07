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
	href="${contextPath }/resources/css/style.css">
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
                    navigation: {
                        nextEl: '.swiper-button-next.btn'+idx,
                        prevEl: '.swiper-button-prev.btn'+idx,
                    }
            });
            
            if($(this).find('.swiper-slide').length < 4){
                $(this).find('.swiper-button-next, .swiper-button-prev').hide();
            }
        });
    }
    
    function newProductListSlider1903(){//신상품 슬라이더
        var swiper1903 = new Swiper('#newListSlider', {
                slidesPerView: 'auto',
                freeMode: false,
//                 spaceBetween: 7,
                simulateTouch:false,
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                }
        });
    }
    function bestProductListSlider1903(){//베스트 슬라이더
        var swiper1903 = new Swiper('.product_list1903 .nbe_cnt.best .nbe_cnt_inner', {
                slidesPerView: 'auto',
                freeMode: false,
//                 spaceBetween: 7,
                simulateTouch:false,
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                }
        });
    }
    function tabNew(){
        var $newMenu = $('.product_list1903 .nbe_cnt.new .product_left_menu');
        var $newProd = $('.product_list1903 .nbe_cnt.new .nbe_cnt_inner');
        $newMenu.find('a').on('click',function(){
            $newMenu.find('li').removeClass('on');
            $(this).closest('li').addClass('on');
        });
    }
    function tabBest(){
        var $bestMenu = $('.product_list1903 .nbe_cnt.best .product_left_menu');
        var $bestProd = $('.product_list1903 .nbe_cnt.best .nbe_cnt_inner');
        $bestMenu.find('a').on('click',function(){
            $bestMenu.find('li').removeClass('on');
            $(this).closest('li').addClass('on');
        });
    }
    function magazinSlider1903(){
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
    function videoWidth(){
        var target = $('.video_area1903').attr('id');
        var idx = 0;
        var width = $("#"+ target +" div:eq("+idx+")").width();
        var height = $("#"+ target +"  div:eq("+idx+")").height();
        $('#'+target).find('video').css({'width':width+'px','height':height+'px'});
        $('#'+target).css({'width':width+'px','height':height+'px'});
    }
    function videoPlay1903(){
	    $('.video_area1903').children('a').on('click',function(){
	        $(this).find('.video_main').next('video').show();
	        $(this).find('.video_main').hide();
	        $('#video')[0].play();
	    });
    }
    function videoEnded(target, idx){
	    $("#"+ target +" video").hide();
	    $("#"+ target +" div:eq("+idx+")").show();
    }

    function pickForSlider1903(){
        var position = 0;
        var movesize = 206;
        var activeSlide = 3;
        var viewTotalWidth = $("#pickForSlider1903 ul li").size();
        var $slideId = $('#pickForSlider1903 ul');
        //$slideId.width((movesize * viewTotalWidth)+88);
        $slideId.css('left',position);
        for(var i=0;i<2;i++){
            $slideId.find('li:last-child').prependTo("#pickForSlider1903 ul");
        }
        $slideId.find('li:nth-child('+activeSlide+')').addClass('slide_active');
        $('#pickforControls > a').click(function(event){
	        var $target=$(event.target);
	        if($target.is('#pickforControls > .next')){
	            if(position==-movesize){
	                $slideId.css('left',0);
	                $slideId.find('li:first-child').appendTo("#pickForSlider1903 ul");
	                position = 0;
	            }
	            position-=movesize;
	            $slideId.stop().animate({left:position}, 'fast', 'swing',function(){
	                if(position==-movesize){
	                 $slideId.css('left',0);
	                 $slideId.find('li:first-child').appendTo("#pickForSlider1903 ul");
	                 position=0;
	                }
	                activeSlide = 3;
	                $slideId.find('li').removeClass('slide_active');
	                $slideId.find('li:nth-child('+activeSlide+')').addClass('slide_active');
	            });
	
	        }else if($target.is('#pickforControls > .prev')){
	            if(position==0){
	                     $slideId.css('left',-movesize);
	                     $slideId.find('li:last-child').prependTo("#pickForSlider1903 ul");
	                     position=-movesize;
	            }
	            position+=movesize;
	            $slideId.stop().animate({left:position}, 'fast',function(){
	                if(position==0){
	                 $slideId.css('left',-movesize);
	                 $slideId.find('li:last-child').prependTo("#pickForSlider1903 ul");
	                 position=-movesize;
	                }
	                activeSlide = 4;
	             $slideId.find('li').removeClass('slide_active');
	             $slideId.find('li:nth-child('+activeSlide+')').addClass('slide_active');
	            });
	
	        }
		});
        
        $(".pickfor_wrap1903 .controls .prev").css("opacity", "1");
        $(".pickfor_wrap1903 .controls .next").css("opacity", "1");
        $(".pickfor_wrap1903 .pick_for ul").css("opacity", "1");
     }//당신만을 위 추천 슬라이더

     function instagramSlider1903(){
         var swiper1903 = new Swiper('#instaContents', {
                 slidesPerView: 'auto',
                 paginationClickable: false,
                 simulateTouch:false,
                 freeMode: false,
                 loopedSlides: accountCount,
                 spaceBetween: 20,
                 centeredSlides:true,
                 loop:true,
                 speed:600,
                 navigation: {
                     nextEl: '.instagram_arrow.next',
                     prevEl: '.instagram_arrow.prev'
                 }
         });
     }
     
     function instaImgHover(){//인스타 이미지 hover
 		$(".instagram_wrap1903 #instaContents li a > div.insta_pic_info, #instaContents li a > div.insta_pic_info_txt").hide();
 		$(".instagram_wrap1903 #instaContents li > a").hover(function(){
 			$(this).find(".insta_pic_info").stop().fadeIn("easeOutQuart");
 			$(this).find(".insta_pic_info_txt").stop().fadeIn("easeOutQuart");
 			$(this).children('img').addClass('active');
 		},function(){
 			$(this).find(".insta_pic_info, .insta_pic_info_txt").stop().fadeOut("300");
 			$(this).children('img').removeClass('active');
 		});
 	}
     
     function rouletteEvtPopClose(type) {
    	    if(type == "close") {
    	        $('#popRouletteEvt').hide();
    	    }else {
    	    	var date;
    	    	
    	    	$.ajax({
    	    	type : "GET",
    	    	cache: false,
    	    	async: false,
    	    	url: location.href,
    	    	complete: function (req, textStatus){
    	    		var dateString = req.getResponseHeader('Date');
    	    		if(dateString.indexOf('GMT')===-1){
    	    			dateString +=' GMT';
    	    		}
    	    		date = new Date(dateString);
    	    		
    	    		}
    	    	});
    	    	
    	        var todayDate = new Date(date);
    	        setCookie("rouletteEventPopup",todayDate.getDate(),1);
    	        $('#popRouletteEvt').hide();
    	    }
    	}


    	function goRouletteEvent(){
    	    location.href='/ko/magazine/events/8799828694912';
    	}
    	
    	//11월 한섬스타일 이벤트 랜딩
    	function goHandsomeStyleEvent(){
    	    location.href='/ko/magazine/events/8799959734144';
    	}
    	//이벤트 유도팝업 닫기
    	function popClose1904(){ //팝업 닫기
    		$('#playHandsomeStyle').remove();
    	}
    	function popClose1911(){ //팝업 닫기
    		$('#joinEventPopup').remove();
    	}
    	
    	function GA_main(action,e){
    		var index;
    		var label;
    		var eventAction;
    		if(action == "banner"){
    			label = escape(e.find('.title').text());
    			index = parseInt(e.parent().attr('data-swiper-slide-index')) + 1;
    			eventAction = "배너_"+index;
    			
    		} else if (action == "eventBanner"){
    			eventAction = "이벤트_배너";
    			label = escape(e.find('.s_title').text());
    			
    		} else if (action == "exhibitionBanner"){
    			eventAction = "기획전_배너";
    			label = escape(e.find('.s_title').text());
    			
    		} else if (action == "exhibitionListImage0"){
    			eventAction = "기획전_리스트";
    			label = escape(e.parents().find('.edt_banner_inner1 .s_title').text())+"_"+escape(e.parent().find('.title').html());
    			
    		} else if (action == "exhibitionList0"){
    			eventAction = "기획전_리스트";
    			label = escape(e.parents().find('.edt_banner_inner1 .s_title').text())+"_"+escape(e.find('.title').html());
    			
    		} else if (action == "exhibitionListImage1"){
    			eventAction = "기획전_리스트";
    			label = escape(e.parents().find('.edt_banner_inner3 .s_title').text())+"_"+escape(e.parent().find('.title').html());
    			
    		} else if (action == "exhibitionList1"){
    			eventAction = "기획전_리스트";
    			label = escape(e.parents().find('.edt_banner_inner3 .s_title').text())+"_"+escape(e.find('.title').html());
    			
    		} else if (action == "newImg") {
    			eventAction = "신상품";
    			label = escape(e.parents().find('.nbe_cnt.new li.on').text())+"_"+escape(e.find('img').attr('name'));
    			
    		} else if (action == "new") {
    			eventAction = "신상품";
    			label = escape(e.parents().find('.nbe_cnt.new li.on').text())+"_"+escape(e.parent().find('img').attr('name'));
    			
    		} else if (action == "bestImg") {
    			eventAction = "베스트";
    			label = escape(e.parents().find('.nbe_cnt.best li.on').text())+"_"+escape(e.attr('name'));
    			
    		} else if (action == "best") {
    			eventAction = "베스트";
    			label = escape(e.parents().find('.nbe_cnt.best li.on').text())+"_"+escape(e.parent().find('img').attr('name'));
    			
    		} else if (action == "exhibitionVideo"){    		
    			eventAction = "기획영상";
    			label = escape(e.parents().find('.video_main_wrap p.tit').text());
    			
    		} else if (action.indexOf("theMagazine") > -1){
    			action.split("the");
    			index =parseInt(action[0])+1;
    			eventAction = "더매거진";
    			label = index+"_"+ escape(e.parent().find('p.tit').text());
    		} else if (action == "recommend"){
    			eventAction = "당신만을위한추천";
    			label = escape(e.parent().find('.title').text());
    		} else if (action == "moment"){
    			eventAction = "한섬모먼트";
    			label = e.find('.account p').text().substring(1);
    		}
    	
    		
    		GA_Event("메인", eventAction,label);
    	}
    	
		
    	//CMS 컴포넌트 처리용 GA 전자상거래 메인데이터
    	function setEcommerceDataCompnt(productCode, brandName, productName, location){
    	    var listNm = "";
    	    var position;
    	    if(location == "0"){
    	        listNm = "메인_기획전";
    	        position = 1;
    	    }else if(location == "1"){
                listNm = "메인_기획전_하단";
                position = 2;
            }
    	    
            dataLayer.push({
	                'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
	                'ecommerce': {
	                'currencyCode': 'KRW', //통화
	                'click': {
	                'actionField': { 'list': listNm }, //상품 리스트명
	                'products':
		                [{
			                "id": productCode.indexOf("_") > -1 ? productCode.split("_")[0] : productCode, //상품코드
			                "name": productName.replace(/\&#039;/gi,"'"), //상품명
			                "brand": brandName.replace(/\&#039;/gi,"'"), //상품 브랜드
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
	            'layerCategory' : undefined,
	            'layerAction' : undefined,
	            'nonInteraction' : false,
	            'ecommerce' : undefined
            });
        }
    	
    	//기본 GA 전자상거래 메인데이터
    	function setEcommerceData(idx, type, categoryCode){
    	    var listNm = "";
    	    var position;
    	    var prodList;
    	    
    	    if(type == "NEW"){
    	        prodList = JSON.parse(window.sessionStorage.getItem('main_new_ecommerceDataList'));
    	        if(categoryCode == "WE"){
                    listNm += "메인_신상품_여성";
                    position = 3;
                }else if(categoryCode == "ME"){
                    listNm += "메인_신상품_남성";
                    position = 4;
                }
    	    }else if(type == "BEST"){
    	        prodList = JSON.parse(window.sessionStorage.getItem('main_best_ecommerceDataList'));
    	        if(categoryCode == "WE"){
                    listNm += "메인_베스트_여성";
                    position = 5;
                }else if(categoryCode == "ME"){
                    listNm += "메인_베스트_남성";
                    position = 6;
                }
            }else if(type == "RECOMMEND"){
                
                prodList = JSON.parse(window.sessionStorage.getItem('main_recommend_ecommerceDataList'));
                listNm += "메인_개인화 추천";
                position = 7;
                
    	    }
    	    
    	    if(prodList != null && typeof prodList != undefined){
                if(prodList.length > 0){
                    var prodInfo = prodList[idx];
                    
                    if(listNm != ""){
			    	    dataLayer.push({
					        'event': 'ga_event', 'layerCategory' : 'Ecommerce', 'layerAction' : 'Click','layerLabel' : undefined,
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
					        'layerCategory' : undefined,
					        'layerAction' : undefined,
					        'nonInteraction' : false,
					        'ecommerce' : undefined
				        });
                    }
                    
                    if(type == "RECOMMEND"){
                        brazeLogCustomEvent(type, idx);
                    }
                }
    	    }
    	}
    	
		function getExchangeRate() {
			$.ajax({
				type : "get",
				url : "/ko/intro/getExchageRate",
				dataType : "json",
				async : false,
				success : function( result ) {
					if(result.length > 0) {
						for(var i=0; i < result.length; i++) {
							if(result[i].currencyCode == "USD") {
								rate_en = result[i].exchangeRate;
								symbol_en = result[i].symbol;
							} else {
								rate_zh = result[i].exchangeRate;
								symbol_zh = result[i].symbol;
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
								<c:forEach items="${list_new}" var="pro_new_view" begin="0"
									end="4">
									<li class="swiper-slide">
										<div class="item_box">
											<!-- 											
							class="item_info1" : 상품 이미지
							class="item_info2" : 상품 설명(브랜드, 가격)
							공통 : 상품 상세 페이지 링크 
							 -->

											<a
												href="${contextPath}/p/detail?product_id=${pro_new_view.pid}"
												class="item_info1"> <span class="item_img"> <img
													src="${pro_new_view.pimg1}" name="${pro_new_view.pname}"
													class="respon_image">
											</span>
											</a> <a href="${contextPath}/p/${pro_new_view.pid}"
												class="item_info2"> <span class="brand">${pro_new_view.bname}</span>
												<span class="price">₩${pro_new_view.pprice}</span>
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
								<c:forEach items="${list_best}" var="pro_best_view" begin="0"
									end="4">
									<li class="swiper-slide">
										<div class="item_box">
											<a
												href="${contextPath}/p/detail?product_id=${pro_best_view.pid}"
												class="item_info1"> <span class="item_img"> <img
													src="${pro_best_view.pimg1}" alt=""
													name="${pro_best_view.pname}" class="respon_image">
											</span>
											</a> <a href="${contextPath}/p/${pro_best_view.pid}"
												class="item_info2"> <!-- brand --> <span
												class="brand">${pro_best_view.bname}</span> <!-- price --> <span
												class="price">₩${pro_best_view.pprice}</span>
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