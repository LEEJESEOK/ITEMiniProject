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
	src="${contextPath}/resources/js/jquery.vticker.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/handsome/common.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/handsome/html5shiv-printshiv.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/handsome/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/handsome/ui.js?20211105"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/jquery.form-3.51.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/common_function.js?20220411"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/videojs-ie8.min.js"></script>
</head>

<body>
	<!-- headerwrap -->
	<div id="headerWrap">
		<div class="header header_fixed header_main1903">
			<script>
				var arkQuery = $.noConflict(true);
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

        $("input:checkbox[class=\"checkboxEvent\"]").each(function () {
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
            type: "GET",
            url: "/intro/setCategoryList",
            data: { "brandName": brandName, "brandCode": brandCode, "parentBrandCode": parentBrandCode, "sortIndex": sortIndex },
            success: function (data) {
                window.location.reload();
            },
            error: function (e) {
                console.log("error", e);
            }
        });

    }

    function resetCategory() {

        $("input:checkbox[class=\"checkboxEvent\"]").each(function () {
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
        if (typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
        document.cookie = cookies;
    }
    //쿠키 생성 (00시 제거)
    function setOneDayCookie(cName, cValue, cDay) {
        var currentDate = new Date();
        var expire = new Date(currentDate.getFullYear(), currentDate.getMonth(), currentDate.getDate() + cDay, 0, 0, 0);
        cookies = cName + '=' + escape(cValue) + '; path=/ ';
        if (typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
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
            if (end == -1) end = cookieData.length;
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
        document.cookie = name + "=; path=" + path + "; expires=" + today.toGMTString() + ";";
    }

    function deletecookiePath(name, path) {
        var today = new Date();

        if (path == "") {
            path = "/";
        }

        today.setDate(today.getDate() + -1);
        document.cookie = name + "=; path=" + path + "; expires=" + today.toGMTString() + ";";
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

    $(document).ready(function () {

        $('.gnb_nav.hscene1906 .cate_m .hscene').mouseover(function () { // 툴팁
            $('.gnb_nav.hscene1906 .cate_m li .delch_box').addClass('on');
        });
        $('.gnb_nav.hscene1906 .cate_m .hscene').mouseout(function () {
            $('.gnb_nav.hscene1906 .cate_m li .delch_box').removeClass('on');
        });

        var todayDate = new Date();
        var startDate = new Date('2018/05/29 00:00:01'), endDate = new Date('2018/06/17 23:59:59');
        if (todayDate.getTime() >= startDate.getTime() && todayDate.getTime() <= endDate.getTime()) {
            $("#athome_header_event").show();
        } else {
            $("#athome_header_org").show();
        }

        //IE8버젼 체크
        if (getCookie("ie8AlertHideYN") != "on") {
            if (navigator.appVersion.indexOf('MSIE 8.0') >= 0 || navigator.appVersion.indexOf('Trident/4.0') >= 0) {
                var html = "<div style='position:relative; width: 100%; height: 30px;'><div style='position:fixed;width:100%;background:#ffffbc none repeat scroll 0% 0%; text-align: center; z-index: 999; line-height: 30px;'>";
                html += "Thehandsome.com은 인터넷 익스플로러 10 이상에 최적화되어 있습니다.";
                html += " <a href='http://windows.microsoft.com/ko-kr/windows/downloads'><strong>[브라우저 업데이트 바로가기]</strong></a>";
                html += "<a href='#' onclick='ie8AlertHide();' style='display:block;float:right;padding-right:10px'>X</a></div></div>";
                $(".loading_bar").before("<div align='center' id='alertIE8'>" + html + "</div>");
            }
        }

        settingCookie = getCookie("searchSaveYN");

        if (settingCookie == "") {
            setCookie("searchSaveYN", "on", 365);
        }

        $('#gnbsearch').click(function () {
            var searchwords = $('#gnbsearchwords').val();
            searchwords = searchwords.replace(/(^\s*)|(\s*$)/g, "");

            if (searchwords != "") {
                location.href = "/ko/hssearch?searchwords=" + searchwords;
            } else {
                $('#gnbsearchwords').val("");
                alert("검색어를 입력해주세요.");
            }
        });

        $('.btn_svclose').click(function () {
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
        $('.favBtn').click(function () {

            words = $(this).text();
            location.href = "/ko/hssearch?searchwords=" + words;

        });
        $('.newlyBtn').click(function () {

            words = $(this).text();
            location.href = "/ko/hssearch?searchwords=" + words;

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

        var arr = [sw1, sw2, sw3, sw4, sw5];
        var arr_date = [sw1_date, sw2_date, sw3_date, sw4_date, sw5_date];

        arr_date.sort(compStringReverse);

        for (var i = 0; i < arr_date.length; i++) {
            for (var j = 0; j < arr.length; j++) {
                if (arr_date[i] != "") {
                    if (arr[j].indexOf(arr_date[i]) > 0) {
                        $("#searchWord" + (i + 1)).text(arr[j].split("_")[0]);
                        $('.searchWord' + (i + 1)).css("display", "block");

                        $("#searchWord" + (i + 1)).next().attr("onclick", "deletecookie('HS_Seachwords" + (j + 1) + "')");
                    }
                }
            }

            if (arr_date[i] == "") {
                $("#searchWord" + (i + 1)).text("");
            }
        }



        //자동로그인

        var ssoUrl = "https://sso.h-point.co.kr:29865" + "/co/setSsoReqJSONP.hd";
        gfnSsoReqAjax(ssoUrl, hpAutoLogin);


        //vip 채팅 서비스
        if ("" != "") {
            var pag = "main201903Page";

            var chkPag = ["svCenterMainPage", "noticePage", "manToManInquiryPage", "faqPage",
                "mendingPage", "vocProvisionPage", "vocInfoFormPage", "memberJoinGuidePage", "theClubInfoPage",
                "memberBenefitGuidePage", "pointGuidePage", "couponGuidePage", "paymentGuidePage", "asGuidePage"];

            var vipPassCheck = "N"; // VVIP/THESTAR/STAR 등급 체크
            var timePassCheck = "N"; // 평일 0900~1800 체크

            if ("" == "VVIP" || ("" == "THESTAR" || "" == "STAR")) {
                vipPassCheck = "Y";
            }

            if (vipPassCheck == "N" && "" == "PASS") { // MANIA 이하 등급, 평일 체크 
                // chatbotInfo "PASS" : 등급이 VVIP/THESTAR/STAR/MANIA 이거나 평일 0900~1800
                var hour = new Date().format("HHmm");
                var weekName = new Date().format("E");
                if (weekName != "일요일" && weekName != "토요일" && hour >= "0900" && hour <= "1800") {
                    $.ajax({
                        type: "POST",
                        url: "/ko/chatbot/chkholiday",
                        data: { "CSRFToken": "7932f37e-50ca-47ea-b75b-f6385a48d9ac" },
                        async: false,
                        success: function (result) {
                            if (result == true) {
                                timePassCheck = "Y";
                            }
                        },
                        error: function (request, statuss, error) {
                            ;
                        }
                    });
                }
            }

            if ((vipPassCheck == "Y" || timePassCheck == "Y") && "main201903Page" == "main201903Page") {
                $('#chatbotMain').show();
            } else {
                $('#chatbotMain').hide();
            }

            if (chkPag.indexOf(pag) > -1) {
                if (vipPassCheck == "Y" || timePassCheck == "Y") {
                    $('#chatbot').show();
                } else {
                    $('#chatbot').hide();
                }
            } else {
                $('#chatbot').hide();
            }
        }
    
 …</script>
			<form id="autologinForm" name="autologinForm"
				action="/ko/hp/autologin" method="get">
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
			<!-- //headerWrap -->
			<%@include file="include/gnb.jsp"%>
		</div>
	</div>
	<!-- headerwrap -->

	<div id="bodyWrap"></div>

	<!-- footerwrap -->
	<div id="footerWrap">
		<%@include file="include/footer.jsp"%>
	</div>
	<!-- footerwrap -->
</body>

</html>