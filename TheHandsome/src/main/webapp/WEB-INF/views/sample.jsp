<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
<c:set var="requestURL" value="${pageContext.request.requestURL }" />
<c:set var="requestURI" value="${pageContext.request.requestURI }" />
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="No-Cache" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=1, target-densitydpi=medium-dpi" />
<meta property="og:type" content="article">
<meta property="og:title" content="더한섬닷컴 | THE HANDSOME.COM">
<meta property="og:description"
	content="타임, 마인, 시스템, SJSJ 등 프리미엄 브랜드 및 트렌디한 해외·편집숍까지 가득한 스타일 플랫폼!">
<meta property="og:image"
	content="http://s3.ap-northeast-2.amazonaws.com/cdn.thehandsome.com-kr/pc/210510_logo/%E3%84%B9%EB%A1%9C%EA%B3%A0.png">
<meta property="og:url" content="http://www.thehandsome.com/ko/">
<meta name="keywords"
	contents="한섬, 더한섬닷컴, 한섬몰, 한섬아울렛, 한섬닷컴, 더한섬, 한섬올라인몰, HANDSOME, thehandsome">
<title>&#45908;&#54620;&#49452;&#45815;&#52980; | THE
	HANDSOME.COM</title>
<link rel="shortcut icon"
	href="http://cdn.thehandsome.com/resources/images/common/thehandsome_ic_16x16.ico" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/font_80.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/common.css?20220401" media="all" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/layout.css?20220331" media="all" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/popup.css?20210225" media="all" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/jquery-ui.min.css" media="all" />

<link rel="stylesheet" type="text/css"
	href="/resources/css/brand.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/swiper.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/main_201903.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="/resources/css/footer.css?20220406" media="all" />
<style type="text/css" media="print">
@IMPORT url("/resources/blueprint/print.css");
</style>

<script type="text/javascript"
	src="/resources/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="/resources/js/jquery.vticker.js"></script>
<!-- 200318 ì¶ê° -->
<script type="text/javascript">
		//<![CDATA[
		
		var ACC = { config: {} };
			ACC.config.contextPath = "";
			ACC.config.encodedContextPath = "/ko";
			ACC.config.commonResourcePath = "/resources";
			ACC.config.themeResourcePath = "/_ui/desktop/theme-blue";
			ACC.config.siteResourcePath = "/_ui/desktop/site-handsome";
			ACC.config.rootPath = "/_ui/desktop";	
			ACC.config.CSRFToken = "3de4f578-9983-4f70-8b91-fb368a78b6aa";
			ACC.pwdStrengthVeryWeak = 'Very weak';
			ACC.pwdStrengthWeak = 'Weak';
			ACC.pwdStrengthMedium = 'Medium';
			ACC.pwdStrengthStrong = 'Strong';
			ACC.pwdStrengthVeryStrong = 'Very strong';
			ACC.pwdStrengthUnsafePwd = 'password.strength.unsafepwd';
			ACC.pwdStrengthTooShortPwd = 'Too short';
			ACC.pwdStrengthMinCharText = 'Minimum length is %d characters';
			ACC.accessibilityLoading = 'Loading... Please wait...';
			ACC.accessibilityStoresLoaded = 'Stores loaded';
			
			ACC.autocompleteUrl = '/ko/search/autocomplete';
			
			
		//]]>
	</script>
<script type="text/javascript">
	//<![CDATA[
	ACC.addons = {};	//JS holder for addons properties
			
	
//]]>
</script>
<script type="text/javascript">
    var handsomeContextPath = "/ko"; 
</script>

<script type="text/javascript"
	src="/resources/js/handsome/common.js"></script>
<script type="text/javascript"
	src="/resources/js/handsome/html5shiv-printshiv.js"></script>
<script type="text/javascript"
	src="/resources/js/handsome/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="/resources/js/handsome/ui.js?20211105"></script>
<script type="text/javascript"
	src="/resources/js/jquery.form-3.51.js"></script>
<script type="text/javascript"
	src="/resources/js/common_function.js?20220411"></script>
<script type="text/javascript"
	src="/resources/js/videojs-ie8.min.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="/resources/js/handsome/html5shiv.js"></script>
<script type="text/javascript" src="/resources/js/handsome/respond.js"></script>
<![endif]-->

<script type="text/javascript"
	src="/resources/js/jquery-ui-1.11.2.min.js"></script>

<script type="text/javascript"
	src="/resources/js/instagramAPI.js"></script>
<script type="text/javascript"
	src="/resources/js/instagramAPI.js"></script>
<script type="text/javascript"
	src="/resources/js/handsome/jquery.bxslider.min.js"></script>
<script type="text/javascript"
	src="/resources/js/makePCookie.js"></script>

<script type="text/javascript" src="/resources/js/siteoverlay.js"></script>
<script type="text/javascript"
	src="/resources/js/jquery.min.js"></script>

<script type="text/javascript"
	src="/resources/js/swiper.min.js"></script>
<script type="text/javascript" src="/resources/js/netfunnel.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="/resources/js/netfunnel_skin.js" charset="UTF-8"></script>

<script type="text/javascript" src="/resources/js/unorm.js"></script>

<script type="text/javascript"
	src="/resources/js/appboy.min.js"></script>
<script type="text/javascript">
var setDimensionData = function(){
    //GA 설정 sessionStorage 페이지 이동시 초기화 
    window.sessionStorage.removeItem('ecommerceDataList');
    window.sessionStorage.removeItem('main_new_ecommerceDataList');
    window.sessionStorage.removeItem('main_best_ecommerceDataList');
    window.sessionStorage.removeItem('main_recommend_ecommerceDataList');
    window.sessionStorage.removeItem('normal_cate_ecommerceDataList');
    window.sessionStorage.removeItem('brand_main_new_brazeDataList1');   // 상단NEW
    window.sessionStorage.removeItem('brand_main_new_brazeDataList2');   // 하단NEW
    window.sessionStorage.removeItem('brand_main_sales_brazeDataList1'); // 상단BEST
    window.sessionStorage.removeItem('brand_main_sales_brazeDataList2'); // 하단BEST
    var cid = getCid();
    var device = "PC_WEB";
    var entrySite = "";
    
	    entrySite = "KO";
	
    
    var oneDepthPage;   // 없을 경우 undifined 그대로 넘겨야 하기 때문에 초기화 X
    var pageTitle = "";
    var tmp = getPageDepth();
    if(tmp != ""){
        oneDepthPage = tmp;
        pageTitle = getGAPageTitle(oneDepthPage);
        if(pageTitle == ""){
        	oneDepthPage = undefined;
            pageTitle = document.title;
        }
    }else{
        pageTitle = document.title;
    }
    
    var pageviewObj = new Object();
        pageviewObj.dimension1 =  cid;                     //고객_ClientID
        pageviewObj.dimension15 = device;                       //채널_채널유형
        pageviewObj.dimension16 = entrySite;                  //채널_언어 - #2846 삭제요청 hychung, #2846 복원요청 hychung
        pageviewObj.dimension18 = oneDepthPage;                 //페이지_1Depth (페이지depth 없는경우 undefined처리)
        pageviewObj.title = pageTitle;                          //페이지제목     (페이지제목 없는경우 document.title 입력)
    
     //로그인 했을경우만 추가 dimension 세팅
     
    
    // 검색 결과 페이지 일 경우만 처리
    if(window.location.pathname.indexOf("/hssearch/searchCount") > -1) {
        pageviewObj.dimension17 = "";                     //검색_검색어(검색결과페이지일때 사용)
    }
    
    return pageviewObj;
};

// 고객_ClientID
function getCid() {
    var cookieData = document.cookie;
    var Cookies = cookieData.split(';')
    var clientId = "";
    for (var i=0; i < Cookies.length; i++) {
        if (Cookies[i].split('=')[0] == '_ga' || Cookies[i].split('=')[0] == ' _ga') {
        clientId = Cookies[i].split('=')[1];
        }
    }
    if (clientId != "") {
        clientId = clientId.substring(6);
    }
    if (clientId == "") {
        try{
	        ga(function(tracker) {
	        clientId = tracker.get('clientId');
	        });
        }catch(e) {
            console.log(e);
        }
    }
    return clientId;
}

function getPageDepth(){
    var returnDepth = "";
    var target_url  = document.location.href;
    if(target_url.substring(target_url.indexOf("/ko/")+4) == ""){
        returnDepth = "메인";
    }else if(target_url.substring(target_url.indexOf("/ko")+3) == ""){
        returnDepth = "메인";
    }else if(target_url.indexOf("/p/") > -1){
        returnDepth = "상품상세";
    }else if(target_url.indexOf("/b/fourmMain") > -1){
        returnDepth = "브랜드";
    }else if(target_url.indexOf("/b/storeInformation") > -1){
        returnDepth = "매장안내";
    }else if(target_url.indexOf("/b/") > -1){
    	
    	if(target_url.toLowerCase().substring(target_url.indexOf("/c/")+3).indexOf("br") > -1){
    		returnDepth = "브랜드";
    	}else{
    		returnDepth = "";
    	}
		
    }else if(target_url.indexOf("/c/ou_") > -1){
        returnDepth = "아울렛";
    }else if(target_url.indexOf("/c/") > -1){
        // if'/c/카테고리코드' : /가 한개면
        if(target_url.substring(target_url.indexOf("/c/")+3).indexOf("/") > -1){
        	if(target_url.toLowerCase().substring(target_url.indexOf("/c/")+3).indexOf("br") > -1){
            	returnDepth = "브랜드";
        	}else{
        		returnDepth = "카테고리";
        	}
        }else{
            returnDepth = "카테고리";
        }
    }else if(target_url.indexOf("/mypage") > -1){
        returnDepth = "마이페이지";
    }else if(target_url.indexOf("/magazine/events") > -1){
        returnDepth = "이벤트";
    }else if(target_url.indexOf("/magazine/") > -1){
        returnDepth = "매거진";
    }else if(target_url.indexOf("/shoppingbag") > -1){
        returnDepth = "쇼핑백";
    }else if(target_url.indexOf("/ou/") > -1){
        returnDepth = "아울렛";
    }else if(target_url.indexOf("/checkout/") > -1){
        returnDepth = "주문";
    }else if(target_url.indexOf("/member/") > -1){
        returnDepth = "로그인";
    }else if(target_url.indexOf("/login/") > -1){
        returnDepth = "로그인";
    }else if(target_url.indexOf("/sns/") > -1){
        returnDepth = "SNS";
    }else if(target_url.indexOf("/prodqna/") > -1){
        returnDepth = "상품Q&A";
    }else if(target_url.indexOf("/svcenter/") > -1){
        returnDepth = "고객센터";
    }else if(target_url.indexOf("/item/") > -1){
        returnDepth = "아이템";
    }else if(target_url.indexOf("/store-finder/") > -1){
        returnDepth = "매장안내";
    }else if(target_url.indexOf("/footer/") > -1){
        returnDepth = "FOOTER";
    }else if(target_url.indexOf("/appDownloadSMS/") > -1){
        returnDepth = "APP 다운로드";
    }else if(target_url.indexOf("/intro/") > -1){
        returnDepth = "당신만의 한섬";
    }else if(target_url.indexOf("/mobilecommon/mainIntro") > -1){
        returnDepth = "공통";
    }else if(target_url.indexOf("/mobilecommon/search") > -1){
        returnDepth = "공통";
    }else if(target_url.indexOf("/hssearch") > -1){
        returnDepth = "검색";
    }else if(target_url.indexOf("/product/") > -1){
        returnDepth = "상품";
    }else if(target_url.indexOf("/globalMain") > -1){
        returnDepth = "메인";
    }else if(target_url.indexOf("/main") > -1){
        returnDepth = "메인";
    }else{
        returnDepth = "";
    }
    return returnDepth;
}

function getGAPageTitle(oneDepthPage){
    var returnTitle = "";
    var target_url  = document.location.href;
    
    //if(target_url.substring(target_url.indexOf("/ko/")+4).indexOf("/") == -1){
    if(target_url.substring(target_url.indexOf("/ko/")+4) == ""){
        returnTitle = oneDepthPage;
    }else if(target_url.substring(target_url.indexOf("/ko")+3) == ""){
        returnTitle = oneDepthPage;
    }else if(target_url.indexOf("/p/") > -1){
        returnTitle = oneDepthPage+">";
    }else if(target_url.indexOf("/c//") > -1){
        returnTitle = "브랜드>>전체보기";
    }else if(target_url.indexOf("/b/fourmMain") > -1){
        returnTitle = oneDepthPage+">FOURM 메인";
    }else if(target_url.indexOf("/b/storeInformation") > -1){
        returnTitle = oneDepthPage;
    }else if(target_url.indexOf("/b//brand") > -1){
        returnTitle = oneDepthPage+">>소개";
    }else if(target_url.indexOf("/b//storeInformation") > -1){
        returnTitle = oneDepthPage+">>매장";
    }else if(target_url.indexOf("/b/lookBookDetail?") > -1){
        returnTitle = oneDepthPage+">룩북>상세>";
    }else if(target_url.indexOf("/b/lookBook") > -1){
        returnTitle = oneDepthPage+">룩북>리스트";
    }else if(target_url.indexOf("/b//lookBookDetail?lookBookCode=") > -1){
        returnTitle = oneDepthPage+">>룩북>";
    }else if(target_url.indexOf("/b//lookBook") > -1){
        returnTitle = oneDepthPage+">>룩북";
    }else if(target_url.indexOf("/b/") > -1){
        returnTitle = oneDepthPage+">>브랜드 메인";
    }else if(target_url.indexOf("/c//ou") > -1){
    	returnTitle = oneDepthPage;
    	
        
        if("false"){
        	
        }
    }else if(target_url.indexOf("/c//") > -1){
    	returnTitle = oneDepthPage;    	
        
    }else if(target_url.indexOf("/c/") > -1){
    	returnTitle = oneDepthPage;    	
        
    }else if(target_url.indexOf("/mypage/order/myordersAthome") > -1){
        returnTitle = oneDepthPage+">앳홈신청 및 결제";
    }else if(target_url.indexOf("/mypage/order/myorders") > -1){
        returnTitle = oneDepthPage+">주문/배송조회";
    }else if(target_url.indexOf("/mypage/myGradeInfo") > -1){
        returnTitle = oneDepthPage+">나의 회원등급";
    }else if(target_url.indexOf("/mypage/voucher") > -1){
        returnTitle = oneDepthPage+">쿠폰";
    }else if(target_url.indexOf("/mypage/mypoint") > -1){
        returnTitle = oneDepthPage+">혜택관리>나의 한섬마일리지";
    }else if(target_url.indexOf("/mypage/myEGiftCard") > -1){
        returnTitle = oneDepthPage+">혜택관리>e-giftcard";
    }else if(target_url.indexOf("/mypage/myWish") > -1){
        returnTitle = oneDepthPage+">위시리스트";
    }else if(target_url.indexOf("/mypage/rsalarm") > -1){
        returnTitle = oneDepthPage+">재입고 알림";
    }else if(target_url.indexOf("/mypage/personInfomationChangePWCheck") > -1){
        returnTitle = oneDepthPage+">개인정보 변경/탈퇴";
    }else if(target_url.indexOf("/mypage/mydelivery") > -1){
        returnTitle = oneDepthPage+">배송지 관리";
    }else if(target_url.indexOf("/mypage/oneClick") > -1){
        returnTitle = oneDepthPage+">나의 정보관리>원클릭 결제 관리";
    }else if(target_url.indexOf("/mypage/myreview") > -1){
        returnTitle = oneDepthPage+">내 상품평";
    }else if(target_url.indexOf("/mypage/myqna") > -1){
        returnTitle = oneDepthPage+">상품 Q&A";
    }else if(target_url.indexOf("/mypage/mymantomaninquiry") > -1){
        returnTitle = oneDepthPage+">1:1 문의";
    }else if(target_url.indexOf("/mypage/mypageFloatingPopup") > -1){
        returnTitle = oneDepthPage+">메인";
    }else if(target_url.indexOf("/mypage/mypoint/mobile") > -1){
        returnTitle = oneDepthPage+">나의 혜택";
    }else if(target_url.indexOf("/mypage/event/myevents") > -1){
        returnTitle = oneDepthPage+">나의 이벤트";
    }else if(target_url.endsWith("/ko/mypage/", target_url.length)){
        returnTitle = oneDepthPage+">메인";
    }else if(target_url.endsWith("/ko/mypage", target_url.length)){
        returnTitle = oneDepthPage+">메인";
    }else if(target_url.indexOf("/magazine/events/") > -1){
        returnTitle = oneDepthPage+">상세>";
    }else if(target_url.indexOf("/magazine/events") > -1){
        returnTitle = oneDepthPage+">리스트";
    }else if(target_url.indexOf("/magazine/editorials/") > -1){
        returnTitle = oneDepthPage+">에디토리얼>상세>";
    }else if(target_url.indexOf("/magazine/editorials") > -1){
        returnTitle = oneDepthPage+">에디토리얼>리스트";
    }else if(target_url.indexOf("/magazine/exhibitions/") > -1){
        returnTitle = oneDepthPage+">기획전>상세>";
    }else if(target_url.indexOf("/magazine/exhibitions") > -1){
        returnTitle = oneDepthPage+">기획전>리스트";
    }else if(target_url.indexOf("/magazine/handpeople") > -1){
        returnTitle = oneDepthPage+">핸썸피플 리스트";
    }else if(target_url.indexOf("/magazine/instagram") > -1){
        returnTitle = oneDepthPage+">인스타그램";
    }else if(target_url.indexOf("/magazine/lookbookDetail/") > -1){
        returnTitle = oneDepthPage+">룩북>상세>";
    }else if(target_url.indexOf("/magazine/lookbook") > -1){
        returnTitle = oneDepthPage+">룩북>리스트";
    }else if(target_url.indexOf("/magazine/newsDetailtemplatetype") > -1){
        returnTitle = oneDepthPage+">뉴스>상세>";
    }else if(target_url.indexOf("/magazine/news") > -1){
        returnTitle = oneDepthPage+">뉴스>리스트";
    }else if(target_url.indexOf("/magazine/weeklypick") > -1){
        returnTitle = oneDepthPage+">위클리픽 리스트";
    }else if(target_url.indexOf("/magazine/submain") > -1){
        returnTitle = oneDepthPage+">THE매거진 메인";
    }else if(target_url.indexOf("/magazine/youtubeList") > -1){
        returnTitle = oneDepthPage+">비디오";
    }else if(target_url.indexOf("/shoppingbag") > -1){
        returnTitle = oneDepthPage;
    }else if(target_url.indexOf("/ou/outletMain") > -1){
        returnTitle = oneDepthPage+">메인";
    }else if(target_url.indexOf("/c/ou_/ou") > -1){
        returnTitle = oneDepthPage+">";
    }else if(target_url.indexOf("/mobilecommon/search") > -1){
        returnTitle = oneDepthPage+">키워드";
    }else if(target_url.indexOf("/hssearch/") > -1){
        returnTitle = oneDepthPage+">검색결과";
    }else if(target_url.indexOf("/checkout/ordersheet") > -1){
        returnTitle = oneDepthPage+">주문서 작성";
    }else if(target_url.indexOf("/checkout/orderConfirmation") > -1){
        returnTitle = oneDepthPage+">주문 완료";
    }else if(target_url.indexOf("/member/login") > -1){
        returnTitle = oneDepthPage;
    }else if(target_url.indexOf("/login/checkout") > -1){
        returnTitle = oneDepthPage+">미로그인시로그인유도";
    }else if(target_url.indexOf("/member/pwChange") > -1){
        returnTitle = oneDepthPage+">비밀번호 변경 대상";
    }else if(target_url.indexOf("/member/findIdPwPage") > -1){
        returnTitle = oneDepthPage+">한섬회원 아이디/비밀번호 찾기";
    }else if(target_url.indexOf("/member/globaljoincomplete") > -1){
        returnTitle = oneDepthPage+">가입완료";
    }else if(target_url.indexOf("/member/joincomplete") > -1){
        returnTitle = oneDepthPage+">가입완료";
    }else if(target_url.indexOf("/member/joinGuidePage") > -1){
        returnTitle = oneDepthPage+">회원가입안내";
    }else if(target_url.indexOf("/member/joininfoform") > -1){
        returnTitle = oneDepthPage+">간편회원 정보입력";
    }else if(target_url.indexOf("/member/joinstart") > -1){
        returnTitle = oneDepthPage+">간편회원 이메일";
    }else if(target_url.indexOf("/member/nonMemberLogin") > -1){
        returnTitle = oneDepthPage+">비회원 주문조회";
    }else if(target_url.indexOf("/sns/main") > -1){
        returnTitle = oneDepthPage+">메인";
    }else if(target_url.indexOf("/sns/detail?") > -1){
        returnTitle = oneDepthPage+">포스트상세보기";
    }else if(target_url.indexOf("/sns/myNotice") > -1){
        returnTitle = oneDepthPage+">나의알림";
    }else if(target_url.indexOf("/sns/collectionDetail?") > -1){
        returnTitle = oneDepthPage+">콜렉션상세";
    }else if(target_url.indexOf("/sns/followerList?") > -1){
        returnTitle = oneDepthPage+">팔로워리스트";
    }else if(target_url.indexOf("/sns/followingList?") > -1){
        returnTitle = oneDepthPage+">팔로윙리스트";
    }else if(target_url.indexOf("/sns/snsSearch?searchWord=") > -1){
        returnTitle = oneDepthPage+">태그검색";
    }else if(target_url.indexOf("/sns/message?") > -1){
        returnTitle = oneDepthPage+">메시지";
    }else if(target_url.indexOf("/sns/messageList") > -1){
        returnTitle = oneDepthPage+">메시지리스트";
    }else if(target_url.indexOf("/sns/myLevel") > -1){
        returnTitle = oneDepthPage+">나의레벨";
    }else if(target_url.indexOf("/sns/myProfile?") > -1){
        returnTitle = oneDepthPage+">나의프로필";
    }else if(target_url.indexOf("/sns/weeklyBest") > -1){
        returnTitle = oneDepthPage+">위클리베스트";
    }else if(target_url.indexOf("/sns/write") > -1){
        returnTitle = oneDepthPage+">포스팅작성";
    }else if(target_url.indexOf("/mobilecommon/mainIntro") > -1){
        returnTitle = oneDepthPage+">인트로";
    }else if(target_url.indexOf("/svcenter/submain") > -1){
        returnTitle = oneDepthPage+">서브메인";
    }else if(target_url.indexOf("/svcenter/notice") > -1){
        returnTitle = oneDepthPage+">공지사항";
    }else if(target_url.indexOf("/svcenter/mantomaninquiry") > -1){
        returnTitle = oneDepthPage+">1:1 문의";
    }else if(target_url.indexOf("/svcenter/faq") > -1){
        returnTitle = oneDepthPage+">FAQ";
    }else if(target_url.indexOf("/svcenter/mending") > -1){
        returnTitle = oneDepthPage+">수선진행조회";
    }else if(target_url.indexOf("/svcenter/memberjoinguide") > -1){
        returnTitle = oneDepthPage+">쇼핑가이드>회원가입";
    }else if(target_url.indexOf("/svcenter/theClubInfo") > -1){
        returnTitle = oneDepthPage+">쇼핑가이드>온라인 멤버십";
    }else if(target_url.indexOf("/svcenter/memberbenefitguide") > -1){
        returnTitle = oneDepthPage+">쇼핑가이드>한섬 VVIP 혜택";
    }else if(target_url.indexOf("/svcenter/pointguide") > -1){
        returnTitle = oneDepthPage+">쇼핑가이드>한섬마일리지 혜택";
    }else if(target_url.indexOf("/svcenter/couponguide") > -1){
        returnTitle = oneDepthPage+">쇼핑가이드>쿠폰";
    }else if(target_url.indexOf("/svcenter/asguide") > -1){
        returnTitle = oneDepthPage+">쇼핑가이드>배송/반품/AS";
    }else if(target_url.indexOf("/svcenter/paymentguide") > -1){
        returnTitle = oneDepthPage+">쇼핑가이드>주문/결제";
    }else if(target_url.indexOf("/svcenter/athomeInfo") > -1){
        returnTitle = oneDepthPage+">at HOME";
    }else if(target_url.indexOf("/svcenter/footerAthomeInfo") > -1){
        returnTitle = oneDepthPage+">딜리버리서비스";
    }else if(target_url.indexOf("/svcenter/mobilemain") > -1){
        returnTitle = oneDepthPage+">메인";
    }else if(target_url.indexOf("/svcenter/mobilenotice") > -1){
        returnTitle = oneDepthPage+">공지사항";
    }else if(target_url.indexOf("/svcenter/mobilefaq") > -1){
        returnTitle = oneDepthPage+">FAQ";
    }else if(target_url.indexOf("/svcenter/mobilemending") > -1){
        returnTitle = oneDepthPage+">수선진행조회";
    }else if(target_url.indexOf("/svcenter/serviceguide?targetSlide=0") > -1){
        returnTitle = oneDepthPage+">서비스소개>간편서비스";
    }else if(target_url.indexOf("/svcenter/serviceguide?targetSlide=1") > -1){
        returnTitle = oneDepthPage+">서비스소개>스마트쇼핑";
    }else if(target_url.indexOf("/svcenter/serviceguide?targetSlide=2") > -1){
        returnTitle = oneDepthPage+">서비스소개>유니크한섬";
    }else if(target_url.indexOf("/svcenter/serviceguide") > -1){
        returnTitle = oneDepthPage+">서비스소개";
    }else if(target_url.indexOf("/item/we") > -1){
        returnTitle = oneDepthPage+">WE";
    }else if(target_url.indexOf("/item/me") > -1){
        returnTitle = oneDepthPage+">ME";
    }else if(target_url.indexOf("/store-finder/") > -1){
        returnTitle = oneDepthPage;
    }else if(target_url.indexOf("/footer/footerBrandintro") > -1){
        returnTitle = oneDepthPage+">브랜드소개";
    }else if(target_url.indexOf("/footer/footerCompanyIntro") > -1){
        returnTitle = oneDepthPage+">회사소개>한섬소개";
    }else if(target_url.indexOf("/footer/footerCEOGreetings") > -1){
        returnTitle = oneDepthPage+">회사소개>CEO 메시지";
    }else if(target_url.indexOf("/footer/footerBrandintro") > -1){
        returnTitle = oneDepthPage+">회사소개>브랜드소개";
    }else if(target_url.indexOf("/footer/footerGovernance") > -1){
        returnTitle = oneDepthPage+">투자정보>기업지배구조";
    }else if(target_url.indexOf("/footer/footerFinancialInfo") > -1){
        returnTitle = oneDepthPage+">투자정보>재무정보";
    }else if(target_url.indexOf("/footer/footerStockInfo") > -1){
        returnTitle = oneDepthPage+">투자정보>주가정보";
    }else if(target_url.indexOf("/footer/footerIR") > -1){
        returnTitle = oneDepthPage+">투자정보>IR";
    }else if(target_url.indexOf("/footer/footerCorporatePartnership") > -1){
        returnTitle = oneDepthPage+">동반성장>소개";
    }else if(target_url.indexOf("/footer/footerCoreFourPractices") > -1){
        returnTitle = oneDepthPage+">동반성장>4대 실천사항";
    }else if(target_url.indexOf("/footer/footerCooperatorSelection") > -1){
        returnTitle = oneDepthPage+">동반성장>협력업체 선정";
    }else if(target_url.indexOf("/footer/footerSupportProgram") > -1){
        returnTitle = oneDepthPage+">동반성장>지원제도";
    }else if(target_url.indexOf("/footer/footerContactUs") > -1){
        returnTitle = oneDepthPage+">동반성장>소통의 장";
    }else if(target_url.indexOf("/appDownloadSMS/") > -1){
        returnTitle = oneDepthPage;
    }else if(target_url.indexOf("/intro/mainYours") > -1){
        returnTitle = oneDepthPage;
    }else if(target_url.indexOf("/globalMain") > -1){
        returnTitle = oneDepthPage;
    }else if(target_url.indexOf("/main") > -1){
        returnTitle = oneDepthPage;
    }
    
    return returnTitle;
}

if (!String.prototype.endsWith) {
    String.prototype.endsWith = function(searchString, position) {
        var subjectString = this.toString();
        if (typeof position !== 'number' || !isFinite(position) || Math.floor(position) !== position || position > subjectString.length) {
            position = subjectString.length;
        }
        position -= searchString.length;
        var lastIndex = subjectString.indexOf(searchString, position);
        return lastIndex !== -1 && lastIndex === position;
    };
}

function GA_Event(Category,Action,Label) {
    
    Label = unescape(Label).replace(/\&#039;/gi,"'");
    
    var v_Label = Label;
    var v_Category = Category;
    var v_Action = Action;
    //공백처리을  _ 처리
    if(Category != null){
        v_Category = Category.replace(/\s{2,}/gi,' ').trim().replace(/\s/gi,'_');
    }
    if(Action != null){
        v_Action = Action.replace(/\s{2,}/gi,' ').trim().replace(/\s/gi,'_');
    }
    if(Label != null){
        v_Label = Label.replace(/\s{2,}/gi,' ').trim().replace(/\s/gi,'_');
    }
    ga('gp.send','event',v_Category,v_Action,v_Label);
}
</script>
<style media="screen">
.blsmflw1 {
	animation: target_image 1.5s;
	animation-iteration-count: 2;
	transform-origin: 50% 50%;
}

@
keyframes target_image { 0% {
	transform: rotate(-1deg);
}
50%
{
transform








:




 




rotate








(9
deg






)
}
100%
{
transform








:




 




rotate








(-1
deg






);
}
}
</style>

<script>

 $(document).ready(function(){

    
    //아울렛 하위브랜드 없을시 이름 숨김처리
    $(".outlet_brand1803 .sm_dep1 .liDep1").each(function(){ 
        if($(this).find('ul li').length == 0) {
            $(this).remove();
        }
    });
    
    
    var testDt = "2018/03/23 09:00:00";
    
    var todayDate = new Date(); 
    var startDate = new Date(testDt), endDate = new Date('2018/04/08 23:59:59');
//     var startDate = new Date('2018/03/23 00:00:00'), endDate = new Date('2018/04/08 23:59:59');
    if (todayDate.getTime() >= startDate.getTime() && todayDate.getTime() <= endDate.getTime()) {

        var obj = [];
        obj.push("main");
        obj.push("brandMain");
        obj.push("exhibition");
        obj.push("productDetail");
        obj.push("news");
        obj.push("instagram");
        obj.push("event");

        var ranBannerIdx = Math.floor((Math.random() * obj.length * 2));
        
        //(메인, 상품상세, 기획전, 브랜드메인, 뉴스, 이벤트, 인스타그램)일때만 레이어노출
        var viewYn = false;
        var ranYn = false;
        var type = "";
        

        var url = $(location).attr("href");
        var referer = "";
        if(url == referer || referer == "") {
            viewYn = false;
        }

        if(getCookie('blossomsPopup') != todayDate.getDate()) {
            if(viewYn == true && ranYn == true) {
                var innerHtml =  "<div class=\"evtpop_blsm_0314\" style=\"position:fixed;top:220px;left:80px;margin-left:0;z-index:15;background:url('http://cdn.thehandsome.com/pc/event/detail/image/evt_blsmbg_180321.png') 8px 2px no-repeat;width:100px;height:110px;\">";
                    innerHtml += "  <div class=\"blsmflw1\" style=\"position:absolute;\">";
                    innerHtml += "      <img src=\"http://cdn.thehandsome.com/Mobile/event/detail/image/m_evt_blsm2_180321.png\" alt=\"꽃잎줍기\">";
                    innerHtml += "  </div>";
                    innerHtml += "  <a href=\"javascript:blossomsEvent(\'"+type+"\');\" alt=\"이벤트GO\" style=\"display:block;position:absolute;top:10px;width:110px;height:85px;\">&nbsp;</a>";
                    innerHtml += "  <a href=\"javascript:blossomsClose(\'close'\);\" alt=\"꽃잎close\" style=\"background:url('/resources/images/common/btn_close.png') no-repeat;display:block;position:absolute;top:0;right:-7px;width:18px;height:18px;z-index:2;\">&nbsp;</a>";
                    innerHtml += "  <div style=\"position:absolute;bottom:-4px;left:17px;width:120px;\">";
                    innerHtml += "      <label for=\"day_close\" style=\"cursor:pointer;text-decoration:underline;color:#6e6e6e;letter-spacing:-.5px;\" onclick=\"blossomsClose(\'day_close\');\">하루 보지 않기</label>";
                    innerHtml += "      <input id=\"day_close\" type=\"checkbox\" name=\"day_close\" value=\"하루 보지 않기\" onclick=\"blossomsClose(\'day_close\');\" style=\"display:none;\">";
                    innerHtml += "  </div>";
                    innerHtml += "</div>";
                    
                $("#bodyWrap").prepend(innerHtml);
            }
            
        }
    }
    
});
 
var playItem = ""; 
function setPlayEarlySummer(item){
     
     //로그인 안했을경우, 로그인페이지로
      //로그인후 참여하실수 있습니다.
         var obj = $(".popwrap_renewal1910.no_login");
         var tp=($(window).height()-obj.outerHeight())/2+$(window).scrollTop();
         if(tp < 0) tp=0;
         obj.css("top", tp);
         obj.show();
         $('#ealrySummerLayer').show();
     
     //로그인 했을경우, 이벤트 페이지로 
     
 }
 

function evtPopClose(type) {
    if(type == "close") {
        $('.evt_pop_earlysummer').hide();
    }else {
        var todayDate = new Date(); 
        setCookie("earlysummerPopup",todayDate.getDate(),1);
        $('.evt_pop_earlysummer').hide();
        $('.popwrap_renewal1910').hide();
        $('#ealrySummerLayer').hide();
    }
};

function goLogin(){
    location.href='/ko/member/login';
}

function goEalryEvent(){
    location.href='/ko/magazine/events/8799238805376';
}

var playMapleItem = ""; 
function setPlayMaple(item){
  //로그인 안했을경우, 로그인페이지로
     //로그인후 참여하실수 있습니다.
	    $.ajax({
	        url: '/ko/magazine/events/setMapleSession'+"?type="+item,
	        dataType:"json",
	        type: "get",
	        cache : false,
	        dataType : "json",
	        async : false,
	        contentType : "application/json",
	        success:function(data){
	            var obj = $(".popwrap_maple_evt1909.no_login");
	            var tp=($(window).height()-obj.outerHeight())/2+$(window).scrollTop();
	            if(tp < 0) tp=0;
	            obj.css("top", tp);
	            obj.show();
	            $(".evt_minipop_maple").hide();
	            $('#mapleLayer').show();
	        },
	        error:function(e){
	            //
	        }
	    });
        
    
    //로그인 했을경우, 이벤트 페이지로 
    
}


function mapleEvtPopClose(type) {
    if(type == "close") {
        $(".evt_minipop_maple").hide();
        $('.popwrap_maple_evt1909').hide();
        $('#mapleLayer').hide();
    }else {
        var todayDate = new Date();
        setCookie("mapleEventPopup",todayDate.getDate(),1);
        $('.popwrap_maple_evt1909').hide();
        $(".evt_minipop_maple").hide();
        $('#mapleLayer').hide();
    }
};

function goMapleEvent(){
    location.href='/ko/magazine/events/8799664789376';
}

function blossomsEvent(type) {
    
    $.ajax({
        url: '/ko/magazine/events/setBlossomsSession'+"?type="+type,
        dataType:"json",
        type: "get",
        cache : false,
        dataType : "json",
        async : false,
        contentType : "application/json",
        success:function(data){
            //로그인 안했을경우, 로그인페이지로
            
	            var la = new layerAlert('벚꽃 이벤트는 로그인 후 응모 가능합니다');
	            
	            la.confirmAction = function(){
	                location.href='/ko/member/login';
	            };
            
            
           //로그인 했을경우, 이벤트 페이지로 
            
        },
        error:function(e){
            //
        }
    });
    
}

function blossomsClose(type) {
    if(type == "close") {
	    $('.evtpop_blsm_0314').hide();
    }else {
//         if($('#day_close').is(":checked")) {
            var todayDate = new Date(); 
            setCookie("blossomsPopup",todayDate.getDate(),1);
            $('.evtpop_blsm_0314').hide();
//         }
    }
};

/**
 * 2020.03.31 hmk
 *
 * 입력하려는 productId가 배열에 있는지 확인해서
 * 있을 경우에는 해당 배열 항목 삭제하고 입력하려는 
 * productId가 key인 js object 생성하여 삽입. (한마디로 replace)
 * value : 신규 항목일 때
 * oldValue : 기존 항목이 있어서 교체할 때
 */
function mapSet( array, key, value, oldValue ) {
	var isKeyExist = false ;
	for( var i ; i < array.length ; i++ ) {
		if( array[i].key === key ) {
      		array.splice( i, 1 ) ;
      		array.push( {
      			key : key
  	        	, value : oldValue
  	        } ) ;
      		isKeyExist = true ;
  		}
    }
	// 키 존재 여부가 false인 경우는 상기 로직이 수행되지 않았다는 의미 == 새로운 항목
    // 이므로 배열에 그냥 입력
	if( ! isKeyExist ) {
		array.push( {
  			key : key
	        , value : value
	    } ) ;
    }
}

<!--  recoPick  START ---->

try{
	var birthday = '';
	var splitBirthday = birthday != '' ? birthday.split(" ")[5]: ''; //출생년도
	var gender   = '';
	
	
	
	(function(w,d,n,s,e,o) {
	  w[n]=w[n]||function(){(w[n].q=w[n].q||[]).push(arguments)};
	  e=d.createElement(s);e.async=1;e.charset='utf-8';e.src='//static.recopick.com/dist/production.min.js';
	  o=d.getElementsByTagName(s)[0];o.parentNode.insertBefore(e,o);
	})(window, document, 'recoPick', 'script');
	
	recoPick('service', 'thehandsome.com/ko/');   
	
	    try{
	        recoPick('sendLog','visit');
	    }catch(e) {
	        console.log(e);
	    }
	
}catch(e){console.log(e);}
<!--  recoPick END ---->


function setCategoryNameInKO(targetCateCode, defaultCateName){
    var cates = "AS|잡화^AS01|여성슈즈^AS011|부츠^AS012|로퍼/블로퍼^AS013|스니커즈^AS014|플랫^AS015|힐/슬링백^AS016|샌들/슬라이드^AS017|기타 슈즈^AS02|남성슈즈^AS021|부츠^AS022|포멀슈즈^AS023|스니커즈^AS024|샌들/슬라이드^AS025|기타 슈즈^AS031|토트백^AS032|숄더/크로스바디백^AS033|클러치 백^AS034|기타 백^AS041|토트백^AS042|숄더/크로스바디백^AS043|클러치 백^AS044|기타 백^AS051|머플러^AS052|스카프^AS061|이어링/커프^AS062|목걸이^AS063|팔찌^AS064|반지^AS065|기타 주얼리^AS07|기타 ACC^AS071|모자^AS072|양말^AS073|장갑^AS074|벨트^AS075|지갑^AS076|헤어ACC^AS077|테크ACC^AS078|기타소품^BE011|토너/에멀전/크림^BE012|세럼/앰플/오일/밤^BE013|클렌징/스크럽/마스크^BE031|핸드·바디로션/크림/오일^BE032|핸드·바디워시/스크럽^BE033|샴푸/컨디셔너^BE034|트리트먼트/오일/스프레이^BE035|기타 바디/헤어케어^BE041|향수^EG02|감사^LS|라이프스타일^LS011|패브릭^LS012|프래그런스^LS013|데코레이션^LS014|기타소품^LS021|스킨케어^LS022|욕실용품^LS031|그릇^LS032|보드/트레이^LS033|커트러리^LS034|커피/티^LS035|패브릭/냅킨^LS036|기타소품^LS041|문구^LS042|책^LS043|기타소품^LS051|패션^LS052|기타소품^LS061|의류^LS062|잡화^ME011|티셔츠^ME012|셔츠^ME013|니트^ME014|스웨터^ME015|가디건/베스트^ME021|루즈/테이퍼드^ME022|데님^ME023|쇼츠^ME025|슬림/스트레이트^ME028|조거/트랙^ME031|재킷^ME032|점퍼^ME033|트렌치코트^ME034|코트^ME035|다운/패딩^ME041|드레스셔츠^ME042|수트재킷^ME044|수트팬츠^ME095|TIME HOMME : ONLINE EXCLUSIVE^WE011|티셔츠^WE012|블라우스^WE013|셔츠^WE014|니트^WE015|가디건/베스트^WE021|캐주얼^WE022|포멀^WE023|데님^WE024|쇼츠^WE031|미니 스커트^WE032|펜슬 스커트^WE033|플레어 스커트^WE034|롱/맥시 스커트^WE041|미니 드레스^WE042|미디 드레스^WE043|롱/맥시 드레스^WE051|재킷^WE052|점퍼^WE053|트렌치 코트^WE054|코트^WE055|다운/패딩^WE091|OBZEE : ICONIC OBZEE^WE092|TIME : SIGNATURE SUIT^WE093|SYSTEM : JEANS^WE095|FOURM THE STORE : PALETTE^WE096|FOURM STUDIO : RE:STUDIO^WE098|SYSTEM : PARIS PRESENTATION^WE09B|O'2nd : 25th Anniv. Marie Assenat ^WE09Q|LATT : with 신민아"; //WE011|티셔츠^WE012|블라우스^...
    var cateArr = null;
    var returnCateName = "";
    if(targetCateCode != ""){
        if(cates != ""){
            cateArr = cates.split("^");
            if(cateArr.length > 0){
                $(cateArr).each(function(idx){
                    if(cateArr[idx] != ""){ // WE011|티셔츠
                        var compareCate = cateArr[idx].split("|");
                        if(compareCate.length == 2){ // code | name
                            var compareCateCode = compareCate[0]; //WE011
                            if(compareCateCode.toUpperCase() == targetCateCode.toUpperCase()){
                                returnCateName = compareCate[1]; //티셔츠
                            }
                        }
                    }
                });
            }
        }
        
        // 한글 카테고리명이 없을경우 defaultCateName로 재설정
        if(returnCateName == ""){
            returnCateName = defaultCateName;
        }
    }
    return returnCateName;
}
</script>

<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '1947530058811697'); // Insert your pixel ID here.
fbq('track', 'PageView');
</script>
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=1947530058811697&ev=PageView&noscript=1" />
</noscript>
<!-- End Facebook Pixel Code -->

<!-- #2894 - 카카오광고 집행 위한 픽셀&SDK 삽입 -->
<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
if(typeof kakaoPixel !== 'undefined'){
      var kakaoTrackId = '3482319208237780781'; //개발
      if(location.href.indexOf("www.thehandsome.com") > -1) kakaoTrackId = '7855119525940511046'; //운영
      kakaoPixel(kakaoTrackId).pageView();
}
</script>
<!-- #2894 - 카카오광고 집행 위한 픽셀&SDK 삽입 END -->
<script>
var pageviewObj = new Object();
pageviewObj = setDimensionData();
<!-- GA 추적코드 추가 -->
<!-- Google Analytics -->
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

try{
	ga('create', 'UA-154649175-1', 'auto', 'gp');
	ga('gp.set', 'anonymizeIp', true);              // IP 익명화 선언
	<!-- End Google Analytics -->
	ga('gp.set',pageviewObj);
}catch(e) {
    console.log(e);
}

<!-- GTM 추적코드 추가 -->
<!-- dataLayer 초기선언 -->
dataLayer = [pageviewObj];

<!-- Google Tag Manager -->
(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5PCJDFJ');
<!-- End Google Tag Manager -->

</script>

</head>

<body oncontextmenu='return false'>
	<p>${contextURL}" ${contextURI}" ${contextPath}"</p>
	<!-- <div id="transparent_mask"></div> -->
	<script>
			//라쿠텐 유입
			var siteID = "" ? "" : "";
			if(siteID != ""){
				(function(cname, cvalue){
					//20일 fix : 추후 변경 가능 - 변경시 bos단 처리
					var d = new Date();
					d.setTime(d.getTime() + (20*24*60*60*1000));
					document.cookie = cname + '=' + cvalue + '; expires=' + d.toUTCString() + '; path=/';
				})('rakuten', siteID);
			}
			(function(cname, cvalue, day){
				var d = new Date();
				d.setTime(d.getTime() + (day*24*60*60*1000));
				document.cookie = cname + '=' + cvalue + '; expires=' + d.toUTCString() + '; path=/';
			})('sslvisit1', false, -7);
			</script>
	<!-- 현대닷컴 유입 시작 -->
	<script>
			(function(cname, cvalue, day){
				var d = new Date();
				d.setTime(d.getTime() + (day*24*60*60*1000));
				document.cookie = cname + '=' + cvalue + '; expires=' + d.toUTCString() + '; path=/';
			})('thehyundai', false, -7);
			</script>
	<!-- 현대닷컴 유입 끝 -->

	<!-- hmall 유입 시작 -->
	<script>
			(function(cname, cvalue, day){
				var d = new Date();
				d.setTime(d.getTime() + (day*24*60*60*1000));
				document.cookie = cname + '=' + cvalue + '; expires=' + d.toUTCString() + '; path=/';
			})('hyundaihmall', false, -7);
			</script>
	<!-- hmall 유입 끝 -->

	<!-- 광고 유입 시작 -->
	<script>
            (function(cname, cvalue, day){
                var d = new Date();
                d.setTime(d.getTime() + (day*24*60*60*1000));
                document.cookie = cname + '=' + cvalue + '; expires=' + d.toUTCString() + '; path=/';
            })('fromSite', '', -7);
            </script>
	<!-- 광고 유입 끝 -->
	<!-- Loading -->
	<div class="loading_bar" id="loadingBarDiv" style="display: none;">
		<img src="/resources/images/common/loading.gif" alt="loading" />
		<span>�로딩중</span>
	</div>
	<!-- //Loading -->

	<form id="CSRFForm" action="/ko/" method="post">
		<div>
			<input type="hidden" name="CSRFToken"
				value="3de4f578-9983-4f70-8b91-fb368a78b6aa" />
		</div>
	</form>
	<!-- headerWrap -->
	<div id="headerWrap">
		<div class="header header_fixed header_main1903">
			<script type="text/javascript"
				src="/resources/js/SsoAjax.js"></script>

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
    if(token == null) {
        $.ajax({
            type:"POST",
            url:"/ko/chatbot/token",
            data: {"CSRFToken":"3de4f578-9983-4f70-8b91-fb368a78b6aa"},
            async : false,
            success:function(data){
                if(data.result == "SHOULD_LOGIN") {
                    var la = new layerAlert("로그인이 필요합니다");
                    la.confirmAction = function(){//확인 버튼 클릭시 추가 호출 펑션
                        location.href = "/ko/member/login";
                    };
                }
                else if(data.result == "NOT_VIP") {
                    var la = new layerAlert("VVIP 회원님만 이용 가능하십니다");
                    la.confirmAction = function(){//확인 버튼 클릭시 추가 호출 펑션
                    };
                }
                else if(data.result == "OFF-HOURS") {//일반 : CREW, FRIEND, 간편회원일경우, 평일 오전 9시 30분 ~ 오후 6시 30분만 사용가능
                    var la = new layerAlert("평일(월~금) 09:00 ~ 18:00 (토/일, 공휴일 휴무)에 이용 가능하십니다");
                    la.confirmAction = function(){//확인 버튼 클릭시 추가 호출 펑션
                    };
                }
                else {
                    if(data.token != "") {
                        token = data.token;
                    }
                }
            },
            error:function(e){
                ;
            }
        });
    }

    if(token != null && token != '') {
        try{
            ga('gp.send','pageview',{
                'title':'하니톡_채팅서비스', //가상페이지 화면명
                'location':'http://www.thehandsome.com/ko/hanitalk' //가상페이지URL
            });
        }catch(e) {
            console.log(e);
        }
        $("#chatbot_token").val(token);
        $("#chatbot_talkId").val(talkId);
        
        
        var targetTalkUrl = ""  
        if(location.href.indexOf("www.thehandsome.com") > -1){ //운영
            //운영 챗봇 url
            targetTalkUrl = "https://talk.thehandsome.com/front/v1/jsp/view/chat.jsp";
        }else { //그외
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
 function GA_Common(action,e){
		var eventCategory;
		var eventAction;
		var label;
		
		
		if (action == "topNav"){
			eventCategory = "공통";
			eventAction = "탑_네비게이션";
			label = escape(e.text());
		} else if (action == "news"){
			eventCategory = "공통";
			eventAction = "뉴스";
			label = escape(e.text());
		} else if (action.indexOf("commonBrand") > -1){
			eventCategory = "공통_브랜드";
			eventAction = gaBrandType(action.split('_')[0]);
			label = e.text();
		} else if (action.indexOf("brandLike") > -1){
			eventCategory = "공통_브랜드";
			eventAction = gaBrandType(action.split('_')[0]) + "_좋아요";
			label = e.parent().find("a").text();
		}
		
		GA_Event(eventCategory, eventAction,label);
	}
	
function gaBrandType(brandCode){
    var brandTypeNm = "";
    if(brandCode == "WE"){
        brandTypeNm = "여성_브랜드";
    }else if(brandCode == "ME"){
        brandTypeNm = "남성_브랜드";
    }else if(brandCode == "ED"){
        brandTypeNm = "편집_브랜드";
    }else if(brandCode == "OS"){
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
				src="/resources/wisenut/ark/js/beta.fix.js"></script>
			<script type="text/javascript"
				src="/resources/wisenut/ark/js/ark.js"></script>
			<script type="text/javascript"
				src="/resources/wisenut/js/search.js"></script>
			<script type="text/javascript">
//<![CDATA[
    // #1067 - 201803 메인 개편
    function applyCategory(){
        
        layerAlert('로그인 후 당신만의 브랜드 즐겨찾기를 <br /> 완성하세요.');
        return;
        

        var brandNameArray = new Array();
        var brandCodeArray = new Array();
        var parentBrandCodeArray = new Array();
        var sortIndexArray = new Array();
        var valueSplitArray = new Array();
        var dataValue = "";

        $("input:checkbox[class=\"checkboxEvent\"]").each(function(){
            if(this.checked){
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
            type:"GET",
            url:"/intro/setCategoryList",
            data:{"brandName":brandName,"brandCode":brandCode,"parentBrandCode":parentBrandCode,"sortIndex":sortIndex},
            success:function(data){
                window.location.reload();
            },
            error:function(e){
                console.log("error", e);
            }
        });
        
    }
    
    function resetCategory(){
        
        $("input:checkbox[class=\"checkboxEvent\"]").each(function(){
            if(this.checked){
               this.checked = false;
            }
        });
        applyCategory();
    }
        
    
function searchOn(){
	searchInit();
	$('div.gnb_sh_wrap').css("display", "block");
	$('div.util_menu').css("display", "none");
	$('div.gnb_sh_result').css("display", "block");
	
}

function searchOff(){
	
	$('div.util_menu').css("display", "block");
	$('div.gnb_sh_wrap').css("display", "none");
				
}

function showTab(){
	
	$('div.gnb_sh_result').css("display", "block");
				
}

// 쿠키 생성
function setCookie(cName, cValue, cDay){
     var expire = new Date();
     expire.setDate(expire.getDate() + cDay);
     cookies = cName + '=' + escape(cValue) + '; path=/ '; 
     if(typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
     document.cookie = cookies;
}
//쿠키 생성 (00시 제거)
function setOneDayCookie(cName, cValue, cDay){
    var currentDate = new Date();
    var expire = new Date(currentDate.getFullYear(), currentDate.getMonth(), currentDate.getDate() + cDay, 0, 0, 0);
    cookies = cName + '=' + escape(cValue) + '; path=/ ';
    if(typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
    document.cookie = cookies;
}

// 쿠키 가져오기
function getCookie(cName) {
     cName = cName + '=';
     var cookieData = document.cookie;
     var start = cookieData.indexOf(cName);
     var cValue = '';
     if(start != -1){
          start += cName.length;
          var end = cookieData.indexOf(';', start);
          if(end == -1)end = cookieData.length;
          cValue = cookieData.substring(start, end);
     }
     return unescape(cValue);
}

//쿠키 삭제
function deletecookie(name) {
    var today   = new Date();
    var path = "/ko/";
    var lastIndex = path.lastIndexOf('/');
    path = path.substring(0 , lastIndex);
    today.setDate(today.getDate() + -1);
    document.cookie = name + "=; path="+path+"; expires=" + today.toGMTString() + ";";
}

function deletecookiePath(name, path) {
    var today   = new Date();
    
    if(path == "") {
    	path = "/";
    }
    
    today.setDate(today.getDate() + -1);
    document.cookie = name + "=; path="+path+"; expires=" + today.toGMTString() + ";";
}

function searchInit(){
	var settingCookie = getCookie("searchSaveYN");
	if(settingCookie == "on"){
		
		$('#searchSaveYN').text("끄기");	
		$('#searchSaveYNfame').text("끄기");
		
	}else{
		$('#searchSaveYN').text("저장");
		$('#searchSaveYNfame').text("저장");
		
	}
}

function ie8AlertHide() {
	setCookie("ie8AlertHideYN", "on", 365);
	$("#alertIE8").hide();
}

$(document).ready(function() {
    
    $('.gnb_nav.hscene1906 .cate_m .hscene').mouseover(function(){ // 툴팁
        $('.gnb_nav.hscene1906 .cate_m li .delch_box').addClass('on');
    });
    $('.gnb_nav.hscene1906 .cate_m .hscene').mouseout(function(){
        $('.gnb_nav.hscene1906 .cate_m li .delch_box').removeClass('on');
    });
	
    var todayDate = new Date();
    var startDate = new Date('2018/05/29 00:00:01'), endDate = new Date('2018/06/17 23:59:59');
    if (todayDate.getTime() >= startDate.getTime() && todayDate.getTime() <= endDate.getTime()) {
        $("#athome_header_event").show();
    }else{
        $("#athome_header_org").show();
    }
    
	//IE8버젼 체크
	if(getCookie("ie8AlertHideYN") != "on") {
		if(navigator.appVersion.indexOf('MSIE 8.0') >= 0 || navigator.appVersion.indexOf('Trident/4.0') >= 0){
			var html = "<div style='position:relative; width: 100%; height: 30px;'><div style='position:fixed;width:100%;background:#ffffbc none repeat scroll 0% 0%; text-align: center; z-index: 999; line-height: 30px;'>";
			html += "Thehandsome.com은 인터넷 익스플로러 10 이상에 최적화되어 있습니다.";
			html += " <a href='http://windows.microsoft.com/ko-kr/windows/downloads'><strong>[브라우저 업데이트 바로가기]</strong></a>";
			html += "<a href='#' onclick='ie8AlertHide();' style='display:block;float:right;padding-right:10px'>X</a></div></div>";
			$(".loading_bar").before("<div align='center' id='alertIE8'>"+html+"</div>");
		}
	}
	
	settingCookie = getCookie("searchSaveYN");

	if(settingCookie == ""){
		setCookie("searchSaveYN", "on", 365);
	}
	
	$('#gnbsearch').click(function () {
		var searchwords = $('#gnbsearchwords').val();
		searchwords = searchwords.replace(/(^\s*)|(\s*$)/g,"");
		
		if(searchwords!=""){
			location.href="/ko/hssearch?searchwords="+searchwords;
		}else{
			$('#gnbsearchwords').val("");
			alert("검색어를 입력해주세요.");
		}
	});
	
	$('.btn_svclose').click(function () {
		settingCookie	= getCookie("searchSaveYN");
		if($(this).children('span').text() == "끄기"){
			$(this).children('span').text("저장");
		} else {
			$(this).children('span').text("끄기");
		}
		if(settingCookie == "off"){
			$(this).children('span').attr("save","on");
			setCookie("searchSaveYN", "on", 365);
		} else {
			$(this).children('span').attr("save","off");
			setCookie("searchSaveYN", "off", 365);
		}

	});
	$('.favBtn').click(function(){

		words = $(this).text();
		location.href="/ko/hssearch?searchwords="+words;

	});
	$('.newlyBtn').click(function(){

		words = $(this).text();
		location.href="/ko/hssearch?searchwords="+words;

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
	
	var arr = [sw1,sw2,sw3,sw4,sw5];
	var arr_date = [sw1_date,sw2_date,sw3_date,sw4_date,sw5_date];
	
	arr_date.sort(compStringReverse);
	
	for(var i=0; i<arr_date.length;i++){
		for(var j=0; j<arr.length;j++){
			if(arr_date[i] != ""){
				if(arr[j].indexOf(arr_date[i]) > 0){
					$("#searchWord"+(i+1)).text(arr[j].split("_")[0]);
					$('.searchWord'+(i+1)).css("display", "block");
					
					$("#searchWord"+(i+1)).next().attr("onclick","deletecookie('HS_Seachwords"+(j+1)+"')");
				}
			}
		}
		
		if(arr_date[i] == ""){
			$("#searchWord"+(i+1)).text("");
		}
	}
	
	
	
    //자동로그인
    
	        var ssoUrl = "https://sso.h-point.co.kr:29865" + "/co/setSsoReqJSONP.hd";
            gfnSsoReqAjax(ssoUrl, hpAutoLogin);
        
    
    //vip 채팅 서비스
    if("" != ""){
	    var pag = "main201903Page";

	    var chkPag = ["svCenterMainPage", "noticePage", "manToManInquiryPage", "faqPage",
	                  "mendingPage", "vocProvisionPage", "vocInfoFormPage", "memberJoinGuidePage", "theClubInfoPage",
	                  "memberBenefitGuidePage", "pointGuidePage", "couponGuidePage", "paymentGuidePage", "asGuidePage"];
	    
    	var vipPassCheck = "N"; // VVIP/THESTAR/STAR 등급 체크
    	var timePassCheck = "N"; // 평일 0900~1800 체크
    	
	    if("" == "VVIP" || ("" == "THESTAR" || "" == "STAR" )){
	    	vipPassCheck = "Y";
	    }
	    
	    if(vipPassCheck == "N" && "" == "PASS"){ // MANIA 이하 등급, 평일 체크 
	    	// chatbotInfo "PASS" : 등급이 VVIP/THESTAR/STAR/MANIA 이거나 평일 0900~1800
			var hour = new Date().format("HHmm");
			var weekName = new Date().format("E");
	        if(weekName != "일요일" && weekName != "토요일" && hour >= "0900" && hour <= "1800"){
	            $.ajax({
	                type:"POST",
	                url:"/ko/chatbot/chkholiday",
	                data: {"CSRFToken":"3de4f578-9983-4f70-8b91-fb368a78b6aa"},
	                async : false,
	                success:function(result){
	                    if(result == true) {
	                    	timePassCheck = "Y";
	                    }
	                },
	                error:function(request,statuss,error){
	                    ;
	                }
	              });
	        }
	    }
    
	    if ((vipPassCheck == "Y" || timePassCheck == "Y") && "main201903Page" == "main201903Page") {
	        $('#chatbotMain').show(); 
	    }else{
	        $('#chatbotMain').hide(); 
	    }
	    
	    if (chkPag.indexOf(pag) > -1) {
	    	if(vipPassCheck == "Y" || timePassCheck == "Y"){
		        $('#chatbot').show();
	    	}else{
		        $('#chatbot').hide();
	    	}
	    }else{
	        $('#chatbot').hide();
	    }
    }
    
    //athome
    if("" != ""){
        // #1067 - 메인 개편
	    
		$('.ico.athome').mouseenter(function(){
			$('.athome_info').show();
		});
		$('.athome_header').mouseleave(function(){
			$('.athome_info').hide();
		});
    }
    
    // ##1141 - 카테고리 개편
    outletGnbNav();//아울렛 gnb
    
    // 20201214 braze 선호브랜드 추가/삭제 일괄 처리로 인한 진입시 선호브랜드 보관
    chkFavoriteBrand();
});

function athomeBlink(){
	$('.ico.athome').css('opacity','0');
	setTimeout(function(){
		$('.ico.athome').css('opacity','1');
	},500);
}
function athomeEventBlink(){
    $('.athome_event').css('opacity','0');
    setTimeout(function(){
        $('.athome_event').css('opacity','1');
    },500);
}
	
function hpAutoLogin(data){
    //console.log("data.succYn:"+data.succYn);
    if (data.succYn == "Y") {
        $.ajax({
            type:"GET",
            url:"/ko/hpoint/simpleJoinMember",
            data: {"mcustNo":data.mcustNo},
            success:function(data){
                if(data.resultCode == "L"){
                    $("#hcid").val(data.uid);
                    $("#autologinForm").submit();
                }
            },
            error:function(e){
            }
        });
    }
}

function compStringReverse(a, b) {
	if (a > b) return -1;
	if (b > a) return 1;
	return 0;
}

function EnterSearchHeader(){
	
	var searchwords = $('#gnbsearchwords').val();
	searchwords = searchwords.replace(/(^\s*)|(\s*$)/g,"");
	
	if(searchwords!=""){
		location.href="/ko/hssearch?searchwords="+searchwords;
	}else{
		$('#gnbsearchwords').val("");
		alert("검색어를 입력해주세요.");
	}
	
	
}

function language(isoCode) {
	if(location.href.indexOf("/handsome/") > -1){
		
			$.ajax({ 
				type : "post", 
				url : "/ko/_s/language" + "?" + "code="+isoCode,
				dataType : "json",
				error : function( request, status, error ){				
					console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
				}, 
				success : function( result ){
					location.href = "/ko/";
				}
			});
		
	}else{
		location.href = "/"+isoCode;
	}
}
	
function getCSRFToken(){
	return "CSRFToken="+$("#CSRFForm [name='CSRFToken']").first().val();	
}


function setLogout(){
    deletecookie("UID");   
    deletecookie("criteoEmail"); 
    deletecookie("memberGb");
    location.href = "/ko/logout";
}


function chkFavoriteBrand(){
    
}

function brazeCustomAttribut(target){
    if(favoriteBrands.length > 0){
        // REMOVE 체크
        for(var i = 0; i < favoriteBrands.length; i++){
            if(target.indexOf(favoriteBrands[i]) > -1){
                //skip
            }else{
                appboy.getUser().removeFromCustomAttributeArray(
                    "likeBrand",
                    favoriteBrands[i]
                );
            }
        }
        
        // ADD 체크
        for(var j = 0; j < target.length; j++){
            if(favoriteBrands.indexOf(target[j]) > -1){
                //skip
            }else{
                appboy.getUser().addToCustomAttributeArray(
                    "likeBrand",
                    target[j]
                );
            }
        }
    }else{
        if(target.length > 0){
            for(var x = 0; x < target.length; x++){
                appboy.getUser().addToCustomAttributeArray(
                    "likeBrand",
                    target[x]
                );
            }
        }
    }
}

//START OF 메인 검색창////////////////////////
// #1067 - 201803 메인 개편
$(function(){
    

    getNotLoginMyKeyWord($("#query").val(), 10);
    
    /* 
        // 내가 찾은 검색어(비로그인 상태) set, get in DB
        getNotLoginMyKeyWord($("#query").val(), 10);           
     */
        
    if(navigator.userAgent.toLowerCase().indexOf("firefox") > -1) {
        $("#searchBox").on("keypress", function (event) {
            var keyCode = event.which || event.keyCode;
        });
    }
    
    $('#query').click(function(){
        // 스타일 서치 아이템   
        doStyleItem();
        $('.search_box_wrap').click(function(){
            if(!$('.search_box_wrap').hasClass('on')){
                var dataHeight = $('.data_react').height();
                $("#transparent_mask").show();
                
                GA_Event('공통','유틸_메뉴','검색');
                $('.search_box_wrap').stop().animate({width:'406px',height:'+= dataHeight +"px"',"max-height":"430px","opacity":1},'fast');
                
                $('.search_box_wrap').addClass('on');
                $('.btn_search_tab').stop().show();
                
                $('.data_react').stop().show();
                             
                $('#styleSearchSlider').hide();
                $('.search_box .search').stop().fadeIn('fast');
    
                
                //검색창 텝 >> style search slider
                $(document).find('#styleSearchSlider').flexslider({
                    animation:"slide",
                    slideshow:false,
                    directionNav:true,
                    after: function(slider){
                        $("#styleSearchSlider .slides li").not(".clone").each(function(idx){
                            if($(this).hasClass("flex-active-slide")){
                                $(".ss_txt_list li a").removeClass("on");
                                $(".ss_txt_list li:eq("+idx+") a").addClass('on');
                            }
                        });
                    }
                });
                var styleTotal = $("#styleSearchSlider .slides li").size();
                if(styleTotal <= 1) {
                    $("#styleSearchSlider .flex-direction-nav").hide();
                }
                
                //keyup 자동완성 리스트
                
                //keyup 자동완성 리스트
            $('#query').keyup(function(e){
                if(!$('#query').val() == ""){
                        $('.search_tab').hide();
                        
                        $('.search_box_wrap').stop().animate({width:'477px'},'fast',function(){
                            $('.search_autocomplete').show();
                        });
                        $('.search_box_wrap.on .search_box input[type="search"]').stop().animate({width:'461px'},'fast');
                        /*  var atcRightHeight = $(".autocomplete_right").height();//자동완성리스트 높이 조절
                    var atctxtHeight = $(".autocomplete_txt").height();
                    if(atcRightHeight < atctxtHeight){
                        $(".autocomplete_right").height(atctxtHeight);
                    } */
                    
                    }else{
                        $('.search_autocomplete').hide();
                        $('.search_tab').show();
                        
                        $('.search_box_wrap').stop().animate({width:'406px'});
                        $('.search_box_wrap.on .search_box input[type="search"]').stop().animate({width:'390px'});                    
                        
                    }
                    $('.autocomplete_txt li a').each(function(){
                        if(!$(this).hasClass('brand_main')){
                            $(this).html($(this).html().replace("<strong>",""));
                            $(this).html($(this).html().replace("</strong>",""));

                            if($(this).html().indexOf($('#searchBox').val()) > -1){
                                $(this).html($(this).html().replace($('#searchBox').val(),"<strong>"+$('#searchBox').val()+"</strong>"));
                            }
                        }
                    });
                });
                
                //검색창 click시 이미 value 값이 있을 때
                if(!$('#query').val() == ""){
                    $('.search_box_wrap').stop().animate({width:'477px','opacity':1},'fast');
                    $('.search_box_wrap.on .search_box input[type="search"]').stop().animate({width:'461px'},'fast');
                }else{
                    $('.search_box_wrap.on .search_box input[type="search"]').stop().animate({width:'390px'},'fast');
                }
                
            }
            
            $('#styleSearchSlider').fadeIn();
            
            //close button
            $('.search_box a span.btn_close').on('click',function(){
                
                $('.search_box_wrap').stop().animate({width:'30px',height:'-= dataHeight +"px"',"opacity":0});
                
                $('.data_react').stop().hide();
                $('.btn_search_tab').stop().hide();
                $('.search_box_wrap').removeClass('on');
                $("#transparent_mask").hide();
                $('.search_box .search').stop().fadeOut('fast');
                if(!$('#query').val() == ""){
                    $('#query').val("");
                    $('.search_autocomplete').hide();
                    $('.search_tab').show();
                }
                return false;
            });
        });
        $("#transparent_mask").click(function(){
            if($('.search_box_wrap').hasClass('on')){
                
                $('.search_box_wrap').stop().animate({width:'30px',height:'-= dataHeight +"px"',"opacity":0});
                
                $('.data_react').stop().hide();
                $('.btn_search_tab').stop().hide();
                $('.search_box_wrap').removeClass('on');
                $("#transparent_mask").hide();
                $('.search_box .search').stop().fadeOut('fast');
            }
        });
        //검색창 텝
        $(document).on('click','.btn_search_tab a',function(){
            $(this).addClass('on');
            $(this).siblings().removeClass('on');
            $('.data_react .s_tab').stop().hide();
            var activeTab = $(this).attr('rel');
            $('.' + activeTab).stop().show();
        });
    });
});

//##1141 - 카테고리 개편
function outletGnbNav(){//아울렛 gnb
  $('.outlet_brand1803 .sub_menu > ul > li > ul > li > a').on('mouseenter focus',function(){
    $('.outlet_brand1803 .sub_menu > ul > li > ul > li > a').removeClass('on');
    $('.outlet_brand1803 .sub_menu > ul > li > ul > li > div').stop().hide();
    $(this).addClass('on');
    $(this).parent('li').children('div').stop().css('display','inline-block');
    var liWidthSumDep3 = 0;
    $(this).next('div').children('ul').children('li').each(function(idx3){
      var liWidth = $(this).width();
      var liLength = $(this).length;
      if(idx3 > 0){
        liWidthSumDep3 = liWidthSumDep3 + (liWidth + 25);
      }
      $(this).width(liWidth);
    });
    $(this).next('div').children('ul').width(liWidthSumDep3 -10);
  });
  $('.outlet_brand1803 .sub_menu > ul > li > ul > li').on('mouseleave blur',function(){
    $('.outlet_brand1803 .sub_menu > ul > li > ul > li > a').removeClass('on');
    $('.outlet_brand1803 .sub_menu > ul > li > ul > li > div').stop().hide();
  });
}

function GA_search(){
	
	var searchForm = document.search; 
    var searchwords = escape(searchForm.query.value);
    
	GA_Event('검색','직접입력',searchwords);
}

//]]>
</script>
			<form id="autologinForm" name="autologinForm"
				action="/ko/hp/autologin" method="get">
				<input type="hidden" name="hcid" id="hcid" value="e2gaf@naver.com" />
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
							<input type="text" class="input" id="gnbsearchwords"
								title="검색어 입력" value=""
								onkeypress="if(event.keyCode==13) {EnterSearchHeader(); return false;}" />
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
								value="3de4f578-9983-4f70-8b91-fb368a78b6aa" /> <input
								type="hidden" name="searchwords" value="" /> <input
								type="hidden" name="startCount" value=""> <input
								type="hidden" name="mode" value=""> <input type="hidden"
								name="sort" value=""> <input type="hidden"
								name="collection" value=""> <input type="hidden"
								name="range" value=""> <input type="hidden"
								name="startDate" value=""> <input type="hidden"
								name="endDate" value=""> <input type="hidden"
								name="searchField" value=""> <input type="hidden"
								name="reQuery" /> <input type="hidden" id="prefixQuery"
								value="" /> <input type="hidden" id="identity" name="identity"
								value=""> <input type="hidden" id="realQuery"
								name="realQuery" value="" /> <input type="hidden"
								id="loginState" value="loginOff" /> <input type="hidden"
								id="athomeInfo" value="" /> <input type="hidden"
								id="selectedLang" name="selectedLang" value="product_ko" /> <input
								type="hidden" id="lang" name="lang" value="ko" /> <input
								type="hidden" id="brandPageGubun" name="brandPageGubun"
								value="off">
							<!-- 브랜드 페이지 여부 -->
							<input type="hidden" id="brand_img" name="brand_img" value="">
							<input type="hidden" id="brand_url" name="brand_url" value="">
							<div class="search_box">
								<label for="query" class="hidden">search</label> <input
									type="search" id="query" name="query" value=""
									onKeypress="javascript:pressCheck((event),this);"
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
										class="btn_style_search" id="btn_style_search">Style
										Search</a> <a href="javascript:void(0);" rel="popular_search"
										class="btn_style_search" id="btn_top_search"
										style="display: none;" onclick="GA_Event('검색','인기검색어','클릭')">인기검색어</a>
								</div>
								<!-- 최근 검색어 -->
								<div class="recent_search s_tab">
									<ul id="mykeyword">
									</ul>
								</div>
								<!-- style search -->
								<form id="searchStyle" name="searchStyle"
									action="/ko/hssearch/searchCount" method="post"
									onsubmit="return false;">
									<input type="hidden" name="query" value="" /> <input
										type="hidden" name="collection" value="" /> <input
										type="hidden" id="CSRFToken" name="CSRFToken"
										value="3de4f578-9983-4f70-8b91-fb368a78b6aa" /> <input
										type="hidden" id="searchStyleYn" name="searchStyleYn"
										value="searchStyle" />
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
									<div id="ark" style="height: 170px;"></div>
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
			<input type="hidden" id="validationCheckPwd"
				value="비밀번호를 재입력 하셔야 합니다." /> <input type="hidden"
				id="validationCheck" value="필수데이터가 입력되지 않았습니다." /> <input
				type="hidden" id="validationCheckMsg" value="다음 사항을 확인해 주세요." /> <input
				type="hidden" id="validationCheckMsg1" value="필수데이터가 입력되지 않았습니다." />
			<input type="hidden" id="validationCheckMsg2"
				value="동일문자를 3번 이상 사용할 수 없습니다." /> <input type="hidden"
				id="validationCheckMsg3"
				value="연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다." /> <input
				type="hidden" id="validationCheckMsg4" value="Caps Lock 이 켜져 있습니다." />
			<input type="hidden" id="validationCheckMsg5"
				value="이메일 아이디의 중복 확인이 필요합니다." /> <input type="hidden"
				id="validationCheckMsg6" value="이메일의 중복확인이 필요합니다." /> <input
				type="hidden" id="deliveryOkMsg" value="확인" /> <input type="hidden"
				id="deliveryCancelMsg" value="취소" />

			<form id="chatbotForm"
				action="https://talk.thehandsome.com/front/v1/jsp/view/chat.jsp"
				method="post" target="chatwindow">
				<input type="hidden" name="token" id="chatbot_token"> <input
					type="hidden" name="talkId" id="chatbot_talkId">
				<div>
					<input type="hidden" name="CSRFToken"
						value="3de4f578-9983-4f70-8b91-fb368a78b6aa" />
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
								<div class="sub_menu clearfix">
									<p class="gnbbr_txt">브랜드 명을 클릭하시면 해당 브랜드로 이동합니다.</p>
									<ul class="al_frt1">
										<!-- #1141 - 카테고리 개편 - 메인 즐겨찾기 브랜드 레이어 -->
										<li><strong>여성 브랜드</strong>
											<ul class="clearfix">
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
											<ul class="clearfix">
												<li><input id="gnb_br_NEW_NORMAL_BRANDS_ME_BR06"
													name="gnb_br_ch" type="checkbox" class="checkboxEvent"
													title="TIME HOMME"
													onclick="GA_Common('ME_brandLike',$(this));"
													value="NEW_NORMAL_BRANDS_ME#BR06#1"> <label
													for="gnb_br_NEW_NORMAL_BRANDS_ME_BR06"></label><a
													href="/ko/b/br06"
													onclick="GA_Common('ME_commonBrand',$(this));">TIME
														HOMME</a></li>
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
											<ul class="clearfix">
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
													onclick="GA_Common('ED_commonBrand',$(this));">FOURM
														THE STORE</a></li>
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
													onclick="GA_Common('ED_commonBrand',$(this));">H :
														SCENE</a></li>
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
											<ul class="clearfix">
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
									<br />
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
								<div class="sub_menu clearfix">
									<ul class="al_frt1">
										<li><a href="/ko/c/we"
											onclick="GA_Event('공통_카테고리','2DEPTH','여성_전체보기');">전체보기<!-- 전체보기 --></a>
										</li>
										<li><a href="/ko/c/we09/"
											onclick="GA_Event('공통_카테고리','2DEPTH','여성_SPECIAL SHOP*');">SPECIAL
												SHOP*</a>
											<ul class="clearfix">
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
											<ul class="clearfix">
												<li><a href="/ko/c/we051/"
													onclick="GA_Event('공통_카테고리','3DEPTH','여성_아우터_재킷');">재킷</a>
												</li>
												<li><a href="/ko/c/we052/"
													onclick="GA_Event('공통_카테고리','3DEPTH','여성_아우터_점퍼');">점퍼</a>
												</li>
												<li><a href="/ko/c/we015/"
													onclick="GA_Event('공통_카테고리','3DEPTH','여성_아우터_가디건/베스트');">가디건/베스트</a>
												</li>
												<li><a href="/ko/c/we053/"
													onclick="GA_Event('공통_카테고리','3DEPTH','여성_아우터_트렌치 코트');">트렌치
														코트</a></li>
												<li><a href="/ko/c/we054/"
													onclick="GA_Event('공통_카테고리','3DEPTH','여성_아우터_코트');">코트</a>
												</li>
												<li><a href="/ko/c/we055/"
													onclick="GA_Event('공통_카테고리','3DEPTH','여성_아우터_다운/패딩');">다운/패딩</a>
												</li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href="/ko/c/we01/"
											onclick="GA_Event('공통_카테고리','2DEPTH','여성_탑');">탑</a>
											<ul class="clearfix">
												<li><a href="/ko/c/we011/"
													onclick="GA_Event('공통_카테고리','3DEPTH','여성_탑_티셔츠');">티셔츠</a>
												</li>
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
											<ul class="clearfix">
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
											<ul class="clearfix">
												<li><a href="/ko/c/we021/"
													onclick="GA_Event('공통_카테고리','3DEPTH','여성_팬츠_캐주얼');">캐주얼</a>
												</li>
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
											<ul class="clearfix">
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
								<div class="sub_menu clearfix">
									<ul class="al_frt1">
										<li><a href="/ko/c/me"
											onclick="GA_Event('공통_카테고리','2DEPTH','남성_전체보기');">전체보기<!-- 전체보기 --></a>
										</li>
										<li><a href="/ko/c/me09/"
											onclick="GA_Event('공통_카테고리','2DEPTH','남성_SPECIAL SHOP*');">SPECIAL
												SHOP*</a>
											<ul class="clearfix">
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
											<ul class="clearfix">
												<li><a href="/ko/c/me031/"
													onclick="GA_Event('공통_카테고리','3DEPTH','남성_아우터_재킷');">재킷</a>
												</li>
												<li><a href="/ko/c/me032/"
													onclick="GA_Event('공통_카테고리','3DEPTH','남성_아우터_점퍼');">점퍼</a>
												</li>
												<li><a href="/ko/c/me015/"
													onclick="GA_Event('공통_카테고리','3DEPTH','남성_아우터_가디건/베스트');">가디건/베스트</a>
												</li>
												<li><a href="/ko/c/me033/"
													onclick="GA_Event('공통_카테고리','3DEPTH','남성_아우터_트렌치코트');">트렌치코트</a>
												</li>
												<li><a href="/ko/c/me034/"
													onclick="GA_Event('공통_카테고리','3DEPTH','남성_아우터_코트');">코트</a>
												</li>
												<li><a href="/ko/c/me035/"
													onclick="GA_Event('공통_카테고리','3DEPTH','남성_아우터_다운/패딩');">다운/패딩</a>
												</li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href="/ko/c/me01/"
											onclick="GA_Event('공통_카테고리','2DEPTH','남성_탑');">탑</a>
											<ul class="clearfix">
												<li><a href="/ko/c/me011/"
													onclick="GA_Event('공통_카테고리','3DEPTH','남성_탑_티셔츠');">티셔츠</a>
												</li>
												<li><a href="/ko/c/me012/"
													onclick="GA_Event('공통_카테고리','3DEPTH','남성_탑_셔츠');">셔츠</a></li>
												<li><a href="/ko/c/me013/"
													onclick="GA_Event('공통_카테고리','3DEPTH','남성_탑_니트');">니트</a></li>
												<li><a href="/ko/c/me014/"
													onclick="GA_Event('공통_카테고리','3DEPTH','남성_탑_스웨터');">스웨터</a>
												</li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href="/ko/c/me02/"
											onclick="GA_Event('공통_카테고리','2DEPTH','남성_팬츠');">팬츠</a>
											<ul class="clearfix">
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
											<ul class="clearfix">
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
								<div class="sub_menu clearfix">
									<ul class="al_frt1">
										<li><a href="/ko/c/as"
											onclick="GA_Event('공통_카테고리','2DEPTH','잡화_전체보기');">전체보기<!-- 전체보기 --></a>
										</li>
										<li><a href="/ko/c/as01/"
											onclick="GA_Event('공통_카테고리','2DEPTH','잡화_여성슈즈');">여성슈즈</a>
											<ul class="clearfix">
												<li><a href="/ko/c/as011/"
													onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성슈즈_부츠');">부츠</a>
												</li>
												<li><a href="/ko/c/as012/"
													onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성슈즈_로퍼/블로퍼');">로퍼/블로퍼</a>
												</li>
												<li><a href="/ko/c/as013/"
													onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성슈즈_스니커즈');">스니커즈</a>
												</li>
												<li><a href="/ko/c/as014/"
													onclick="GA_Event('공통_카테고리','3DEPTH','잡화_여성슈즈_플랫');">플랫</a>
												</li>
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
											<ul class="clearfix">
												<li><a href="/ko/c/as021/"
													onclick="GA_Event('공통_카테고리','3DEPTH','잡화_남성슈즈_부츠');">부츠</a>
												</li>
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
											<ul class="clearfix">
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
											<ul class="clearfix">
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
											<ul class="clearfix">
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
											<ul class="clearfix">
												<li><a href="/ko/c/as061/"
													onclick="GA_Event('공통_카테고리','3DEPTH','잡화_주얼리_이어링/커프');">이어링/커프</a>
												</li>
												<li><a href="/ko/c/as062/"
													onclick="GA_Event('공통_카테고리','3DEPTH','잡화_주얼리_목걸이');">목걸이</a>
												</li>
												<li><a href="/ko/c/as063/"
													onclick="GA_Event('공통_카테고리','3DEPTH','잡화_주얼리_팔찌');">팔찌</a>
												</li>
												<li><a href="/ko/c/as064/"
													onclick="GA_Event('공통_카테고리','3DEPTH','잡화_주얼리_반지');">반지</a>
												</li>
												<li><a href="/ko/c/as065/"
													onclick="GA_Event('공통_카테고리','3DEPTH','잡화_주얼리_기타 주얼리');">기타
														주얼리</a></li>
											</ul></li>
										<!--  status2.last end -->
										<li style="margin-right: 0px"><a href="/ko/c/as07/"
											onclick="GA_Event('공통_카테고리','2DEPTH','잡화_기타 ACC');">기타
												ACC</a>
											<ul class="clearfix">
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
								<div class="sub_menu clearfix">
									<ul class="al_frt1">
										<li><a href="/ko/c/be"
											onclick="GA_Event('공통_카테고리','2DEPTH','뷰티_전체보기');">전체보기<!-- 전체보기 --></a>
										</li>
										<li><a href="/ko/c/be01/"
											onclick="GA_Event('공통_카테고리','2DEPTH','뷰티_스킨케어');">스킨케어</a>
											<ul class="clearfix">
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
											<ul class="clearfix">
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
											<ul class="clearfix">
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
								<div class="sub_menu clearfix">
									<ul class="al_frt1">
										<li><a href="/ko/c/ls"
											onclick="GA_Event('공통_카테고리','2DEPTH','라이프스타일_전체보기');">전체보기<!-- 전체보기 --></a>
										</li>
										<li><a href="/ko/c/ls01/"
											onclick="GA_Event('공통_카테고리','2DEPTH','라이프스타일_홈');">홈</a>
											<ul class="clearfix">
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
											<ul class="clearfix">
												<li><a href="/ko/c/ls022/"
													onclick="GA_Event('공통_카테고리','3DEPTH','라이프스타일_배스_욕실용품');">욕실용품</a>
												</li>
											</ul></li>
										<!--  status2.last end -->
										<li><a href="/ko/c/ls03/"
											onclick="GA_Event('공통_카테고리','2DEPTH','라이프스타일_키친');">키친</a>
											<ul class="clearfix">
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
											<ul class="clearfix">
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
											<ul class="clearfix">
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
											<ul class="clearfix">
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
							onclick="GA_Event('공통','GNB','THE 매거진');">THE 매거진<!-- 매거진 -->
								<span class="arr">arrow</span></a>
							<div class="sub_back">
								<div class="sub_menu clearfix newtmzbox">
									<ul class="the_maga_sublist">
										<li><a href="/ko/magazine/submain">전체보기</a>
											<ul>
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
											alt="" />
											<p>
												<strong>뉴스</strong> <span>세상 유일한 무이 스타일 '유일무이' 4화</span>
											</p>
										</a> <a href="/ko/magazine/editorials/8806021781576"> <img
											class="amc_img"
											src="http://cdn.thehandsome.com/mobile/editorial/list/banner/20220428_37731240926702146_ko.jpg"
											alt="" />
											<p>
												<strong>#SOME</strong> <span>일상을 빛내는 작가 켈리박</span>
											</p>
										</a> <a href="/ko/magazine/editorials/8805989046344"> <img
											class="amc_img"
											src="http://cdn.thehandsome.com/pc/editorial/detail/image/20220429_37795065057341863_ko.jpg"
											alt="" />
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
							onclick="GA_Event('공통','유틸_메뉴','쇼핑백');"><span
								class="ico cart">장바구니</span> <span class="count">(<span
									id="cartCount">0</span>)
							</span></a></li>
					</ul>
				</div>
			</div>
			<!-- //201803 util menu -->
		</div>
	</div>
	<!-- //headerWrap -->

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
        
        $(document).ready(function(){
            var todayDate = new Date(); 
            
            if(getCookie('newYearPopup2022') != todayDate.getDate()) {
                var startNewYear = new Date('2022/01/25 21:00:00'), endNewYear = new Date('2022/02/01 23:59:59');
                if (todayDate.getTime() >= startNewYear.getTime() && todayDate.getTime() <= endNewYear.getTime()) {
                    layerPopup9('open'); 
                }
            }
            
            if(getCookie('HSlayerPopup3') != todayDate.getDate()) { // 추석
                var startDate1 = new Date('2020/09/26 12:00:00'), endDate1 = new Date('2020/10/03 23:59:59');
                if (todayDate.getTime() >= startDate1.getTime() && todayDate.getTime() <= endDate1.getTime()) {
                    layerPopup6('open');
                }
            }
            if(getCookie('newYearPopup') != todayDate.getDate()) { //설날
                var startNewYear = new Date('2020/01/20 00:00:00'), endNewYear = new Date('2020/01/28 00:00:00');
                if (todayDate.getTime() >= startNewYear.getTime() && todayDate.getTime() < endNewYear.getTime()) {
                    layerPopup7('open'); //설날
                }
            }
            
           //설날 공지 팝업(2021)
            if(getCookie('newYearPopup2021') != todayDate.getDate()) {
                var startNewYear = new Date('2021/02/03 11:59:59'), endNewYear = new Date('2021/02/14 23:59:59');
                if (todayDate.getTime() >= startNewYear.getTime() && todayDate.getTime() <= endNewYear.getTime()) {
                	layerPopup9('open'); 
                }
            }

            //추석 공지 팝업(2021)
            if(getCookie('chuseokPopup2021') != todayDate.getDate()) {
                var startChuseok = new Date('2021/09/15 16:00:00'), endChuseok = new Date('2021/09/21 23:59:59');
                if (todayDate.getTime() >= startChuseok.getTime() && todayDate.getTime() <= endChuseok.getTime()) {
                    layerPopup11('open'); 
                }
            }
            
         	//통합 멤버십 약관 제정 안내 팝업(2021/03/01~2021/03/07)
            if(getCookie('membershipInfoMain') == "") {
                var startMemberInfoMain = new Date('2021/03/01 00:00:00'), endMemberInfoMain = new Date('2021/03/07 23:59:59');
                //유효기간 validation
                if (todayDate.getTime() >= startMemberInfoMain.getTime() && todayDate.getTime() <= endMemberInfoMain.getTime()) {
                	//팝업 호출
                	layerPopup10('open'); 
                }
            } 
            if(horiz > 0) {
                $("#mainNoticeWrap").css("top","230px");
                $(".popWrap1901").css("top", "78px");
            }
            
            mainSlider1903();
            edtSlider1903();
            videoPlay1903();
            
            $.ajax({
            	type: "get",
            	url : "/ko/intro/mainCategoryList",
                async : true,
                contentType : "application/json",
                error : function( request, status, error ){
                    console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
                }, 
                success : function( result ) {
                	if(result.length > 0) {
                		var newHtml = "";
                		var bestHtml = "";
                		var newCount = 0;
                		var bestCount = 0;
                		var isoCode = "ko";
                		var categoryName = "";
                		
                		for(var i=0; i < result.length; i++) {
                			if(isoCode == "ko") {
                				categoryName = result[i].categoryName;
                			} else if(isoCode == "en") {
                				categoryName = result[i].categoryNameEN;
                			} else if(isoCode == "zh") {
                				categoryName = result[i].categoryNameZH;
                			}
                			
               				if(result[i].displayTypeYn == true) {
	                			if(result[i].displayType == true) {
		                			if(newCount == 0) {
		                				newProductCategory = result[i].categoryCode;
		                				newHtml += '<li class="on">';
		                			} else {
		                				newHtml += '<li>';
		                			}
		                			
		                			newHtml += '	<a href="javascript:getNewProductList(\''+result[i].categoryCode+'\')" onclick="GA_Event(\'메인\', \'신상품\', \''+categoryName+'\');">'+categoryName+'</a>';
		                			newHtml += '</li>';
		                			newCount++;
	                			} else if(result[i].displayType == false) {
	                				if(bestCount == 0) {
	                					bestProductCategory = result[i].categoryCode;
	                					bestHtml += '<li class="on">';
		                			} else {
		                				bestHtml += '<li>';
		                			}
		                			
	                				bestHtml += '	<a href="javascript:getBestProductList(\''+result[i].categoryCode+'\')" onclick="GA_Event(\'메인\', \'베스트\', \''+categoryName+'\');">'+categoryName+'</a>';
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
                url : "/ko/svcenter/mainNotice",
                cache : false,
                data: {"pop1":pop1},
                async : true,
                contentType : "application/json",
                error : function( request, status, error ){     
                    console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
                }, 
                success : function( result ) {
                    var todayDate = new Date(); 
                    var switchMain = "";
                    if(result.length > 0) switchMain = result[0].readCount;
                    if("N" != switchMain){//switchMain = "N" 이면 메인팝업 기존방식(하드코딩)으로 돌리기 
                        if(result.length > 0) {
                            var documentResult="";
                            var isocode = "ko";
                            for(var i = 0 ; i < result.length ; i ++ ){
                                var showYn = "N";
                                if(getCookie(result[i].pk+isocode) != todayDate.getDate()) showYn = "Y"; // 오늘은 그만보기
                                if(pop1 != "N") showYn = "Y"; //팝업 미리보기
                                if(showYn == "Y") {
                                     if(null != result[i].bgImage && "" != result[i].bgImage.trim()) {
                                        documentResult += "<div class='popwrap_renewal1910 txtonimg add1' id='"+result[i].pk+isocode+"'>";
                                        documentResult += "<img src='"+result[i].bgImage+"' alt='' class='pop_backimg'>";
                                     } else {
                                         documentResult += "<div class='popwrap_renewal1910' id='"+result[i].pk+isocode+"'>";
                                     }
                                     documentResult += "    <div class='pop_cnt'>";
                                     if(null != result[i].noticeContentsYN && result[i].noticeContentsYN) {//단순 텍스트 출력 시 title 노출, html 포함 출력 시 title 비노출(html 코드에 title 포함)
                                         if(null != result[i].noticeTitle && "" != result[i].noticeTitle.trim()) {
                                             var noticeTitle = result[i].noticeTitle;
                                             var replacedTitle = noticeTitle.replace(/(?:\r\n|\r|\n)/g, '<br>');
                                             documentResult += '<h3 class="pop_tlt">'+replacedTitle+'</h3>';
                                         }
                                     } 
                                     if(null != result[i].noticeContents && "" != result[i].noticeContents.trim()){
                                         if(result[i].noticeContentsYN) {
                                             documentResult += "        <p class='pop_txt'>";
                                         } else {//html 코드 출력
                                             documentResult += "        <p class='pop_txt' style='min-height: 0; padding: 25px 0 0 0;'>";
                                         }
                                         var noticeContents = result[i].noticeContents;
                                         var replacedContents = noticeContents.replace(/(?:\r\n|\r|\n)/g, '<br>');
                                         documentResult +=                replacedContents;
                                         documentResult += "        </p>";
                                     }
                                     if(null != result[i].bannerLink && "" != result[i].bannerLink.trim()){
                                         documentResult += "        <div class='linkbox'>";
                                         documentResult += "            <a href='"+result[i].bannerLink+"'>";
                                        if(null != result[i].bannerLinkText && "" != result[i].bannerLinkText.trim()) documentResult += result[i].bannerLinkText;
                                         documentResult += "            </a>";
                                         documentResult += "        </div>";
                                     }
                                     documentResult += "    </div>";
                                     documentResult += "    <div class='btnwrap'>";
                                     documentResult += "        <input type='button' class='btn stoptoday closeLayerPopup' value=\"오늘은 그만보기 \">";
                                     documentResult += "        <input type='button' class='btn close closeLayerPopup' value=\"닫기\">";
                                     documentResult += "    </div>";
                                     documentResult += "    <a href='#' class='btn_close closeLayerPopup'><img src='/resources/images/popup/ico_close.png' alt=\"닫기\"></a>";
                                     documentResult += "</div>";
                                }
                            }
                            $("#mainNoticeWrap").html(documentResult);
                            
                            $(".closeLayerPopup").on("click", function(){
                                if($(this).hasClass("stoptoday")){//오늘은 그만보기
                                    var todayDate = new Date(); 
                                    var cookieId = $(this).parents(".popwrap_renewal1910").attr("id");
                                    setCookie(cookieId, todayDate.getDate(),1);
                                }
                                $(this).parents(".popwrap_renewal1910").css("display","none");
                            });
                            
                        }
                    } else {
                        // 한섬마일리지 조회/사용불가
                        if(getCookie('HSlayerPopup3') != todayDate.getDate()) {
                            var startDate1 = new Date('2018/12/28 16:00:00'), endDate1 = new Date('2019/02/31 00:00:00');
                            if (todayDate.getTime() >= startDate1.getTime() && todayDate.getTime() <= endDate1.getTime()) {
                                //layerPopup6('open');
                            }
                        }
                    }
                }
            });
                     
            $(".closeLayerPopup").on("click", function(){
                if($(this).hasClass("stoptoday")){//오늘은 그만보기
                    var todayDate = new Date(); 
                    var cookieId = $(this).parents(".popwrap_renewal1910").attr("id");
                    setCookie(cookieId, todayDate.getDate(),1);
                }
                $(this).parents(".popwrap_renewal1910").css("display","none");
            });
            
            //추천 상품 호출
            getProductInfo("RECOMMEND");
            //비로그인 상태에서 메인페이지 진입시 쿠키 삭제 
            
                deletecookiePath("UID", "/");           
                deletecookiePath("criteoEmail", "/");   
                deletecookiePath("memberGb", "/");
            
            
            var todayDate = new Date();
            
            //전환된 회원일 경우 처리
            
            
            //전환가입유도 팝업
            
           
            //자동로그인 팝업
            
                    var ssoUrl = "https://sso.h-point.co.kr:29865" + "/co/setSsoReqJSONP.hd";
                    gfnSsoReqAjax(ssoUrl, ssoTokenSuc);
                
            
            //인스타그램 생성 --START-- 중국어 인스타 그램 제외
            
            $.ajax({
    	        type: "get",
    	        url : "/ko/magazine/getAllInstargram"+"?type=search",
    	        cache : false,
    	        dataType : "json",
    	        async : true,
    	        contentType : "application/json",
    	        error : function( request, status, error ){     
    	            console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
    	        }, 
    	        success : function( result ){
    	            if(result.length > 0){
    	                //정보 보여주기
    	                var allHtml = [];
    	                var account = "", logoImg = "";
    	                var html = "";
    	                accountCount = result.length;
    	                
   	                    for(var i=0; i < result.length; i++){
   	                    	account = result[i].account;
   	                    	logoImg = result[i].accountLogoImage;
   	                    	
   	                        allHtml = JSON.parse(result[i].html).data;
   	                        allHtml.sort(function (a,b) {
                       			return a.created_time > b.created_time ? -1 : a.created_time < b.created_time ? 1 : 0;
                       		});
   	                        
   	                        $.each(allHtml, function(j, v){
                                if(j == 0){
                                    if(v.user.username != "fourm_official" && v.user.username != "youarehandsome"){
                                        html += '<li class="swiper-slide">';
                                        html += '    <a href="' + '/ko/magazine/instagram"' + ' onclick="GA_main(\'moment\',$(this))">';
   		                                html += '       <img src="' + v.images.low_resolution.url + '" class="respon_image" onerror="this.src=\'http://cdn.thehandsome.com/resources/images/instagram_video_thumb_283.jpg\'" />';
   		                                html += '		<div class="insta_account1903">';
   		                                html += '			<div class="account">';
   		                                html += '				<div class="img_wrap">';
   		                                if(account == v.user.username) {
   		                                html += '					<img src="'+logoImg+'/dims/resize/50x50" alt="brandimg">';
   		                                }
   		                                html += '				</div>';
   		                                html += '				<p>@'+v.user.username+'</p>';
   		                                html += '			</div>';
   		                                html += '		</div>';
   		                                html += '		<div class="insta_pic_info"></div>';
   		                                html += '		<div class="insta_pic_info_txt">';
   		                                if(v.caption != null){
   		                                html += '			<p class="title">' + v.caption.text.normalize('NFC') + '</p>';
   		                                }else{
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
                      "test6","test7","test8","test10", "dlwnsdnjs70@yopmail.com"];
		var todayRouletteDate = new Date();
		//evt_roulette
		if(getCookie('rouletteEventPopup') != todayRouletteDate.getDate()) {  
			var rouletteStartDate = new Date('2019/10/07 00:00:00'), rouletteEndDate = new Date('2019/11/01 00:00:00');
			//이벤트 기간
			if(todayRouletteDate.getTime() >= rouletteStartDate.getTime() && todayRouletteDate.getTime() < rouletteEndDate.getTime()){
				//통합회원 일때
				if("" == "MEMBER_UNION" || chkUid.indexOf(uid) > -1){
		 	   		$.ajax({
				   		type:"GET",
				        url:"/ko/magazine/event/checkUser",
				        data: {pk:'8799828694912'},
				        success:function(data){
				        	
				        	if(data=="SUCCESS"){
				            	var innerHtml = "";
		
		                          	innerHtml += "<div class=\"popWrap1901\" id=\"popRouletteEvt\" style=\"position:absolute;top:78px;right:10px;z-index:20;\">";
		                            innerHtml += "	<div class=\"popwrap main_banner position1\" style=\"position:relative;\">";
		                            innerHtml += "		<div class=\"pop_cnt\" style=\"position:relative;\">";
		                            innerHtml += "			<img usemap=\"#main_popup\" src=\"http://cdn.thehandsome.com/pc/event/detail/image/190923_event/evt_190917_mainpop.jpg\" alt=\"\"> ";
		                            innerHtml += "			<a href=\"javascript:goRouletteEvent();\" style=\"display:block;overflow:hidden;text-indent:-999em;position:absolute;left:50%;transform:translate3d(-50%,0,0);bottom:40px;width:212px;height:47px;\">지금응모하기</a> ";
		                            innerHtml += "		</div> ";
		                            innerHtml += "		<div class=\"chkbox_cls\" style=\"background:#363636;\"> ";
		                            innerHtml += "			<input type=\"checkbox\" id=\"cls\" onclick=\"rouletteEvtPopClose(\'day_close\')\"><label for=\"cls\">오늘 하루 보지 않기</label> ";
		                            innerHtml += "		</div> ";
		                            innerHtml += "		<a href=\"#\" class=\"btn_close\" onclick=\"rouletteEvtPopClose(\'close\')\">닫기</a> ";
		                            innerHtml += "	</div>";
		                            innerHtml += "</div> ";
		                            
		                            $("#bodyWrap").prepend(innerHtml);
				            		
				            }
				         }
				     });
		 	   }
		    	
			} 
		}
		
		var jeventStartDate = new Date('2019/11/01 00:00:00'), jeventEndDate = new Date('2019/12/31 00:00:00');
	       
        if(location.href.indexOf("www.thehandsome.com") > -1){
            jeventStartDate = new Date('2019/12/01 00:00:00')
        }
        //이벤트 기간
        if(todayDate.getTime() >= jeventStartDate.getTime() && todayDate.getTime() < jeventEndDate.getTime()){
            //통합회원 일때
            if("" == "MEMBER_UNION" || "" == "MEMBER_TRANS"  || chkUid.indexOf(uid) > -1){
                $.ajax({
                    type:"GET",
                    url:"/ko/magazine/event/checkEventPopJoinUser",
                    success:function(data){
                        if(data == "SUCCESS"){
                            
                            var innerHtml = "";
        
                                innerHtml += "<div class=\"layerArea191029\" style=\"display:block;outline:none;\" id=\"joinEventPopup\">";
                                innerHtml += "  <div class=\"layerBg\" style=\"display:block;width:100%;height:100%;position:fixed;top:0;left:0;background:rgba(0,0,0,0.5);z-index:999;\"></div>";
                                innerHtml += "      <div class=\"popwrap notipop_20191127\" style=\"display:block;\">                                                     ";
	                            innerHtml += "          <div class=\"inner_notipop_20191127\">                                                                          ";
	                            innerHtml += "              <img src=\"http://cdn.thehandsome.com/pc/event/detail/image/pc_evt_191127_pop.jpg\" alt=\"쿠폰함 바로가기\">  ";
	                            innerHtml += "              <a href=\"/ko/mypage/voucher\" class=\"go_coupon_page_191127\">쿠폰함 바로가기</a> ";
	                            innerHtml += "          </div>                                                                                                        ";
	                            innerHtml += "          <a href=\"javascript:popClose1911();\" class=\"btn_close\" >닫기</a>                                                       ";
	                            innerHtml += "      </div>                                                                                                            ";
                                innerHtml += "  </div>";
                                innerHtml += "</div> ";
                                
                                $("#bodyWrap").prepend(innerHtml);
                                
                        }
                     }
                 });
           }
        } 
	       
		
		var eventStartDate = new Date('2019/10/29 00:00:00'), eventEndDate = new Date('2019/12/01 00:00:00');
		
		if(location.href.indexOf("www.thehandsome.com") > -1){
			eventStartDate = new Date('2019/11/01 13:00:00')
		}
		//이벤트 기간
		if(todayDate.getTime() >= eventStartDate.getTime() && todayDate.getTime() < eventEndDate.getTime()){
			//통합회원 일때
			if("" == "MEMBER_UNION" || chkUid.indexOf(uid) > -1){
	 	   		$.ajax({
			   		type:"GET",
			        url:"/ko/magazine/event/checkEventPopUser",
			        data: {pk:'8799959734144'},
			        success:function(data){
			        	if(data=="SUCCESS"){
			            	var innerHtml = "";
	    
	                          	innerHtml += "<div class=\"layerArea191029\" style=\"display:block;outline:none;\" id=\"playHandsomeStyle\">";
	                            innerHtml += "	<div class=\"layerBg\" style=\"display:block;width:100%;height:100%;position:fixed;top:0;left:0;background:rgba(0,0,0,0.5);z-index:999;\"></div>";
	                            innerHtml += "		<div class=\"locky_popup_1910\" style=\"position:fixed;top:50%;left:50%;transform:translate3d(-50%, -50%, 0);z-index:1000;\">";
	                            innerHtml += "			<div class=\"pop_inner\" style=\"position:relative;\"> ";
	                            innerHtml += "			<img src=\"http://cdn.thehandsome.com/pc/event/detail/image/191028_event/guide_popup.jpg\" alt=\"guide_popup\" style=\"display:block;\">";
	                            innerHtml += "			<a href=\"javascript:goHandsomeStyleEvent();\" style=\"display:block;width:304px;height:63px;position:absolute;bottom:32px;left:50%;transform:translate3d(-50%, 0, 0);overflow:hidden;text-indent:-999em;\">지금 응모하기</a> ";
	                            innerHtml += "			<a href=\"javascript:popClose1904();\" class=\"pop_close\" style=\"display:block;width:50px;height:50px;position:absolute;top:15px;right:15px;overflow:hidden;text-indent:-9999em;\">닫기</a>";
	                            innerHtml += "			</div>";
	                            innerHtml += "		</div> ";
	                            innerHtml += "	</div>";
	                            innerHtml += "</div> ";
	                            
	                            $("#bodyWrap").prepend(innerHtml);
			            		
			            }
			         }
			     });
	 	   }
		} 
		
    	
	    	for(var i=0; i < $("#edtSlider1903_0 > ul > li .price").length ; i++) {
	    		var exPrice = $("#edtSlider1903_0 > ul > li .price").eq(i).html();
	    		$("#edtSlider1903_0 > ul > li .price").eq(i).html(getExchangePrice(exPrice));
	    	}
	    	
	    	for(var i=0; i < $("#edtSlider1903_1 > ul > li .price").length ; i++) {
	    		var exPrice = $("#edtSlider1903_1 > ul > li .price").eq(i).html();
	    		$("#edtSlider1903_1 > ul > li .price").eq(i).html(getExchangePrice(exPrice));
	    	}
	    	
            // 마케팅 수신 동의 팝업
            
            
            //8월 올빼미 이벤트 팝업
        	//올빼미 테스트
        	var strArray = location.search.split('&');
        	var testDate = "";
        	
        	/* $.each(strArray, function (index, item){
        		if(item.indexOf('testDate') != -1) {
        			var strSubArray = item.split('=');
        			testDate = strSubArray[1];
        		}
        	});
        	
        	if (testDate !== "") {
        		if(parseInt(testDate) >= 20200807200000 && parseInt(testDate) <= 20200807235959 && getCookie('nightEvtFriPopup') != todayDate.getDate()) {
        			layerPopup8('open', 'fri');
        		}
        		if(parseInt(testDate) >= 20200808200000 && parseInt(testDate) <= 20200808235959 && getCookie('nightEvtSatPopup') != todayDate.getDate()) {
        			layerPopup8('open', 'sat');
        		}
        		if(parseInt(testDate) >= 20200809200000 && parseInt(testDate) <= 20200809235959 && getCookie('nightEvtSunPopup') != todayDate.getDate()) {
        			layerPopup8('open', 'sun');
        		}
        	} else {
            	if(false && getCookie('nightEvtFriPopup') != todayDate.getDate()) {
            		layerPopup8('open', 'fri');
            	}
            	if(false && getCookie('nightEvtSatPopup') != todayDate.getDate()) {
            		layerPopup8('open', 'sat');
            	}
            	if(false && getCookie('nightEvtSunPopup') != todayDate.getDate()) {
            		layerPopup8('open', 'sun');
            	}
        	} */
        	
        	// braze 메인 진입시
        	brazeLogCustomEvent("ENTER", "");
        });
      
        
	    
        function getNewProductList(categoryCode) {
        	$.ajax({
        		type: "get",
            	url : "/ko/intro/mainNewProductList"+"?categoryCode="+categoryCode,
                dataType : "json",
                async : true,
                contentType : "application/json",
                error : function( request, status, error ){
                    console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
                }, 
                success : function( result ) {
                	var html = "";
                	if(result.length > 0) {
                	    window.sessionStorage.setItem('main_new_ecommerceDataList', JSON.stringify(result));
                		html += '<div class="nbe_cnt_inner swiper-container" id="newListSlider">';
                		html += '	<ul class="items_list swiper-wrapper">';
                		for(var i=0; i < result.length; i++) {
               			html += '		<li class="swiper-slide">';
               			html += '			<div class="item_box">';
                		html += '				<a href="/ko/p/'+result[i].productCode+'" class="item_info1" onclick="javascript:GA_main(\'newImg\',$(this));setEcommerceData('+ i +', \'NEW\', \''+categoryCode+'\');">';
               			html += '					<span class="item_img">';
               			html += '						<img src="'+result[i].T01imageUrl+'/dims/resize/234x353" alt="" name="'+result[i].productName+'" class="respon_image">';
               			html += '					</span>';
               			html += '				</a>';
               			html += '				<a href="/ko/p/'+result[i].productCode+'" class="item_info2" onclick="javascript:GA_main(\'new\',$(this));setEcommerceData('+ i +', \'NEW\', \''+categoryCode+'\');">';
               			html += '					<span class="brand">'+result[i].brandName+'</span>';
               			html += '					<span class="price">'+ getExchangePrice(result[i].price) +'</span>';
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
            	url : "/ko/intro/mainBestProductList"+"?categoryCode="+categoryCode,
                dataType : "json",
                async : true,
                contentType : "application/json",
                error : function( request, status, error ){
                    console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
                }, 
                success : function( result ) {
                	var html = "";
                	if(result.length > 0) {
                	    window.sessionStorage.setItem('main_best_ecommerceDataList', JSON.stringify(result));
                		html += '<div class="nbe_cnt_inner swiper-container" id="bestListSlider">';
                		html += '	<ul class="items_list swiper-wrapper">';
                		for(var i=0; i < result.length; i++) {
               			html += '		<li class="swiper-slide">';
               			html += '			<div class="item_box">';
               			html += '				<a href="/ko/p/'+result[i].productCode+'" class="item_info1" onclick="javascript:setEcommerceData('+ i +', \'BEST\', \''+categoryCode+'\');">';
               			html += '					<span class="item_img">';
               			html += '						<img src="'+result[i].T01imageUrl+'/dims/resize/234x353" alt="" name="'+result[i].productName+'" class="respon_image" onclick="GA_main(\'bestImg\',$(this))">';
               			html += '					</span>';
               			html += '				</a>';
               			html += '				<a href="/ko/p/'+result[i].productCode+'" class="item_info2" onclick="javascript:GA_main(\'best\',$(this));setEcommerceData('+ i +', \'BEST\', \''+categoryCode+'\');">';
               			html += '					<span class="brand">'+result[i].brandName+'</span>';
               			html += '					<span class="price">'+ getExchangePrice(result[i].price) +'</span>';
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
                	}else {
                    	$(".product_list1903 .nbe_cnt.best .nbe_cnt_inner_wrap").html(html);
                    }
                }
        	});
        }
        
        function getMagazineList() {
        	$.ajax({
        		type: "get",
            	url : "/ko/intro/mainMagazine",
                cache : false,
                dataType : "json",
                async : true,
                contentType : "application/json",
                error : function( request, status, error ){
                    console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
                }, 
                success : function( result ) {
                	var categoryText = "";
                	var url = "";
                	var html = "";
                	if(result.length > 0) {
                		for(var i=0; i < result.length; i++) {
                			if(result[i].category == "뉴스") {
                				categoryText = "뉴스";
                			} else if(result[i].category == "SPOTLIGHT_ON") {
                				categoryText = "위클리 픽";
                			} else if(result[i].category == "HANDSOME_PEOPLE") {
                				categoryText = "핸썸피플";
                			} else if(result[i].category == "TREND_TO_KNOW") {
                				categoryText = "셀렉션";
                			} else if(result[i].category == "HOW_TO_STYLE") {
                				categoryText = "커버스토리";
                			} else if(result[i].category == "EDITORS_PICK") {
                				categoryText = "스타일 가이드";
                			} else if(result[i].category == "PLAY_PLAY") {
                				categoryText = "플레이";
                			} else if(result[i].category == "SHARP_SOME") {
                                categoryText = "#SOME";
                            }
                			
                			html += '<li class="swiper-slide">';
                			if(result[i].category == "뉴스") {
                			html += '	<a href="/ko/magazine/newsDetail'+result[i].template+'?newsCode='+result[i].pk+'" class="img_wrap" onclick="GA_main(\''+i+'theMagazine\',$(this));">';
                			} else {
                			html += '	<a href="/ko/magazine/editorials/'+result[i].pk+'" class="img_wrap" onclick="GA_main(\''+i+'theMagazine\',$(this));">';
                			}
                			if(result[i].imageUrl.indexOf(".mp4") > -1){
                			    html += '          <video autoplay muted playsinline loop preload="auto" style="width:100%; max-height:352px; auto;outline:none;" poster="">';
                			    html += '          <source src="'+result[i].imageUrl+'" type="video/mp4">';
                			    html += '          </video>';
                            }else{
                                html += '       <img src="'+result[i].imageUrl+'/dims/resize/348x352" alt="매거진이미지">';
                            }
                			
                			
                			html += '	</a>';
                			html += '	<div class="txt_wrap">';
                			html += '		<p class="magazine_tit">'+categoryText+'</p>';
                			html += '		<p class="tit">'+result[i].desktopTitle+'</p>';
                			html += '		<p class="s_t">'+result[i].desktopSubTitle+'</p>';
                			if(result[i].category == "뉴스") {
                			html += '		<a href="/ko/magazine/newsDetail'+result[i].template+'?newsCode='+result[i].pk+'" class="detail" onclick="GA_main(\''+i+'theMagazine\',$(this));">자세히 보기</a>';
                			} else {
                			html += '		<a href="/ko/magazine/editorials/'+result[i].pk+'" class="detail" onclick="GA_main(\''+i+'theMagazine\',$(this));">자세히 보기</a>';
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
            if(horiz > 0) {
                $("#mainNoticeWrap").css("top","150px");
            }
        };

        // RECOMMEND 호출 ajax
        function getProductInfo(productOrderCode){
            
            var categorySize = 0;
            var categoryList = "";
            
            $.ajax({
                type: "get",
                url : "/ko/intro/newRecommend",
                cache : false,
                dataType : "json",
                contentType : "application/json",
                error : function( request, status, error ){     
                    console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
                },
                success : function( result ){
                    //추천상풍 리스트
                    
                    var html = "";
                    if(result.length > 0){
                        window.sessionStorage.setItem('main_recommend_ecommerceDataList', JSON.stringify(result));
                    }
                    for(var i = 0; i < result.length; i++) {
                        var image = result[i].imageUrl;
                        if(image.indexOf("_T01") > -1){
                            image = image.replace("_T01","_S01");
                        }
                        
                        html +="<li>";
//                         html +="    <a href=\"javascript:goDetailPagebyRecommend('" + result[i].baseProductCode + "','" + result[i].clicklogRedirectLink + "')\" onclick=\"GA_main('recommend',$(this))\"> \n";
//                         html += '	<a href="/ko/p/'+result[i].productCode+'" class="item_info1" onclick="javascript:GA_main(\'recommend\',$(this));setEcommerceData('+ i +', \'RECOMMEND\', \'\');">';
                        html += '   <a href="javascript:goDetailPagebyRecommend(\'' + result[i].baseProductCode + '\',\'' + result[i].clicklogRedirectLink + '\')" class="item_info1" onclick="javascript:GA_main(\'recommend\',$(this));setEcommerceData('+ i +', \'RECOMMEND\', \'\');">';
                        html +="        <img src=\""+ image +"/dims/resize/289x289\"/> \n";
                        html +="    </a>";
                        html +="    <span class=\"item_info2\">";
                        html += "            <span class=\"brand "+ result[i].brandCode +"\">"+ result[i].brandName +"</span> \n";
                        html += "            <span class=\"title\">"+ result[i].productName +"</span> \n";
                        if(result[i].price === 0) {
                            html += "        <span class=\"price\"></span> \n";  
                        } else {
                            html += "        <span class=\"price\">"+ getExchangePrice(result[i].price) +"</span> \n";
                        }
                        html +="    </span> \n";
                        html +="    <span class=\"flag\"></span> \n";
                        html +="</li>"; 
                    }
                    
                    if(result.length == 0){
                        $(".pickfor_wrap1903").hide();
                    }
                    $("#pickForSlider1903 ul").html(html);
	                pickForSlider1903();
                }
            });
        }
        
        //전환가입
        function hpoinJoin(){
            var url = "/ko/hpoint/transInfo";
            
            $.ajax({
                type:"GET",
                url:url,
                success:function(data){
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
                    
                    window.open(hdUrl,"transMember");
                    
                    document.getElementById("ptcoReqnMdaInf").value = "pc";
                    $("#userHiddenForm").attr("action", hdUrl);
                    $("#userHiddenForm").submit();
                    $("#hpMemberLayer").hide();
                },
                error:function(e){
                }
            });
        }
        
        function ssoTokenSuc(data){
            if (data.succYn == "Y") {
                $.ajax({
                    type:"GET",
                    url:"/ko/hpoint/simpleJoinMember",
                    data: {"mcustNo":data.mcustNo},
                    success:function(data){
                        if(data.resultCode == "C"){
                            $("#ssoMcustNo").val(data.mcustNo);
                            layerPopup4('open'); 
                        }
                    },
                    error:function(e){
                    }
                });
            }
        }
        
        //간편회원가입 전송
        function simpJoin(){
            var hdUrl = "https://www.h-point.co.kr/cu/join/simpJoinStart.nhd";
            window.open(hdUrl,"simpStart_window");
            
            document.getElementById("ptcoReqnMdaInf").value = "pc";
            $("#simpJoinForm").attr("action", hdUrl);
            $("#simpJoinForm").submit();
            $("#simpJoinLayer").hide();  
        }
        
        //전환가입 유도 팝업    
        function layerPopup3(division) {
            if(division == "open") {
                $("#hpMemberLayer").show();
            } else if(division == "close") {       
                if($('#memPop').is(":checked")) { 
                    setCookie("memberTransPopup", 'Y', 90);
                }else{ 
                    setCookie("memberTransPopup", 'N', 0);
                }
                $("#hpMemberLayer").hide();
            } else if(division == "oneweek") {       
                if($('#oweek').is(":checked")) { 
                    setCookie("memberTransPopup", 'Y', 7);
                }else{ 
                    setCookie("memberTransPopup", 'N', 0);
                }
                $("#hpMemberLayer").hide();
            }
        }
        //간편가입팝업
        function layerPopup4(division) {
            if(division == "open") {
                $("#simpJoinLayer").show();
            } else {
                $("#simpJoinLayer").hide();  
            }   
        }
        
        function layerPopup6(division) {
            var documentResult = "";
            
            if(division == "open") {
                
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
		            documentResult += '            <a href="/ko/svcenter/notice" style="display:block;overflow:hidden;text-indent:-999em;position:absolute;left:50%;transform:translate3d(-50%,0,0);bottom:5%;width:140px;height:35px;">자세히보기</a>';
		            documentResult += '        </div>                                                                                                         ';
		            documentResult += '        <div class="chkbox_cls" style="background:#363636;">                                                           ';
		            documentResult += '            <input type="checkbox" id="popPos3" name="popPos3" onclick="layerPopup6(\'close\');"> <label for="popPos3">1일 동안 열지 않음</label>            ';
		            documentResult += '        </div>                                                                                                         ';
		            documentResult += '        <a href="#" class="btn_close" onclick="layerPopup6(\'close\');"">닫기</a>                                              ';
		            documentResult += '    </div>                                                                                                             ';
		            documentResult += '</div>                                                                                                                 ';
                    
                    $("#mainPopwrap1").html(documentResult);
                
            } else if(division == "close") {
                
                if($('#popPos3').is(":checked")) {
                    var todayDate = new Date(); 
                    setCookie("HSlayerPopup3",todayDate.getDate(),1);
                }
                $("#mainPopwrap1").data('scroll',$('#mainPopwrap1').scrollTop());
                $("#mainPopwrap1").hide();
            }
        }
      //설날 공지 팝업
        function layerPopup7(division) {
    	  
        	var todayDate = new Date();
        	var endBankCheck = new Date('2020/01/26 06:00:00');
            var documentResult = "";
            if(division == "open") {
                
	                documentResult += '<div class="popWrap1901" style="position:fixed;top:78px;right:10px;z-index:20;"><!--수정 200117--> ';
	                documentResult += '    <div class="popwrap main_banner position1" style="position:relative;">';
	                documentResult += '        <div class="pop_cnt" style="position:relative;">';
	                if(todayDate.getTime() < endBankCheck.getTime()){
	                	documentResult += '            <img src="http://cdn.thehandsome.com/pc/notice/pc_main_popup_holiday_20200122_ko.jpg" alt="2020년 명절배송안내"><!--수정 200117-->';
	                	documentResult += '            <a href="/ko/svcenter/notice" style="display:block;overflow:hidden;text-indent:-999em;position:absolute;left:107px;bottom:10px;width:142px;height:37px;">자세히보기</a><!--수정 200122-->';
	                } else {
	                	documentResult += '            <img src="http://cdn.thehandsome.com/pc/notice/pc_main_popup_holiday_200116_ko.jpg" alt="2020년 명절배송안내"><!--수정 200117-->';
	                	documentResult += '            <a href="/ko/svcenter/notice" style="display:block;overflow:hidden;text-indent:-999em;position:absolute;left:178px;transform:translate3d(-50%,0,0);bottom:29px;width:142px;height:37px;">자세히보기</a><!--수정 200117-->';
	                }
	                documentResult += '        </div>';
	                documentResult += '        <div class="chkbox_cls" style="background:#363636;">';
	                documentResult += '            <input type="checkbox" id="popPos4" name="popPos4" onclick="layerPopup7(\'close\');"><label for="popPos4">1일 동안 열지 않음</label>                      ';
	                documentResult += '        </div>';
	                documentResult += '        <a href="#" class="btn_close" onclick="layerPopup7(\'close\');">닫기</a>';
	                documentResult += '    </div>';
	                documentResult += '</div>';
                

                $("#mainPopwrap1").html(documentResult);
            } else if(division == "close") {
                
                if($('#popPos4').is(":checked")) {
                    var todayDate = new Date(); 
                    setCookie("newYearPopup",todayDate.getDate(),1);
                }
                $("#mainPopwrap1").data('scroll',$('#mainPopwrap1').scrollTop());
                $("#mainPopwrap1").hide();
            }
        }
      
      	//올빼미 8월 이벤트 팝업
        function layerPopup8(division, week) {
        	
        	if(division === "open") {
        		var documentResult = "";

        		if(week === "fri" || week === "sat" || week === "sun") {
        			documentResult += '<div class="layerArea" id="nightEvtPop">';
                    documentResult += '    <div class="layerBg" style="display:block;"></div>';
                    documentResult += '        <div class="popwrap notipop_20190813 images-event-popup" style="display:block;">';
                    documentResult += '            <div class="in-box">';
                    documentResult += '                <div class="in-ab">';
        			if(week === "fri") {
        				documentResult += '        <div class="event-img-zone">';
                        documentResult += '            <img src="http://cdn.thehandsome.com/mobile/event/detail/image/handsome_202008/happy_4hour_mob_popup_img_01.jpg" style="width:100%;" alt="">';
                        documentResult += '        </div>';
                        documentResult += '        <div class="grayCloseCheckBox190821 black">';
                        documentResult += '            <input type="checkbox" id="eventpop_check_fri" onclick="layerPopup8(\'close\', \'fri\');"><label for="eventpop_check">오늘 그만 보기</label>';
                        documentResult += '        </div>';
            		}
            		if(week === "sat") {
            			documentResult += '        <div class="event-img-zone">';
                        documentResult += '            <img src="http://cdn.thehandsome.com/mobile/event/detail/image/handsome_202008/happy_4hour_mob_popup_img_02.jpg" style="width:100%;" alt="">';
                        documentResult += '        </div>';
                        documentResult += '        <div class="grayCloseCheckBox190821 black">';
                        documentResult += '            <input type="checkbox" id="eventpop_check_sat" onclick="layerPopup8(\'close\', \'sat\');"><label for="eventpop_check">오늘 그만 보기</label>';
                        documentResult += '        </div>';
            		}
            		if(week === "sun") {
            			documentResult += '        <div class="event-img-zone">';
                        documentResult += '            <img src="http://cdn.thehandsome.com/mobile/event/detail/image/handsome_202008/happy_4hour_mob_popup_img_03.jpg" style="width:100%;" alt="">';
                        documentResult += '        </div>';
                        documentResult += '        <div class="grayCloseCheckBox190821 black">';
                        documentResult += '            <input type="checkbox" id="eventpop_check_sun" onclick="layerPopup8(\'close\', \'sun\');"><label for="eventpop_check">오늘 그만 보기</label>';
                        documentResult += '        </div>';
            		}
            		documentResult += '                <a href="javascript:void(0);" class="btn_close" onclick="nightEvtPopLayerClose();"><img src="/resources/images/popup/ico_close.png"></a>';
            		documentResult += '            </div>';
            		documentResult += '        </div>';
            		documentResult += '    </div>';
                    documentResult += '</div>';
        		}
                
                $("#nightEventPopup").html(documentResult);
                
        	} else if(division === "close") {
        		
        		if(week === "fri" && $("#eventpop_check_fri").is(":checked")) {
        			var todayDate = new Date(); 
                    setCookie("nightEvtFriPopup",todayDate.getDate(),1);
        		}
        		
        		if(week === "sat" && $("#eventpop_check_sat").is(":checked")) {
        			var todayDate = new Date(); 
                    setCookie("nightEvtSatPopup",todayDate.getDate(),1);
        		}
        		
        		if(week === "sun" && $("#eventpop_check_sun").is(":checked")) {
        			var todayDate = new Date(); 
                    setCookie("nightEvtSunPopup",todayDate.getDate(),1);
        		}
        		
        		$("#nightEventPopup").data('scroll',$('#mainPopwrap1').scrollTop());
                $("#nightEventPopup").hide();
        	}
        	
        }
      	
      //설날 공지 팝업 (2021)
        function layerPopup9(division) {
    	  
        	var todayDate = new Date();
            var documentResult = "";
            if(division == "open") {
                
	                documentResult += '	<div class="popWrap1901" style="position:fixed;top:-21px;right:10px;z-index:20;"> ';
	                documentResult += '		<div class="popwrap main_banner position1 newyears-pop" style="position:relative;">';
	                documentResult += '        	<div class="pop_cnt" style="position:relative;">';
	                documentResult += '				<img src="http://cdn.thehandsome.com/pc/notice/pc_newyear_ko_220120.jpg" alt="설 연휴 배송 안내">';
	                documentResult += '        		<a href="/ko/svcenter/notice" style="display:block;overflow:hidden;text-indent:-999em;position:absolute;left:50%;transform:translate3d(-50%,0,0);bottom:5%;width:140px;height:35px;">자세히보기</a>';
	                documentResult += '        	</div>';
	                documentResult += '        	<div class="chkbox_cls" style="background:#363636;">';
	                documentResult += '        		<input type="checkbox" id="cls" onclick="layerPopup9(\'close\')"> <label for="cls"> 1일 동안 열지 않음</label>';
	                documentResult += '			</div>';
	                documentResult += '			<a href="javascript:;" class="btn_close" onclick="layerPopup9(\'close\')">닫기</a>';
	                documentResult += '		</div>';
                	documentResult += '	</div>';
                

                $("#mainPopwrap1").html(documentResult);
            } else if(division == "close") {
                
                if($('#cls').is(":checked")) {
                    var todayDate = new Date(); 
                    setCookie("newYearPopup2022",todayDate.getDate(),1);
                }
                $("#mainPopwrap1").data('scroll',$('#mainPopwrap1').scrollTop());
                $("#mainPopwrap1").hide();
            }
        }

        //추석 공지 팝업 (2021)
        function layerPopup11(division) {
            
            var todayDate = new Date();
            var documentResult = "";
            if(division == "open") {
                
                    documentResult += ' <div class="popWrap1901" style="position:fixed;top:78px;right:10px;z-index:20;"> ';
                    documentResult += '     <div class="popwrap main_banner position1 newyears-pop" style="position:relative;">';
                    documentResult += '         <div class="pop_cnt" style="position:relative;">';
                    documentResult += '             <img src="http://cdn.thehandsome.com/pc/notice/pc_thanksgiving_ko_210914.jpg" alt="추석 연휴 배송 안내">';
                    documentResult += '             <a href="/ko/svcenter/notice" style="display:block;overflow:hidden;text-indent:-999em;position:absolute;left:50%;transform:translate3d(-50%,0,0);bottom:5%;width:140px;height:35px;">자세히보기</a>';
                    documentResult += '         </div>';
                    documentResult += '         <div class="chkbox_cls" style="background:#363636;">';
                    documentResult += '             <input type="checkbox" id="cls" onclick="layerPopup11(\'close\')"> <label for="cls"> 1일 동안 열지 않음</label>';
                    documentResult += '         </div>';
                    documentResult += '         <a href="javascript:;" class="btn_close" onclick="layerPopup11(\'close\')">닫기</a>';
                    documentResult += '     </div>';
                    documentResult += ' </div>';
                

                $("#mainPopwrap1").html(documentResult);
            } else if(division == "close") {
                
                if($('#cls').is(":checked")) {
                    var todayDate = new Date(); 
                    setCookie("chuseokPopup2021",todayDate.getDate(),1);
                }
                $("#mainPopwrap1").data('scroll',$('#mainPopwrap1').scrollTop());
                $("#mainPopwrap1").hide();
            }
        }
        
      //통합 멤버십 약관 제정 안내 팝업(21/03/01 00시~ 03/07 23:59:59)
        function layerPopup10(division) {
    	  
        	var todayDate = new Date();
            var documentResult = "";
            if(division == "open") {
                
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
	                documentResult += '					<a href="javascript:void(0)" class="btn_close" onclick="layerPopup10(\'close\')"><img src="/resources/images/popup/ico_close.png"></a>';
	                documentResult += '				</div>';
	                documentResult += '			</div>';
	                documentResult += '		</div>';
	                documentResult += '	</div>';

                
                //layerPopup 삽입
                $("#membershipInfoMainWrap").html(documentResult);
            } else if(division == "close") {
                if($('#eventpop_check').is(":checked")) {
                	//쿠키생성 유효기간 쿠키생성일부터 7일 
                    var todayDate = new Date(); 
                    setCookie("membershipInfoMain",todayDate.getDate(),7);
               	}
                $("#membershipInfoMainWrap").data('scroll',$('#membershipInfoMainWrap').scrollTop());
                //popup hide
                $("#membershipInfoMainWrap").hide();
            }
        }
      
    //#1240 recopick 추가
    function goDetailPagebyRecommend(productCode, clickUrl){
        var url = '/ko/p' + "/" + productCode;
        var host = "http://"+ $(location).attr('host') + url +"?type=recommendProd";
        var tempUrl = clickUrl + "&url=" + encodeURI(host);
        window.location.href=tempUrl;
    }
    
    function mainSlider1903() {
        $('.big_banner_inner').each(function(){
            if($(this).hasClass('init')){
                $(this).removeClass('init');
            }
        });
        
        /* 슬라이드 갯수에 따른 loop추가 및 제거(20210222) */
        var bannerIndex1 = $('#mainSlider1903_0 .swiper-slide').length;
        var bannerIndex2 = $('#mainSlider1903_1 .swiper-slide').length;
        var bannerIndex3 = $('#mainSlider1903_2 .swiper-slide').length;
        
        var interleaveOffset = 1;
        var swiperOptions0 = {
            initialSlide:0,
            loop: bannerIndex1 === 1 ? false:true,
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
            simulateTouch:false,
            parallax: true,
            grabCursor: true,
            watchSlidesProgress: true,
            slidesPerView: 'auto',
            centeredSlides:true,
            on: {
                progress: function(){
                    var swiper = this;
                    for (var i = 0; i < swiper.slides.length; i++) {
                        var slideProgress = swiper.slides[i].progress,
                                innerOffset = swiper.width * interleaveOffset,
                                innerTranslate = slideProgress * innerOffset;
                        swiper.slides[i].querySelector(".slide-bgimg").style.transform =
                            "translate3d(" + innerTranslate + "px, 0, 0)";
                    }
                },
                touchStart: function() {
                    var swiper = this;
                    for (var i = 0; i < swiper.slides.length; i++) {
                        swiper.slides[i].style.transition = "";
                    }
                },
                setTransition: function(speed) {
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
                initialSlide:1,
                loop: bannerIndex2 === 1 ? false:true,
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
                centeredSlides:true,
                on: {
                    progress: function(){
                        var swiper = this;
                        for (var i = 0; i < swiper.slides.length; i++) {
                            var slideProgress = swiper.slides[i].progress,
                                    innerOffset = swiper.width * interleaveOffset,
                                    innerTranslate = slideProgress * innerOffset;
                            swiper.slides[i].querySelector(".slide-bgimg").style.transform =
                                "translate3d(" + innerTranslate + "px, 0, 0)";
                        }
                    },
                    touchStart: function() {
                        var swiper = this;
                        for (var i = 0; i < swiper.slides.length; i++) {
                            swiper.slides[i].style.transition = "";
                        }
                    },
                    setTransition: function(speed) {
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
        if(swiper2length > 0){
            swiper2length -= 1;
        }
                var swiperOptions2 = {
                    initialSlide: swiper2length ,
                    loop: bannerIndex3 === 1 ? false:true,
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
                    centeredSlides:true,
                    on: {
                        progress: function(){
                            var swiper = this;
                            for (var i = 0; i < swiper.slides.length; i++) {
                                var slideProgress = swiper.slides[i].progress,
                                        innerOffset = swiper.width * interleaveOffset,
                                        innerTranslate = slideProgress * innerOffset;
                                swiper.slides[i].querySelector(".slide-bgimg").style.transform =
                                    "translate3d(" + innerTranslate + "px, 0, 0)";
                            }
                        },
                        touchStart: function() {
                            var swiper = this;
                            for (var i = 0; i < swiper.slides.length; i++) {
                                swiper.slides[i].style.transition = "";
                            }
                        },
                        setTransition: function(speed) {
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
    
    
    function edtSlider1903(){//기획전 슬라이더
        $('.edt_banner_wrap1903 .edt_list1903').each(function(idx){
            var swiper1903 = new Swiper('#edtSlider1903_'+idx, {
                    slidesPerView: 3,
                    freeMode: false,
                    spaceBetween: 11,
                    simulateTouch:true,
                    /* scrollbar: {
                        el: '.swiper-scrollbar.bar'+idx,
                        hide: false,
                    }, */
                    pagination: {
						el: '.edt-swiper-pagination',
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
			});
		}
		
		function getExchangePrice(price) {
			var exchangePrice = "";
			
					exchangePrice = "₩" + addComma(parseInt(price));
				
			
			return exchangePrice;
		}
        
        // 마케팅수신동의 팝업 닫기
        function maketingAgreeClose() {
            $("#marketingAgreeLayer").hide();
            
        }
        
        // 마케팅수신동의얼럿
        function maketingAgreeAlert() {
        	
        	 
        	 
        	 if ( !$('#emailchk').is(':checked') && !$('#smschk').is(':checked') ) {
                 var lc = new layerConfirm('고객님께서는 마케팅수신 재동의하지 않으셨습니다. 이대로 진행할 경우, 더한섬닷컴에서 진행하는 마케팅 및 이벤트 소식을 받아보실수 없습니다. 진행하시겠습니까?', '확인', '취소');
                 lc.confirmAction = function() {
                     maketingAgreeProcess('N','N');
                 };
             } else if ( $('#emailchk').is(':checked') && !$('#smschk').is(':checked') ) { 
                 var lc = new layerConfirm('고객님께서는 SMS 수신은 동의하지 않으셨습니다. 이대로 진행할 경우, 더한섬닷컴에서 진행하는 마케팅 및 이벤트 소식을 SMS로 받아보실수 없습니다. 진행하시겠습니까?', '확인', '취소');
                 lc.confirmAction = function() {
                     maketingAgreeProcess('Y','N');
                 };
             } else if ( !$('#emailchk').is(':checked') && $('#smschk').is(':checked') ) {
                 var lc = new layerConfirm('고객님께서는 이메일 수신은 동의하지 않으셨습니다. 이대로 진행할 경우, 더한섬닷컴에서 진행하는 마케팅 및 이벤트 소식을 이메일로 받아보실수 없습니다. 진행하시겠습니까?', '확인', '취소');
                 lc.confirmAction = function() {
                     maketingAgreeProcess('N','Y');
                 };
             } else {
                 maketingAgreeProcess('Y','Y');
             }
        	 
        	 
        }
        
        // 마케팅수신동의처리
        function maketingAgreeProcess(emailChkYn, smsChkYn) {
            $.ajax({
                type:"POST",
                url:"/ko/appDownloadSMS/maketingAgree",
                data:{"emailChkYn" : emailChkYn, "smsChkYn" : smsChkYn, "CSRFToken" : "3de4f578-9983-4f70-8b91-fb368a78b6aa"},
                error:function(e){
                    console.log(e);
                }
            });
            maketingAgreeClose();
        }
        
        //8월 올빼미 이벤트 팝업 닫기
        function nightEvtPopLayerClose(){
        	$("#nightEvtPop").hide();
	    }
        
        function brazeLogCustomEvent(type, idx){
            var currentActionTime = new Date().format("yyyyMMddHHmmss");
            var prodList;
            
            if(type == "ENTER"){
                appboy.logCustomEvent(
                    "LCE_viewMain",
                    {
                        "accessDate"  : currentActionTime
                    }
                );
            }
            else{ //RECOMMEND
                prodList = JSON.parse(window.sessionStorage.getItem('main_recommend_ecommerceDataList'));
            
                if(prodList != null && typeof prodList != undefined){
                    if(prodList.length > 0){
                        var prodInfo = prodList[idx];
                        //20201222 상품코드 세분화 작업
                        var baseCd  = "";
                        var styleCd = "";
                        var sizeCd  = "";
                        if(prodInfo.baseProductCode.indexOf("_") > -1){
                            var tmp = prodInfo.baseProductCode.split("_");
                            if(tmp.length == 3){ // size
                                baseCd  = tmp[0];
                                styleCd = tmp[1];
                                sizeCd  = tmp[2];
                            }else if(tmp.length == 2){ // color
                                baseCd  = tmp[0];
                                styleCd = tmp[1];
                            }
                        }else{ // base
                            baseCd = prodInfo.baseProductCode;
                        }
                        var productCateKoName = setCategoryNameInKO(prodInfo.productCategoryCode, prodInfo.productCategoryName);
                        appboy.logCustomEvent(
                            "LCE_recommendAreaClick",
                            {
                                "productName" : prodInfo.productName
                               ,"productCode" : baseCd
                               ,"colorCode"   : styleCd
                               ,"sizeCode"    : sizeCd
                               ,"accessDate"  : currentActionTime
                               ,"productCategoryCode" : prodInfo.productCategoryCode
                               ,"productCategoryName" : productCateKoName
                            }
                        );
                    }
                }
            }
        }
	</script>

	<!-- bodyWrap -->
	<div id="bodyWrap" style="padding-bottom: 0;">
		<!-- layer pop-->
		<div class="notice_pop" id="mainNoticeWrap"></div>
		<div id="mainPopwrap1"></div>
		<div id="mainPopwrap2"></div>
		<div id="nightEventPopup"></div>
		<div id="membershipInfoMainWrap"></div>
		<!-- //layer pop -->
		<!-- main_container-->
		<div class="big_banner1903">
			<div class="swiper-container big_banner_inner" id="mainSlider1903_0">
				<div class="big_banner_frame"></div>
				<ul class="slides swiper-wrapper">
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220502-A-liquidesbar-07.jpg?context=bWFzdGVyfGltYWdlc3w1MDMyN3xpbWFnZS9qcGVnfGltYWdlcy9oZjIvaGY0LzkyOTU4MjM5MjkzNzQuanBnfDZmOWE0MjVmMjI3Y2ZkZmMzN2Y0YmNlMzU0MTJlOWRiNGYwY2ZlOWUzMjAyNWZkNzlkYzdiZmZlMDI0MjVmZjU);"></div>
						<a href="/ko/magazine/exhibitions/8812640949944"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> </span>
								</p>
								<p class="s_title">
									<font color="#000000">배우 이제훈이 선택한<br>리퀴드 퍼퓸바의 대표
										브랜드를 소개합니다
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220502-A-liquidesbar-07.jpg?context=bWFzdGVyfGltYWdlc3w1MDMyN3xpbWFnZS9qcGVnfGltYWdlcy9oZjIvaGY0LzkyOTU4MjM5MjkzNzQuanBnfDZmOWE0MjVmMjI3Y2ZkZmMzN2Y0YmNlMzU0MTJlOWRiNGYwY2ZlOWUzMjAyNWZkNzlkYzdiZmZlMDI0MjVmZjU"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220502-pc-main-A-01.jpg?context=bWFzdGVyfGltYWdlc3wxOTAwMzF8aW1hZ2UvanBlZ3xpbWFnZXMvaGY3L2hlYi85Mjk1ODIwNTU0MjcwLmpwZ3xiZWVlNDBmN2JiMGVhZGM2MGI0NGM2NDk3MDhjNzJlYWFhZTVhYzIzZjM2OGMwMDk5ZTIzNWRiNTVjNTM5MGU4);"></div>
						<a href="/ko/magazine/events/8803990165376"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> <font color="#000000">AweSOME
											GIFT</font> <span class="ab-bar left"
										style="background-color: #000000;"></span> <span
										class="ab-bar right" style="background-color: #000000;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#000000">더한섬닷컴 X 켈리박 구매 기프트<br>정상 40만원
										이상 구매 시 증정
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">이벤트 자세히 보기</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220502-pc-main-A-01.jpg?context=bWFzdGVyfGltYWdlc3wxOTAwMzF8aW1hZ2UvanBlZ3xpbWFnZXMvaGY3L2hlYi85Mjk1ODIwNTU0MjcwLmpwZ3xiZWVlNDBmN2JiMGVhZGM2MGI0NGM2NDk3MDhjNzJlYWFhZTVhYzIzZjM2OGMwMDk5ZTIzNWRiNTVjNTM5MGU4"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220428-A-time-01-pc.jpg?context=bWFzdGVyfGltYWdlc3wyNjE0MTN8aW1hZ2UvanBlZ3xpbWFnZXMvaGJhL2g4ZC85Mjk1NDMwMzIwMTU4LmpwZ3xiNmVmZTAxYWQwM2ZjODJlZDNmNWFjYWFkNWM2MjA2MTVjYWJmMzFhNzQxZDRjZjQ0NjIyZjU1YTk3NTA3NDA4);"></div>
						<a href="/ko/magazine/exhibitions/8812575610552"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap ">
								<p class="title">
									<span class="bar-in"> <font color="#FFFFFF">The
											TIMEing</font> <span class="ab-bar left"
										style="background-color: #FFFFFF;"></span> <span
										class="ab-bar right" style="background-color: #FFFFFF;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#FFFFFF">자신만의 '포에틱 시퀀스'를 찾아가는<br>타임의
										무한한 여정이 펼쳐집니다
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #FFFFFF; color: #FFFFFF">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220428-A-time-01-pc.jpg?context=bWFzdGVyfGltYWdlc3wyNjE0MTN8aW1hZ2UvanBlZ3xpbWFnZXMvaGJhL2g4ZC85Mjk1NDMwMzIwMTU4LmpwZ3xiNmVmZTAxYWQwM2ZjODJlZDNmNWFjYWFkNWM2MjA2MTVjYWJmMzFhNzQxZDRjZjQ0NjIyZjU1YTk3NTA3NDA4"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220428-A-timehomme-02.jpg?context=bWFzdGVyfGltYWdlc3wxMzgxMTF8aW1hZ2UvanBlZ3xpbWFnZXMvaDY1L2hkZi85Mjk1NDM4MjE3MjQ2LmpwZ3w0NmQzMzI4YTk3NmI2YWZjOWE3N2E4M2FjNDYzMmQ4YzdlYzdiMmRiODlhNjE1NTllNDUwOTdmMGIwZmRjNTcx);"></div>
						<a href="/ko/magazine/editorials/8805989013576"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> <font color="#000000">타임옴므가
											꿈꾸는 여름</font> <span class="ab-bar left"
										style="background-color: #000000;"></span> <span
										class="ab-bar right" style="background-color: #000000;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#000000">데님과 파스텔 컬러가 조화로운<br>타임옴므 온라인
										전용 컬렉션
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">Check Out
									Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220428-A-timehomme-02.jpg?context=bWFzdGVyfGltYWdlc3wxMzgxMTF8aW1hZ2UvanBlZ3xpbWFnZXMvaDY1L2hkZi85Mjk1NDM4MjE3MjQ2LmpwZ3w0NmQzMzI4YTk3NmI2YWZjOWE3N2E4M2FjNDYzMmQ4YzdlYzdiMmRiODlhNjE1NTllNDUwOTdmMGIwZmRjNTcx"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220428-A-brand-01.jpg?context=bWFzdGVyfGltYWdlc3w4NjU3MXxpbWFnZS9qcGVnfGltYWdlcy9oMjYvaDBkLzkyOTUyMjI3MzQ4NzguanBnfDA5ZDNkMjk5MmU1NThmZTYzODE4YmZhZjY5MmYxY2ZlOGYyOTkxMjM5YTc5NmI4ODExZTE0OTU5NWQwOWM0NWM);"></div>
						<a href="/ko/magazine/exhibitions/8812608542392"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> <font color="#FFFFFF">HOLIDAY
											GIFT</font> <span class="ab-bar left"
										style="background-color: #FFFFFF;"></span> <span
										class="ab-bar right" style="background-color: #FFFFFF;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#FFFFFF">고마운 마음을 전하는 계절<br>특별한 선물로 마음을
										표현하세요
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #FFFFFF; color: #FFFFFF">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220428-A-brand-01.jpg?context=bWFzdGVyfGltYWdlc3w4NjU3MXxpbWFnZS9qcGVnfGltYWdlcy9oMjYvaDBkLzkyOTUyMjI3MzQ4NzguanBnfDA5ZDNkMjk5MmU1NThmZTYzODE4YmZhZjY5MmYxY2ZlOGYyOTkxMjM5YTc5NmI4ODExZTE0OTU5NWQwOWM0NWM"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220429-A-fitguide-01.jpg?context=bWFzdGVyfGltYWdlc3wxMDExMDV8aW1hZ2UvanBlZ3xpbWFnZXMvaGNhL2hmZC85Mjk1NTQ0ODQ0MzE4LmpwZ3w3YjcwYzEyYzIwMTczNTk4ZGViNmRhYzY1NzcxZTk0Nzk5ZjVmYTBjNGI2MDg4NGUwOGNlNDY4OTIyM2VjYjRj);"></div>
						<a href="/ko/magazine/exhibitions/8812640917176"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap ">
								<p class="title">
									<span class="bar-in"> <font color="#FFFFFF">PANTS
											FIT GUIDE</font> <span class="ab-bar left"
										style="background-color: #FFFFFF;"></span> <span
										class="ab-bar right" style="background-color: #FFFFFF;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#FFFFFF">핏가이드로 똑똑하게 쇼핑하는 법<br>더한섬닷컴 X
										와이즐리 사은품 EVENT
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #FFFFFF; color: #FFFFFF">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220429-A-fitguide-01.jpg?context=bWFzdGVyfGltYWdlc3wxMDExMDV8aW1hZ2UvanBlZ3xpbWFnZXMvaGNhL2hmZC85Mjk1NTQ0ODQ0MzE4LmpwZ3w3YjcwYzEyYzIwMTczNTk4ZGViNmRhYzY1NzcxZTk0Nzk5ZjVmYTBjNGI2MDg4NGUwOGNlNDY4OTIyM2VjYjRj"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220427-A-5new-03.jpg?context=bWFzdGVyfGltYWdlc3wxMjg1NTh8aW1hZ2UvanBlZ3xpbWFnZXMvaDI5L2hkZS85Mjk1ODEyNjU3MTgyLmpwZ3w5NDE4MDg5MDVkMWNiNjU3NTMxZGE0ZjY5NWRiMjFiM2RlOWVjY2VhMTJhZTI2OGMxZjMyYjYxODA2ZTQ0ZTE0);"></div>
						<a href="/ko/magazine/events/8803957397376"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> <font color="#000000">5월의
											신규가입 Event</font> <span class="ab-bar left"
										style="background-color: #000000;"></span> <span
										class="ab-bar right" style="background-color: #000000;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#000000">첫 구매하신 고객님께 드리는<br>산뜻한 음료
										기프티콘 혜택
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">이벤트 자세히 보기</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220427-A-5new-03.jpg?context=bWFzdGVyfGltYWdlc3wxMjg1NTh8aW1hZ2UvanBlZ3xpbWFnZXMvaDI5L2hkZS85Mjk1ODEyNjU3MTgyLmpwZ3w5NDE4MDg5MDVkMWNiNjU3NTMxZGE0ZjY5NWRiMjFiM2RlOWVjY2VhMTJhZTI2OGMxZjMyYjYxODA2ZTQ0ZTE0"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220428-A-puma-02.jpg?context=bWFzdGVyfGltYWdlc3wxODg0NzV8aW1hZ2UvanBlZ3xpbWFnZXMvaGY0L2hlMy85Mjk1MjQwODIyODE0LmpwZ3xmNzdiMTMzMzVjMGM4MGM2MjQ2NzNkMTBmMjYzMzVlMGNkNjExMDI5NTkzYjFkYWY5MGFmMzI2YzYxODE3N2Q0);"></div>
						<a href="/ko/magazine/exhibitions/8812510435000"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap ">
								<p class="title">
									<span class="bar-in"> <font color="#FFFFFF">PUMA
											X GARFIELD</font> <span class="ab-bar left"
										style="background-color: #FFFFFF;"></span> <span
										class="ab-bar right" style="background-color: #FFFFFF;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#FFFFFF">퓨마의 새로운 콜라보레이션<br>가필드와 함께한
										재치있는 스트릿 웨어
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #FFFFFF; color: #FFFFFF">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220428-A-puma-02.jpg?context=bWFzdGVyfGltYWdlc3wxODg0NzV8aW1hZ2UvanBlZ3xpbWFnZXMvaGY0L2hlMy85Mjk1MjQwODIyODE0LmpwZ3xmNzdiMTMzMzVjMGM4MGM2MjQ2NzNkMTBmMjYzMzVlMGNkNjExMDI5NTkzYjFkYWY5MGFmMzI2YzYxODE3N2Q0"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220429-A-weeklypick-03.jpg?context=bWFzdGVyfGltYWdlc3w2NzU3OXxpbWFnZS9qcGVnfGltYWdlcy9oYzcvaGM4LzkyOTU1NTEyOTk2MTQuanBnfDU2M2YzZmE5NDlmMDg3MDQ3NDBhNThkNjg2NjFiNjQ5ZTk4MDQ0ODNjMDg1NzIwMWE4Zjg4MGRiZWFkYWU2NTg);"></div>
						<a href="/ko/magazine/editorials/8805989046344"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap ">
								<p class="title">
									<span class="bar-in"> <font color="#000000">WOMEN'S
											T-SHIRTS</font> <span class="ab-bar left"
										style="background-color: #000000;"></span> <span
										class="ab-bar right" style="background-color: #000000;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#000000">디자인별 여성 티셔츠 스타일<br>더한섬닷컴 PICK
										티셔츠 추천
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">Check Out
									Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220429-A-weeklypick-03.jpg?context=bWFzdGVyfGltYWdlc3w2NzU3OXxpbWFnZS9qcGVnfGltYWdlcy9oYzcvaGM4LzkyOTU1NTEyOTk2MTQuanBnfDU2M2YzZmE5NDlmMDg3MDQ3NDBhNThkNjg2NjFiNjQ5ZTk4MDQ0ODNjMDg1NzIwMWE4Zjg4MGRiZWFkYWU2NTg"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
				</ul>
				<div class="swiper-pagination"></div>
			</div>
			<div class="swiper-container big_banner_inner init"
				id="mainSlider1903_1" style="margin-top: -480px; left: 1035px;">
				<div class="big_banner_frame"></div>
				<ul class="slides swiper-wrapper">
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220502-A-liquidesbar-07.jpg?context=bWFzdGVyfGltYWdlc3w1MDMyN3xpbWFnZS9qcGVnfGltYWdlcy9oZjIvaGY0LzkyOTU4MjM5MjkzNzQuanBnfDZmOWE0MjVmMjI3Y2ZkZmMzN2Y0YmNlMzU0MTJlOWRiNGYwY2ZlOWUzMjAyNWZkNzlkYzdiZmZlMDI0MjVmZjU);"></div>
						<a href="/ko/magazine/exhibitions/8812640949944"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> </span>
								</p>
								<p class="s_title">
									<font color="#000000">배우 이제훈이 선택한<br>리퀴드 퍼퓸바의 대표
										브랜드를 소개합니다
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220502-A-liquidesbar-07.jpg?context=bWFzdGVyfGltYWdlc3w1MDMyN3xpbWFnZS9qcGVnfGltYWdlcy9oZjIvaGY0LzkyOTU4MjM5MjkzNzQuanBnfDZmOWE0MjVmMjI3Y2ZkZmMzN2Y0YmNlMzU0MTJlOWRiNGYwY2ZlOWUzMjAyNWZkNzlkYzdiZmZlMDI0MjVmZjU"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220502-pc-main-A-01.jpg?context=bWFzdGVyfGltYWdlc3wxOTAwMzF8aW1hZ2UvanBlZ3xpbWFnZXMvaGY3L2hlYi85Mjk1ODIwNTU0MjcwLmpwZ3xiZWVlNDBmN2JiMGVhZGM2MGI0NGM2NDk3MDhjNzJlYWFhZTVhYzIzZjM2OGMwMDk5ZTIzNWRiNTVjNTM5MGU4);"></div>
						<a href="/ko/magazine/events/8803990165376"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> <font color="#000000">AweSOME
											GIFT</font> <span class="ab-bar left"
										style="background-color: #000000;"></span> <span
										class="ab-bar right" style="background-color: #000000;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#000000">더한섬닷컴 X 켈리박 구매 기프트<br>정상 40만원
										이상 구매 시 증정
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">이벤트 자세히 보기</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220502-pc-main-A-01.jpg?context=bWFzdGVyfGltYWdlc3wxOTAwMzF8aW1hZ2UvanBlZ3xpbWFnZXMvaGY3L2hlYi85Mjk1ODIwNTU0MjcwLmpwZ3xiZWVlNDBmN2JiMGVhZGM2MGI0NGM2NDk3MDhjNzJlYWFhZTVhYzIzZjM2OGMwMDk5ZTIzNWRiNTVjNTM5MGU4"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220428-A-time-01-pc.jpg?context=bWFzdGVyfGltYWdlc3wyNjE0MTN8aW1hZ2UvanBlZ3xpbWFnZXMvaGJhL2g4ZC85Mjk1NDMwMzIwMTU4LmpwZ3xiNmVmZTAxYWQwM2ZjODJlZDNmNWFjYWFkNWM2MjA2MTVjYWJmMzFhNzQxZDRjZjQ0NjIyZjU1YTk3NTA3NDA4);"></div>
						<a href="/ko/magazine/exhibitions/8812575610552"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap ">
								<p class="title">
									<span class="bar-in"> <font color="#FFFFFF">The
											TIMEing</font> <span class="ab-bar left"
										style="background-color: #FFFFFF;"></span> <span
										class="ab-bar right" style="background-color: #FFFFFF;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#FFFFFF">자신만의 '포에틱 시퀀스'를 찾아가는<br>타임의
										무한한 여정이 펼쳐집니다
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #FFFFFF; color: #FFFFFF">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220428-A-time-01-pc.jpg?context=bWFzdGVyfGltYWdlc3wyNjE0MTN8aW1hZ2UvanBlZ3xpbWFnZXMvaGJhL2g4ZC85Mjk1NDMwMzIwMTU4LmpwZ3xiNmVmZTAxYWQwM2ZjODJlZDNmNWFjYWFkNWM2MjA2MTVjYWJmMzFhNzQxZDRjZjQ0NjIyZjU1YTk3NTA3NDA4"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220428-A-timehomme-02.jpg?context=bWFzdGVyfGltYWdlc3wxMzgxMTF8aW1hZ2UvanBlZ3xpbWFnZXMvaDY1L2hkZi85Mjk1NDM4MjE3MjQ2LmpwZ3w0NmQzMzI4YTk3NmI2YWZjOWE3N2E4M2FjNDYzMmQ4YzdlYzdiMmRiODlhNjE1NTllNDUwOTdmMGIwZmRjNTcx);"></div>
						<a href="/ko/magazine/editorials/8805989013576"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> <font color="#000000">타임옴므가
											꿈꾸는 여름</font> <span class="ab-bar left"
										style="background-color: #000000;"></span> <span
										class="ab-bar right" style="background-color: #000000;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#000000">데님과 파스텔 컬러가 조화로운<br>타임옴므 온라인
										전용 컬렉션
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">Check Out
									Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220428-A-timehomme-02.jpg?context=bWFzdGVyfGltYWdlc3wxMzgxMTF8aW1hZ2UvanBlZ3xpbWFnZXMvaDY1L2hkZi85Mjk1NDM4MjE3MjQ2LmpwZ3w0NmQzMzI4YTk3NmI2YWZjOWE3N2E4M2FjNDYzMmQ4YzdlYzdiMmRiODlhNjE1NTllNDUwOTdmMGIwZmRjNTcx"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220428-A-brand-01.jpg?context=bWFzdGVyfGltYWdlc3w4NjU3MXxpbWFnZS9qcGVnfGltYWdlcy9oMjYvaDBkLzkyOTUyMjI3MzQ4NzguanBnfDA5ZDNkMjk5MmU1NThmZTYzODE4YmZhZjY5MmYxY2ZlOGYyOTkxMjM5YTc5NmI4ODExZTE0OTU5NWQwOWM0NWM);"></div>
						<a href="/ko/magazine/exhibitions/8812608542392"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> <font color="#FFFFFF">HOLIDAY
											GIFT</font> <span class="ab-bar left"
										style="background-color: #FFFFFF;"></span> <span
										class="ab-bar right" style="background-color: #FFFFFF;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#FFFFFF">고마운 마음을 전하는 계절<br>특별한 선물로 마음을
										표현하세요
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #FFFFFF; color: #FFFFFF">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220428-A-brand-01.jpg?context=bWFzdGVyfGltYWdlc3w4NjU3MXxpbWFnZS9qcGVnfGltYWdlcy9oMjYvaDBkLzkyOTUyMjI3MzQ4NzguanBnfDA5ZDNkMjk5MmU1NThmZTYzODE4YmZhZjY5MmYxY2ZlOGYyOTkxMjM5YTc5NmI4ODExZTE0OTU5NWQwOWM0NWM"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220429-A-fitguide-01.jpg?context=bWFzdGVyfGltYWdlc3wxMDExMDV8aW1hZ2UvanBlZ3xpbWFnZXMvaGNhL2hmZC85Mjk1NTQ0ODQ0MzE4LmpwZ3w3YjcwYzEyYzIwMTczNTk4ZGViNmRhYzY1NzcxZTk0Nzk5ZjVmYTBjNGI2MDg4NGUwOGNlNDY4OTIyM2VjYjRj);"></div>
						<a href="/ko/magazine/exhibitions/8812640917176"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap ">
								<p class="title">
									<span class="bar-in"> <font color="#FFFFFF">PANTS
											FIT GUIDE</font> <span class="ab-bar left"
										style="background-color: #FFFFFF;"></span> <span
										class="ab-bar right" style="background-color: #FFFFFF;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#FFFFFF">핏가이드로 똑똑하게 쇼핑하는 법<br>더한섬닷컴 X
										와이즐리 사은품 EVENT
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #FFFFFF; color: #FFFFFF">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220429-A-fitguide-01.jpg?context=bWFzdGVyfGltYWdlc3wxMDExMDV8aW1hZ2UvanBlZ3xpbWFnZXMvaGNhL2hmZC85Mjk1NTQ0ODQ0MzE4LmpwZ3w3YjcwYzEyYzIwMTczNTk4ZGViNmRhYzY1NzcxZTk0Nzk5ZjVmYTBjNGI2MDg4NGUwOGNlNDY4OTIyM2VjYjRj"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220427-A-5new-03.jpg?context=bWFzdGVyfGltYWdlc3wxMjg1NTh8aW1hZ2UvanBlZ3xpbWFnZXMvaDI5L2hkZS85Mjk1ODEyNjU3MTgyLmpwZ3w5NDE4MDg5MDVkMWNiNjU3NTMxZGE0ZjY5NWRiMjFiM2RlOWVjY2VhMTJhZTI2OGMxZjMyYjYxODA2ZTQ0ZTE0);"></div>
						<a href="/ko/magazine/events/8803957397376"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> <font color="#000000">5월의
											신규가입 Event</font> <span class="ab-bar left"
										style="background-color: #000000;"></span> <span
										class="ab-bar right" style="background-color: #000000;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#000000">첫 구매하신 고객님께 드리는<br>산뜻한 음료
										기프티콘 혜택
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">이벤트 자세히 보기</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220427-A-5new-03.jpg?context=bWFzdGVyfGltYWdlc3wxMjg1NTh8aW1hZ2UvanBlZ3xpbWFnZXMvaDI5L2hkZS85Mjk1ODEyNjU3MTgyLmpwZ3w5NDE4MDg5MDVkMWNiNjU3NTMxZGE0ZjY5NWRiMjFiM2RlOWVjY2VhMTJhZTI2OGMxZjMyYjYxODA2ZTQ0ZTE0"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220428-A-puma-02.jpg?context=bWFzdGVyfGltYWdlc3wxODg0NzV8aW1hZ2UvanBlZ3xpbWFnZXMvaGY0L2hlMy85Mjk1MjQwODIyODE0LmpwZ3xmNzdiMTMzMzVjMGM4MGM2MjQ2NzNkMTBmMjYzMzVlMGNkNjExMDI5NTkzYjFkYWY5MGFmMzI2YzYxODE3N2Q0);"></div>
						<a href="/ko/magazine/exhibitions/8812510435000"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap ">
								<p class="title">
									<span class="bar-in"> <font color="#FFFFFF">PUMA
											X GARFIELD</font> <span class="ab-bar left"
										style="background-color: #FFFFFF;"></span> <span
										class="ab-bar right" style="background-color: #FFFFFF;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#FFFFFF">퓨마의 새로운 콜라보레이션<br>가필드와 함께한
										재치있는 스트릿 웨어
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #FFFFFF; color: #FFFFFF">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220428-A-puma-02.jpg?context=bWFzdGVyfGltYWdlc3wxODg0NzV8aW1hZ2UvanBlZ3xpbWFnZXMvaGY0L2hlMy85Mjk1MjQwODIyODE0LmpwZ3xmNzdiMTMzMzVjMGM4MGM2MjQ2NzNkMTBmMjYzMzVlMGNkNjExMDI5NTkzYjFkYWY5MGFmMzI2YzYxODE3N2Q0"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220429-A-weeklypick-03.jpg?context=bWFzdGVyfGltYWdlc3w2NzU3OXxpbWFnZS9qcGVnfGltYWdlcy9oYzcvaGM4LzkyOTU1NTEyOTk2MTQuanBnfDU2M2YzZmE5NDlmMDg3MDQ3NDBhNThkNjg2NjFiNjQ5ZTk4MDQ0ODNjMDg1NzIwMWE4Zjg4MGRiZWFkYWU2NTg);"></div>
						<a href="/ko/magazine/editorials/8805989046344"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap ">
								<p class="title">
									<span class="bar-in"> <font color="#000000">WOMEN'S
											T-SHIRTS</font> <span class="ab-bar left"
										style="background-color: #000000;"></span> <span
										class="ab-bar right" style="background-color: #000000;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#000000">디자인별 여성 티셔츠 스타일<br>더한섬닷컴 PICK
										티셔츠 추천
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">Check Out
									Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220429-A-weeklypick-03.jpg?context=bWFzdGVyfGltYWdlc3w2NzU3OXxpbWFnZS9qcGVnfGltYWdlcy9oYzcvaGM4LzkyOTU1NTEyOTk2MTQuanBnfDU2M2YzZmE5NDlmMDg3MDQ3NDBhNThkNjg2NjFiNjQ5ZTk4MDQ0ODNjMDg1NzIwMWE4Zjg4MGRiZWFkYWU2NTg"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
				</ul>
			</div>
			<div class="swiper-container big_banner_inner init"
				id="mainSlider1903_2" style="margin-top: -480px; left: -1035px;">
				<div class="big_banner_frame"></div>
				<ul class="slides swiper-wrapper">
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220502-A-liquidesbar-07.jpg?context=bWFzdGVyfGltYWdlc3w1MDMyN3xpbWFnZS9qcGVnfGltYWdlcy9oZjIvaGY0LzkyOTU4MjM5MjkzNzQuanBnfDZmOWE0MjVmMjI3Y2ZkZmMzN2Y0YmNlMzU0MTJlOWRiNGYwY2ZlOWUzMjAyNWZkNzlkYzdiZmZlMDI0MjVmZjU);"></div>
						<a href="/ko/magazine/exhibitions/8812640949944"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> </span>
								</p>
								<p class="s_title">
									<font color="#000000">배우 이제훈이 선택한<br>리퀴드 퍼퓸바의 대표
										브랜드를 소개합니다
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220502-A-liquidesbar-07.jpg?context=bWFzdGVyfGltYWdlc3w1MDMyN3xpbWFnZS9qcGVnfGltYWdlcy9oZjIvaGY0LzkyOTU4MjM5MjkzNzQuanBnfDZmOWE0MjVmMjI3Y2ZkZmMzN2Y0YmNlMzU0MTJlOWRiNGYwY2ZlOWUzMjAyNWZkNzlkYzdiZmZlMDI0MjVmZjU"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220502-pc-main-A-01.jpg?context=bWFzdGVyfGltYWdlc3wxOTAwMzF8aW1hZ2UvanBlZ3xpbWFnZXMvaGY3L2hlYi85Mjk1ODIwNTU0MjcwLmpwZ3xiZWVlNDBmN2JiMGVhZGM2MGI0NGM2NDk3MDhjNzJlYWFhZTVhYzIzZjM2OGMwMDk5ZTIzNWRiNTVjNTM5MGU4);"></div>
						<a href="/ko/magazine/events/8803990165376"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> <font color="#000000">AweSOME
											GIFT</font> <span class="ab-bar left"
										style="background-color: #000000;"></span> <span
										class="ab-bar right" style="background-color: #000000;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#000000">더한섬닷컴 X 켈리박 구매 기프트<br>정상 40만원
										이상 구매 시 증정
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">이벤트 자세히 보기</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220502-pc-main-A-01.jpg?context=bWFzdGVyfGltYWdlc3wxOTAwMzF8aW1hZ2UvanBlZ3xpbWFnZXMvaGY3L2hlYi85Mjk1ODIwNTU0MjcwLmpwZ3xiZWVlNDBmN2JiMGVhZGM2MGI0NGM2NDk3MDhjNzJlYWFhZTVhYzIzZjM2OGMwMDk5ZTIzNWRiNTVjNTM5MGU4"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220428-A-time-01-pc.jpg?context=bWFzdGVyfGltYWdlc3wyNjE0MTN8aW1hZ2UvanBlZ3xpbWFnZXMvaGJhL2g4ZC85Mjk1NDMwMzIwMTU4LmpwZ3xiNmVmZTAxYWQwM2ZjODJlZDNmNWFjYWFkNWM2MjA2MTVjYWJmMzFhNzQxZDRjZjQ0NjIyZjU1YTk3NTA3NDA4);"></div>
						<a href="/ko/magazine/exhibitions/8812575610552"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap ">
								<p class="title">
									<span class="bar-in"> <font color="#FFFFFF">The
											TIMEing</font> <span class="ab-bar left"
										style="background-color: #FFFFFF;"></span> <span
										class="ab-bar right" style="background-color: #FFFFFF;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#FFFFFF">자신만의 '포에틱 시퀀스'를 찾아가는<br>타임의
										무한한 여정이 펼쳐집니다
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #FFFFFF; color: #FFFFFF">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220428-A-time-01-pc.jpg?context=bWFzdGVyfGltYWdlc3wyNjE0MTN8aW1hZ2UvanBlZ3xpbWFnZXMvaGJhL2g4ZC85Mjk1NDMwMzIwMTU4LmpwZ3xiNmVmZTAxYWQwM2ZjODJlZDNmNWFjYWFkNWM2MjA2MTVjYWJmMzFhNzQxZDRjZjQ0NjIyZjU1YTk3NTA3NDA4"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220428-A-timehomme-02.jpg?context=bWFzdGVyfGltYWdlc3wxMzgxMTF8aW1hZ2UvanBlZ3xpbWFnZXMvaDY1L2hkZi85Mjk1NDM4MjE3MjQ2LmpwZ3w0NmQzMzI4YTk3NmI2YWZjOWE3N2E4M2FjNDYzMmQ4YzdlYzdiMmRiODlhNjE1NTllNDUwOTdmMGIwZmRjNTcx);"></div>
						<a href="/ko/magazine/editorials/8805989013576"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> <font color="#000000">타임옴므가
											꿈꾸는 여름</font> <span class="ab-bar left"
										style="background-color: #000000;"></span> <span
										class="ab-bar right" style="background-color: #000000;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#000000">데님과 파스텔 컬러가 조화로운<br>타임옴므 온라인
										전용 컬렉션
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">Check Out
									Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220428-A-timehomme-02.jpg?context=bWFzdGVyfGltYWdlc3wxMzgxMTF8aW1hZ2UvanBlZ3xpbWFnZXMvaDY1L2hkZi85Mjk1NDM4MjE3MjQ2LmpwZ3w0NmQzMzI4YTk3NmI2YWZjOWE3N2E4M2FjNDYzMmQ4YzdlYzdiMmRiODlhNjE1NTllNDUwOTdmMGIwZmRjNTcx"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220428-A-brand-01.jpg?context=bWFzdGVyfGltYWdlc3w4NjU3MXxpbWFnZS9qcGVnfGltYWdlcy9oMjYvaDBkLzkyOTUyMjI3MzQ4NzguanBnfDA5ZDNkMjk5MmU1NThmZTYzODE4YmZhZjY5MmYxY2ZlOGYyOTkxMjM5YTc5NmI4ODExZTE0OTU5NWQwOWM0NWM);"></div>
						<a href="/ko/magazine/exhibitions/8812608542392"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> <font color="#FFFFFF">HOLIDAY
											GIFT</font> <span class="ab-bar left"
										style="background-color: #FFFFFF;"></span> <span
										class="ab-bar right" style="background-color: #FFFFFF;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#FFFFFF">고마운 마음을 전하는 계절<br>특별한 선물로 마음을
										표현하세요
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #FFFFFF; color: #FFFFFF">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220428-A-brand-01.jpg?context=bWFzdGVyfGltYWdlc3w4NjU3MXxpbWFnZS9qcGVnfGltYWdlcy9oMjYvaDBkLzkyOTUyMjI3MzQ4NzguanBnfDA5ZDNkMjk5MmU1NThmZTYzODE4YmZhZjY5MmYxY2ZlOGYyOTkxMjM5YTc5NmI4ODExZTE0OTU5NWQwOWM0NWM"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220429-A-fitguide-01.jpg?context=bWFzdGVyfGltYWdlc3wxMDExMDV8aW1hZ2UvanBlZ3xpbWFnZXMvaGNhL2hmZC85Mjk1NTQ0ODQ0MzE4LmpwZ3w3YjcwYzEyYzIwMTczNTk4ZGViNmRhYzY1NzcxZTk0Nzk5ZjVmYTBjNGI2MDg4NGUwOGNlNDY4OTIyM2VjYjRj);"></div>
						<a href="/ko/magazine/exhibitions/8812640917176"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap ">
								<p class="title">
									<span class="bar-in"> <font color="#FFFFFF">PANTS
											FIT GUIDE</font> <span class="ab-bar left"
										style="background-color: #FFFFFF;"></span> <span
										class="ab-bar right" style="background-color: #FFFFFF;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#FFFFFF">핏가이드로 똑똑하게 쇼핑하는 법<br>더한섬닷컴 X
										와이즐리 사은품 EVENT
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #FFFFFF; color: #FFFFFF">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220429-A-fitguide-01.jpg?context=bWFzdGVyfGltYWdlc3wxMDExMDV8aW1hZ2UvanBlZ3xpbWFnZXMvaGNhL2hmZC85Mjk1NTQ0ODQ0MzE4LmpwZ3w3YjcwYzEyYzIwMTczNTk4ZGViNmRhYzY1NzcxZTk0Nzk5ZjVmYTBjNGI2MDg4NGUwOGNlNDY4OTIyM2VjYjRj"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220427-A-5new-03.jpg?context=bWFzdGVyfGltYWdlc3wxMjg1NTh8aW1hZ2UvanBlZ3xpbWFnZXMvaDI5L2hkZS85Mjk1ODEyNjU3MTgyLmpwZ3w5NDE4MDg5MDVkMWNiNjU3NTMxZGE0ZjY5NWRiMjFiM2RlOWVjY2VhMTJhZTI2OGMxZjMyYjYxODA2ZTQ0ZTE0);"></div>
						<a href="/ko/magazine/events/8803957397376"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap left">
								<p class="title">
									<span class="bar-in"> <font color="#000000">5월의
											신규가입 Event</font> <span class="ab-bar left"
										style="background-color: #000000;"></span> <span
										class="ab-bar right" style="background-color: #000000;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#000000">첫 구매하신 고객님께 드리는<br>산뜻한 음료
										기프티콘 혜택
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">이벤트 자세히 보기</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220427-A-5new-03.jpg?context=bWFzdGVyfGltYWdlc3wxMjg1NTh8aW1hZ2UvanBlZ3xpbWFnZXMvaDI5L2hkZS85Mjk1ODEyNjU3MTgyLmpwZ3w5NDE4MDg5MDVkMWNiNjU3NTMxZGE0ZjY5NWRiMjFiM2RlOWVjY2VhMTJhZTI2OGMxZjMyYjYxODA2ZTQ0ZTE0"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220428-A-puma-02.jpg?context=bWFzdGVyfGltYWdlc3wxODg0NzV8aW1hZ2UvanBlZ3xpbWFnZXMvaGY0L2hlMy85Mjk1MjQwODIyODE0LmpwZ3xmNzdiMTMzMzVjMGM4MGM2MjQ2NzNkMTBmMjYzMzVlMGNkNjExMDI5NTkzYjFkYWY5MGFmMzI2YzYxODE3N2Q0);"></div>
						<a href="/ko/magazine/exhibitions/8812510435000"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap ">
								<p class="title">
									<span class="bar-in"> <font color="#FFFFFF">PUMA
											X GARFIELD</font> <span class="ab-bar left"
										style="background-color: #FFFFFF;"></span> <span
										class="ab-bar right" style="background-color: #FFFFFF;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#FFFFFF">퓨마의 새로운 콜라보레이션<br>가필드와 함께한
										재치있는 스트릿 웨어
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #FFFFFF; color: #FFFFFF">Shop Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220428-A-puma-02.jpg?context=bWFzdGVyfGltYWdlc3wxODg0NzV8aW1hZ2UvanBlZ3xpbWFnZXMvaGY0L2hlMy85Mjk1MjQwODIyODE0LmpwZ3xmNzdiMTMzMzVjMGM4MGM2MjQ2NzNkMTBmMjYzMzVlMGNkNjExMDI5NTkzYjFkYWY5MGFmMzI2YzYxODE3N2Q0"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(http://www.thehandsome.com/medias/220429-A-weeklypick-03.jpg?context=bWFzdGVyfGltYWdlc3w2NzU3OXxpbWFnZS9qcGVnfGltYWdlcy9oYzcvaGM4LzkyOTU1NTEyOTk2MTQuanBnfDU2M2YzZmE5NDlmMDg3MDQ3NDBhNThkNjg2NjFiNjQ5ZTk4MDQ0ODNjMDg1NzIwMWE4Zjg4MGRiZWFkYWU2NTg);"></div>
						<a href="/ko/magazine/editorials/8805989046344"
						onclick="GA_main('banner',$(this));">
							<div class="a_txt_wrap ">
								<p class="title">
									<span class="bar-in"> <font color="#000000">WOMEN'S
											T-SHIRTS</font> <span class="ab-bar left"
										style="background-color: #000000;"></span> <span
										class="ab-bar right" style="background-color: #000000;"></span>
									</span>
								</p>
								<p class="s_title">
									<font color="#000000">디자인별 여성 티셔츠 스타일<br>더한섬닷컴 PICK
										티셔츠 추천
									</font>
								</p>
								<div class="shop_now_btn"
									style="border-color: #000000; color: #000000">Check Out
									Now</div>
							</div>
							<div class="v_img">
								<img
									src="/medias/220429-A-weeklypick-03.jpg?context=bWFzdGVyfGltYWdlc3w2NzU3OXxpbWFnZS9qcGVnfGltYWdlcy9oYzcvaGM4LzkyOTU1NTEyOTk2MTQuanBnfDU2M2YzZmE5NDlmMDg3MDQ3NDBhNThkNjg2NjFiNjQ5ZTk4MDQ0ODNjMDg1NzIwMWE4Zjg4MGRiZWFkYWU2NTg"
									alt="" class="entity-img" />
							</div>
					</a>
					</li>
				</ul>
			</div>
			<div class="swiper-button-prev bigb"></div>
			<div class="swiper-button-next bigb"></div>
		</div>
		<div class="main_container">
			<div class="mid_banner" style="display: none;">
				<div class="banner1 banner1_N" style="display: none;">
					<a href="/ko/c/we09v/#1_0_0_0_0_14_0_0_0"
						onclick="GA_main('eventBanner',$(this));"> <img
						src="/medias/220428-2-1-mine-01.jpg?context=bWFzdGVyfGltYWdlc3wxMjI4MnxpbWFnZS9qcGVnfGltYWdlcy9oZjYvaDRkLzkyOTUyMjEwNjM3MTAuanBnfGE4Yzc1YTZjNjEzYjA5MTIwYjZiZDE2MGE5N2FjN2I4YzY5NDNkNGI4YjFjYjA3MjUyNDU3YWI1NGMzYjVjMTQ"
						alt="banner image" />
						<div class="ban_txt_wrap">
							<p class="title">CODE MINE : E</p>
							<p class="s_title">마인식으로 새롭게 정의한 아웃도어</p>
						</div>
					</a>
				</div>
				<div class="banner1 banner1_N" style="display: none;">
					<a href="/ko/magazine/exhibitions/8812444309176"
						onclick="GA_main('eventBanner',$(this));"> <img
						src="/medias/220421-2-1-tom-01.jpg?context=bWFzdGVyfGltYWdlc3wxNzAyMXxpbWFnZS9qcGVnfGltYWdlcy9oM2YvaDEwLzkyOTMzMzQ5NzAzOTguanBnfDkyMzFkNmU1N2E5MGYxOTdmNTdkMTZkM2ExZTBjZjk1ZTE0NDFhMjQ4MGY3OWMxYTNiY2I4ZGIyODJkYjVhZmQ"
						alt="banner image" />
						<div class="ban_txt_wrap">
							<p class="title">
								<font color=white>TOM LIFESTYLE</font>
							</p>
							<p class="s_title">
								<font color=white>봄의 에너지를 담은 테이블웨어</font>
							</p>
						</div>
					</a>
				</div>
				<div class="banner2 banner2_N" style="display: none;">
					<a href="/ko/c/we094/#1_0_0_0_0_14_0_0_0"
						onclick="GA_main('eventBanner',$(this));"> <img
						src="/medias/220429-2-2-sjsj-01.jpg?context=bWFzdGVyfGltYWdlc3wxNDQyNHxpbWFnZS9qcGVnfGltYWdlcy9oNmUvaGIxLzkyOTU1NDQ5NzUzOTAuanBnfDBmMjlkODM4YmEyNGNhZjY1ZTBjNjZhZjliMGFmMmM0NTM1ZjBhNjFmMTY0YTU4ODQyZmNjMTgxNDJlMDY5NGM"
						alt="banner image" />
						<div class="ban_txt_wrap">
							<p class="title">
								<font color=white>Scent in Tales</font>
							</p>
							<p class="s_title">
								<font color=white>향을 품은 SJSJ의 캡슐 컬렉션</font>
							</p>
						</div>
					</a>
				</div>
			</div>
			<div class="edt_banner_wrap1903">
				<h4 class="tit">기획전</h4>
				<div class="edt_banner_inner1">
					<div class="edt_banner">
						<a href="/ko/magazine/exhibitions/8812510271160"
							onclick="GA_main('exhibitionBanner',$(this));"> <img
							src="/medias/220428-B-obzee.jpg?context=bWFzdGVyfGltYWdlc3w4NTQwM3xpbWFnZS9qcGVnfGltYWdlcy9oNzAvaDNiLzkyOTUyMjE2ODYzMDIuanBnfGRkYTRiNWJmY2IxYTBlNTFjNTZiODM2MTQ2MWZhODhiYmNhNDRiYTRjY2EzYTY1YjgzMWM1ZWExMTc2YTcwYTM"
							alt="기획전 배너">
							<div class="ban_txt_wrap">
								<span class="sticker" style="background: #99a5d7;">style
									guide</span>
								<p class="s_title">
									<font color="#FFFFFF">써머 리조트룩을 재해석한 뉴 컬렉션</font>
								</p>
								<p class="title">
									<span class="bar-in"> <font color="#FFFFFF">YACHTIE
											OBZÉÉ</font> <span class="ab-bar left"
										style="background-color: #FFFFFF;"></span> <span
										class="ab-bar right" style="background-color: #FFFFFF;"></span>
									</span>
								</p>
							</div>
						</a>
					</div>
					<div class="edt_list1903">
						<div class="edt_list_inner swiper-container" id="edtSlider1903_0">
							<p class="tit">OBZÉÉ SUMMER</p>
							<ul class="swiper-wrapper">
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/OB2C4WOP536W_BL" class="item_info1"
											onclick="GA_main('exhibitionListImage0',$(this));setEcommerceDataCompnt('OB2C4WOP536W_BL','OBZEE','[YACHTIE] 프린팅 노트 플리츠 드레스', '0');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/OB/2C/SS/OB2C4WOP536W_BL_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/OB2C4WOP536W_BL" class="item_info2"
											onclick="GA_main('exhibitionList0',$(this));setEcommerceDataCompnt('OB2C4WOP536W_BL','OBZEE','[YACHTIE] 프린팅 노트 플리츠 드레스', '0');">
											<span class="brand">OBZEE</span> <span class="title">[YACHTIE]
												프린팅 노트 플리츠 드레스</span> <span class="price">745000.0</span>
										</a>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/OB2C4WVT049W_LB" class="item_info1"
											onclick="GA_main('exhibitionListImage0',$(this));setEcommerceDataCompnt('OB2C4WVT049W_LB','OBZEE','[YACHTIE] 세일러 칼라 체인 베스트', '0');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/OB/2C/SS/OB2C4WVT049W_LB_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/OB2C4WVT049W_LB" class="item_info2"
											onclick="GA_main('exhibitionList0',$(this));setEcommerceDataCompnt('OB2C4WVT049W_LB','OBZEE','[YACHTIE] 세일러 칼라 체인 베스트', '0');">
											<span class="brand">OBZEE</span> <span class="title">[YACHTIE]
												세일러 칼라 체인 베스트</span> <span class="price">995000.0</span>
										</a>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/OB2C4WPC324W_CR" class="item_info1"
											onclick="GA_main('exhibitionListImage0',$(this));setEcommerceDataCompnt('OB2C4WPC324W_CR','OBZEE','[YACHTIE] 린넨 블렌드 핀턱 와이드 팬츠', '0');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/OB/2C/SS/OB2C4WPC324W_CR_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/OB2C4WPC324W_CR" class="item_info2"
											onclick="GA_main('exhibitionList0',$(this));setEcommerceDataCompnt('OB2C4WPC324W_CR','OBZEE','[YACHTIE] 린넨 블렌드 핀턱 와이드 팬츠', '0');">
											<span class="brand">OBZEE</span> <span class="title">[YACHTIE]
												린넨 블렌드 핀턱 와이드 팬츠</span> <span class="price">425000.0</span>
										</a>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/OB2C4WOP530W_AB" class="item_info1"
											onclick="GA_main('exhibitionListImage0',$(this));setEcommerceDataCompnt('OB2C4WOP530W_AB','OBZEE','[YACHTIE] 벌룬 슬리브 프릴 칼라 드레스', '0');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/OB/2C/SS/OB2C4WOP530W_AB_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/OB2C4WOP530W_AB" class="item_info2"
											onclick="GA_main('exhibitionList0',$(this));setEcommerceDataCompnt('OB2C4WOP530W_AB','OBZEE','[YACHTIE] 벌룬 슬리브 프릴 칼라 드레스', '0');">
											<span class="brand">OBZEE</span> <span class="title">[YACHTIE]
												벌룬 슬리브 프릴 칼라 드레스</span> <span class="price">695000.0</span>
										</a>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/OB2C4WJC047W_YN" class="item_info1"
											onclick="GA_main('exhibitionListImage0',$(this));setEcommerceDataCompnt('OB2C4WJC047W_YN','OBZEE','[YACHTIE] 린넨 블렌드 벨티드 싱글 재킷', '0');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/OB/2C/SS/OB2C4WJC047W_YN_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/OB2C4WJC047W_YN" class="item_info2"
											onclick="GA_main('exhibitionList0',$(this));setEcommerceDataCompnt('OB2C4WJC047W_YN','OBZEE','[YACHTIE] 린넨 블렌드 벨티드 싱글 재킷', '0');">
											<span class="brand">OBZEE</span> <span class="title">[YACHTIE]
												린넨 블렌드 벨티드 싱글 재킷</span> <span class="price">645000.0</span>
										</a>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/OB2C4WPC338W_BK" class="item_info1"
											onclick="GA_main('exhibitionListImage0',$(this));setEcommerceDataCompnt('OB2C4WPC338W_BK','OBZEE','[YACHTIE] 핀턱 와이드 쇼츠', '0');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/OB/2C/SS/OB2C4WPC338W_BK_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/OB2C4WPC338W_BK" class="item_info2"
											onclick="GA_main('exhibitionList0',$(this));setEcommerceDataCompnt('OB2C4WPC338W_BK','OBZEE','[YACHTIE] 핀턱 와이드 쇼츠', '0');">
											<span class="brand">OBZEE</span> <span class="title">[YACHTIE]
												핀턱 와이드 쇼츠</span> <span class="price">395000.0</span>
										</a>
									</div>
								</li>
							</ul>
							<div class="edt-swiper-pagination"></div>
						</div>
						<div class="swiper-button-next btn0"></div>
						<div class="swiper-button-prev btn0"></div>
					</div>
				</div>
				<div class="edt_banner_inner2">
					<div class="edt_banner">
						<ul>
							<li><a href="/ko/magazine/exhibitions/8812509845176"
								target="_blank" onclick="GA_main('exhibitionBanner',$(this));">
									<img
									src="/medias/220428-C-fourm.jpg?context=bWFzdGVyfGltYWdlc3w1Njk0NXxpbWFnZS9qcGVnfGltYWdlcy9oNzcvaGI0LzkyOTUyMjE4ODI5MTAuanBnfDFmN2VlMjFmYTc1N2UwYWY5MDg0MTk0MDgzZDljNDhmYWI0MzE2OWVjZjE2ZDhjOWQ1NDNlYTdjZjg1NWU5YWM"
									alt="기획전 배너">
									<div class="ban_txt_wrap">
										<span class="sticker" style="background: #86B404">exclusive</span>
										<p class="s_title">
											<font color="#FFFFFF">봄과 여름 사이, 폼더스토어의 새로운 팔레트</font>
										</p>
										<p class="title">
											<font color="#FFFFFF">NEW PALETTE</font>
										</p>
									</div>
							</a></li>
							<li><a href="/ko/magazine/exhibitions/8812477109944"
								onclick="GA_main('exhibitionBanner',$(this));"> <img
									src="/medias/220428-C-phillip.jpg?context=bWFzdGVyfGltYWdlc3wxMDk1ODR8aW1hZ2UvanBlZ3xpbWFnZXMvaDI0L2gwMy85Mjk1MjIyMDEzOTgyLmpwZ3xhN2E1MjAzOWE3NWJkNmU0ZTYyYWE3NmNjNjFhODc3MmQ2NDQzZDkwNjg4N2NiNmZhMTBjOWRiNWZkNWUyNjA4"
									alt="기획전 배너">
									<div class="ban_txt_wrap">
										<span class="sticker" style="background: #e16a6a;">new</span>
										<p class="s_title">
											<font color="#ffffff">현대인을 위한 필립림의 쿨 이지웨어</font>
										</p>
										<p class="title">
											<font color="#ffffff">LIVE FREE</font>
										</p>
									</div>
							</a></li>
							<li><a href="/ko/magazine/exhibitions/8812477601464"
								onclick="GA_main('exhibitionBanner',$(this));"> <img
									src="/medias/220428-C-brand.jpg?context=bWFzdGVyfGltYWdlc3w2NTk4NnxpbWFnZS9qcGVnfGltYWdlcy9oNDYvaDQ1LzkyOTUyMjIyMTA1OTAuanBnfGE4NjE3YjVkYjM0OWJiNjFiMDNjZjhiMTZlNmZjNjExNzgzYWIxNjJhZWFkZjE2NjQ5MGZhMzVlZjkxYjVhZjc"
									alt="기획전 배너">
									<div class="ban_txt_wrap">
										<span class="sticker" style="background: #e99143;">we
											love</span>
										<p class="s_title">
											<font color="#FFFFFF">발리의 새로운 아이코닉 라인 #CABANA</font>
										</p>
										<p class="title">
											<font color="#FFFFFF">BALLY CABANA</font>
										</p>
									</div>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="edt_banner_inner3">
					<div class="edt_banner">
						<a href="/ko/magazine/exhibitions/8812182394552"
							onclick="GA_main('exhibitionBanner',$(this));"> <img
							src="/medias/220428-B-clubmonaco.jpg?context=bWFzdGVyfGltYWdlc3w1OTU2NnxpbWFnZS9qcGVnfGltYWdlcy9oZWYvaDMxLzkyOTUyMjIyNzYxMjYuanBnfDg0Yzg0ZDhkOTYzYzdmMGRkMDE4ODE4Nzk1YjJkODhiN2ViODRmMmNiMDgyMDAwZjRmOGY2YWRlYWQ2NWZhNDA"
							alt="기획전 배너">
							<div class="ban_txt_wrap">
								<span class="sticker" style="background: #e16a6a;">new</span>
								<p class="s_title">
									<font color="#ffffff">클럽모나코 22SS 티셔츠 컬렉션</font>
								</p>
								<p class="title">
									<span class="bar-in"> <font color="#ffffff">MODERN
											& MINIMAL</font> <span class="ab-bar left"
										style="background-color: #ffffff;"></span> <span
										class="ab-bar right" style="background-color: #ffffff;"></span>
									</span>
								</p>
							</div>
						</a>
					</div>
					<div class="edt_list1903">
						<div class="edt_list_inner swiper-container" id="edtSlider1903_1">
							<p class="tit">CLUB MONACO</p>
							<ul class="swiper-wrapper">
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/MM2C3TTS025H4A_MB" class="item_info1"
											onclick="GA_main('exhibitionListImage1',$(this));setEcommerceDataCompnt('MM2C3TTS025H4A_MB','CLUB MONACO','오픈 칼라 티셔츠', '1');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/MM/2C/SS/MM2C3TTS025H4A_MB_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/MM2C3TTS025H4A_MB" class="item_info2"
											onclick="GA_main('exhibitionList1',$(this));setEcommerceDataCompnt('MM2C3TTS025H4A_MB','CLUB MONACO','오픈 칼라 티셔츠', '1');">
											<span class="brand">CLUB MONACO</span> <span class="title">오픈
												칼라 티셔츠</span> <span class="price">158000.0</span>
										</a>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/MM2C3TTS022H4A_BL" class="item_info1"
											onclick="GA_main('exhibitionListImage1',$(this));setEcommerceDataCompnt('MM2C3TTS022H4A_BL','CLUB MONACO','컬러 라인 피케 티셔츠', '1');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/MM/2C/SS/MM2C3TTS022H4A_BL_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/MM2C3TTS022H4A_BL" class="item_info2"
											onclick="GA_main('exhibitionList1',$(this));setEcommerceDataCompnt('MM2C3TTS022H4A_BL','CLUB MONACO','컬러 라인 피케 티셔츠', '1');">
											<span class="brand">CLUB MONACO</span> <span class="title">컬러
												라인 피케 티셔츠</span> <span class="price">128000.0</span>
										</a>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/MM2C3TTS035H5A_MB" class="item_info1"
											onclick="GA_main('exhibitionListImage1',$(this));setEcommerceDataCompnt('MM2C3TTS035H5A_MB','CLUB MONACO','히든 버튼 칼라 티셔츠', '1');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/MM/2C/SS/MM2C3TTS035H5A_MB_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/MM2C3TTS035H5A_MB" class="item_info2"
											onclick="GA_main('exhibitionList1',$(this));setEcommerceDataCompnt('MM2C3TTS035H5A_MB','CLUB MONACO','히든 버튼 칼라 티셔츠', '1');">
											<span class="brand">CLUB MONACO</span> <span class="title">히든
												버튼 칼라 티셔츠</span> <span class="price">158000.0</span>
										</a>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/MM2C3TTS025H4E_MT" class="item_info1"
											onclick="GA_main('exhibitionListImage1',$(this));setEcommerceDataCompnt('MM2C3TTS025H4E_MT','CLUB MONACO','오픈 칼라 티셔츠', '1');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/MM/2C/SS/MM2C3TTS025H4E_MT_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/MM2C3TTS025H4E_MT" class="item_info2"
											onclick="GA_main('exhibitionList1',$(this));setEcommerceDataCompnt('MM2C3TTS025H4E_MT','CLUB MONACO','오픈 칼라 티셔츠', '1');">
											<span class="brand">CLUB MONACO</span> <span class="title">오픈
												칼라 티셔츠</span> <span class="price">158000.0</span>
										</a>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/MM2C4WTO605MP_BK" class="item_info1"
											onclick="GA_main('exhibitionListImage1',$(this));setEcommerceDataCompnt('MM2C4WTO605MP_BK','CLUB MONACO','오픈 칼라 티셔츠', '1');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/MM/2C/SS/MM2C4WTO605MP_BK_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/MM2C4WTO605MP_BK" class="item_info2"
											onclick="GA_main('exhibitionList1',$(this));setEcommerceDataCompnt('MM2C4WTO605MP_BK','CLUB MONACO','오픈 칼라 티셔츠', '1');">
											<span class="brand">CLUB MONACO</span> <span class="title">오픈
												칼라 티셔츠</span> <span class="price">198000.0</span>
										</a>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/MM2C3TTS023H4A_WT" class="item_info1"
											onclick="GA_main('exhibitionListImage1',$(this));setEcommerceDataCompnt('MM2C3TTS023H4A_WT','CLUB MONACO','일러스트 프린팅 티셔츠', '1');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/MM/2C/SS/MM2C3TTS023H4A_WT_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/MM2C3TTS023H4A_WT" class="item_info2"
											onclick="GA_main('exhibitionList1',$(this));setEcommerceDataCompnt('MM2C3TTS023H4A_WT','CLUB MONACO','일러스트 프린팅 티셔츠', '1');">
											<span class="brand">CLUB MONACO</span> <span class="title">일러스트
												프린팅 티셔츠</span> <span class="price">118000.0</span>
										</a>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/MM2C4TTO606M_NY" class="item_info1"
											onclick="GA_main('exhibitionListImage1',$(this));setEcommerceDataCompnt('MM2C4TTO606M_NY','CLUB MONACO','스트라이프 버튼 티셔츠', '1');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/MM/2C/SS/MM2C4TTO606M_NY_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/MM2C4TTO606M_NY" class="item_info2"
											onclick="GA_main('exhibitionList1',$(this));setEcommerceDataCompnt('MM2C4TTO606M_NY','CLUB MONACO','스트라이프 버튼 티셔츠', '1');">
											<span class="brand">CLUB MONACO</span> <span class="title">스트라이프
												버튼 티셔츠</span> <span class="price">258000.0</span>
										</a>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/MM2C3KTS042H6E_DG" class="item_info1"
											onclick="GA_main('exhibitionListImage1',$(this));setEcommerceDataCompnt('MM2C3KTS042H6E_DG','CLUB MONACO','라운드넥 니트 티셔츠', '1');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/MM/2C/SS/MM2C3KTS042H6E_DG_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/MM2C3KTS042H6E_DG" class="item_info2"
											onclick="GA_main('exhibitionList1',$(this));setEcommerceDataCompnt('MM2C3KTS042H6E_DG','CLUB MONACO','라운드넥 니트 티셔츠', '1');">
											<span class="brand">CLUB MONACO</span> <span class="title">라운드넥
												니트 티셔츠</span> <span class="price">258000.0</span>
										</a>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="item_box">
										<a href="/ko/p/MM2C3KTS012H6E_CR" class="item_info1"
											onclick="GA_main('exhibitionListImage1',$(this));setEcommerceDataCompnt('MM2C3KTS012H6E_CR','CLUB MONACO','라운드넥 니트 티셔츠', '1');">
											<span class="item_img"> <img
												src="http://newmedia.thehandsome.com/MM/2C/SS/MM2C3KTS012H6E_CR_T01.jpg/dims/resize/180x272"
												alt="" class="respon_image">
										</span>
										</a> <a href="/ko/p/MM2C3KTS012H6E_CR" class="item_info2"
											onclick="GA_main('exhibitionList1',$(this));setEcommerceDataCompnt('MM2C3KTS012H6E_CR','CLUB MONACO','라운드넥 니트 티셔츠', '1');">
											<span class="brand">CLUB MONACO</span> <span class="title">라운드넥
												니트 티셔츠</span> <span class="price">238000.0</span>
										</a>
									</div>
								</li>
							</ul>
							<div class="edt-swiper-pagination"></div>
						</div>
						<div class="swiper-button-next btn1"></div>
						<div class="swiper-button-prev btn1"></div>
					</div>
				</div>
			</div>


			<!-- new & best -->
			<div class="product_list1903">
				<div class="nbe_cnt new">
					<div class="product_left_menu">
						<h4 class="tit">신상품</h4>
						<ul>
						</ul>
					</div>
					<div class="nbe_cnt_inner_wrap"></div>
				</div>
				<div class="nbe_cnt best">
					<div class="product_left_menu">
						<h4 class="tit">베스트</h4>
						<ul>
						</ul>
					</div>
					<div class="nbe_cnt_inner_wrap"></div>
				</div>
			</div>
			<!-- new & best -->
		</div>
		<!-- //main_container-->
		<!-- video_main_wrap-->
		<div class="video_main_wrap">
			<h4 class="tit">
				<spring:theme code="main.video.title" />
			</h4>
			<div class="video_area1903" id="videoDiv1903">
				<a href="javascript:void(0);"
					onclick="GA_main('exhibitionVideo',$(this));">
					<div class="video_main" style="display: block;">
						<span class="play_btn"></span> <img
							src="/medias/220428-D-lanvin-05.jpg?context=bWFzdGVyfGltYWdlc3w2NDY2OHxpbWFnZS9qcGVnfGltYWdlcy9oZWEvaDZlLzkyOTUyMjI2NjkzNDIuanBnfGQyZWVlMmMxMjQxNjAwZTA4YzAyZWQ5ZTBjODJhODA0MjEyYWJkMTAzNzJhYzk3ZTJmM2Y3ZDk3NzYzN2NjYWE"
							alt="poster">
					</div> <video id="video" class="video-js" controls="auto" preload="auto"
						style="display: none; width: 884px; height: auto;"
						onended="videoEnded('videoDiv1903',0)" width="884" height="auto">
						<source
							src="http://s3.ap-northeast-2.amazonaws.com/cdn.thehandsome.com-kr/pc/0_main_video/220427_lanvin/lanvin%20collection_22SS.mp4"
							type="video/mp4">
					</video>
				</a>
			</div>
			<div class="txt">
				<p class="tit">
					JOIE VIVE LANVIN<br>SYNDROME
				</p>
				<p class="s_t">
					초현실적인 공간에서 만난 랑방컬렉션의<br>명화 같은 2022 SS COLLECTION
				</p>
			</div>
		</div>
		<!--// video_main_wrap-->
		<!-- main_container-->
		<div class="main_container">
			<!-- the_magazine_wrap1903-->
			<div class="the_magazine_wrap1903">
				<h4 class="tit">THE 매거진</h4>
				<div class="magazine_slider1903 swiper-container"
					id="magazinSlider1903">
					<ul class="swiper-wrapper">
					</ul>
				</div>
				<!--add arrow -->
				<div class="themagazine_arrow next">다음</div>
				<div class="themagazine_arrow prev">이전</div>
			</div>
			<!-- //the_magazine_wrap1903-->
			<!--배너영역 -->
			<!--//배너영역 -->

			<!-- pick_for-->
			<div class="pickfor_wrap1903">
				<h4 class="tit">
					<span>당신</span>만을 위한 특별한 추천
				</h4>
				<div class="pick_for" id="pickForSlider1903">
					<ul class="slides"></ul>
				</div>
				<div class="controls" id="pickforControls">
					<a href="#;" class="prev"></a> <a href="#;" class="next"></a>
				</div>
			</div>
			<!--// pick_for-->
		</div>
		<!-- //main_container-->
		<!-- instagram -->
		<div class="instagram_wrap1903" style="display: none">
			<div class="txt_wrap">
				<h4 class="tit"># THE HANDSOME MOMENT</h4>
				<p class="s_title">한섬 브랜드 공식 인스타그램 속 사진을 감상하세요.</p>
			</div>
			<div class="pic_wrap swiper-container" id="instaContents">
				<ul class="swiper-wrapper">
				</ul>
				<div class="instagram_arrow next">다음</div>
				<div class="instagram_arrow prev">이전</div>
			</div>
			<a href="/ko/magazine/instagram" class="insta_view_more">전체보기</a>
		</div>
		<!-- //instagram -->
	</div>

	<!-- //bodyWrap -->
	<div class="layerArea" id="hpMemberLayer" style="display: none;">
		<div class="layerBg" style="display: block;" tabindex="-1"></div>
		<div class="popwrap w_type_8" id=""
			style="position: absolute; z-index: 201; display: block; top: 50%; margin-top: -283px;"
			tabindex="-1">
			<!-- Title1 -->
			<div class="pop_tltwrap3">
				<h3>현대백화점 통합회원 가입 안내</h3>
			</div>
			<!-- //Title1 -->
			<div class="pop_cnt">
				<div class="hpoint">
					<p class="txt">
						현대백화점 통합회원으로 가입 시<br />현대백화점그룹의 관계사 사이트를 동시에 이용하실 수 있으며,<br />각종
						혜택을 누리실 수 있습니다.
					</p>
					<p class="img">
						<img src="/resources/images/popup/main_popup_hpoint.jpg"
							style="vertical-align: top" alt="" />
					</p>
					<div class="noticeTxt">
						<p>동의하실 경우 다음의 정보가 공유됩니다.</p>
						<p>- 제공받는자 : (주)현대백화점</p>
						<p>- 목적 : 회원가입 시 필수정보 입력, 기 가입여부, 타인과의 아이디 중복여부 확인</p>
						<p>- 항목 : 성명, 아이디, 생년월일, 전화번호, 이메일</p>
					</div>
					<div class="btnwrap mt30">
						<input class="btn gray" value="동의하고 회원가입 진행" type="button"
							style="width: 200px" onclick="hpoinJoin();" /> <input
							class="btn wt" value="쇼핑 계속하기" type="button" style="width: 200px"
							onclick="layerPopup3('close');" />
					</div>
				</div>
			</div>
			<div class="grayBox">
				<input type="checkbox" id="memPop" name="memPop"
					onclick="layerPopup3('close');" /><label for="chk1">다시보지않기</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					type="checkbox" id="oweek" name="oweek"
					onclick="layerPopup3('oneweek');" /><label for="chk2">1주일동안
					열지 않음</label>
			</div>
			<!-- btn_close -->
			<a href="#" class="btn_close" id="closeLayerPop"
				onclick="layerPopup3('close');"><img
				src="/resources/images/popup/ico_close.png"></a>
			<!-- //btn_close -->
		</div>
	</div>
	<!--  criteo 메인 페이지 트래커 START -->
	<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js"
		async="true"></script>
	<script type="text/javascript">


    var banner1 = $(".banner1");
    var banner2 = $(".banner2");
    var leftCnt = 0;
    var rightCnt = 0;
    if(banner1.length > 1){
        $.each($(".banner1"), function(i) {
            if($(this).hasClass("banner1_Y")){
                $(this).show();
                leftCnt++;
                return false;
            }
        });
    }
    if(leftCnt == 0){
        $(".banner1").eq(0).show();
    }
    if(banner2.length > 1){
        $.each($(".banner2"), function(i) {
            if($(this).hasClass("banner2_Y")){
                $(this).show();
                rightCnt++;
                return false;
            }
        });
    }
    if(rightCnt == 0){
        $(".banner2").eq(0).show();
    }
    $(".mid_banner").show();


window.criteo_q = window.criteo_q || [];
window.criteo_q.push(
        { event: "setAccount", account: 24596 },
        
        { event: "setSiteType", type: "d" },
        //{ event: "viewHome", requiresDOM: "yes"}
        { event: "viewHome"}
);

if ( 'true' == 'false' ) {
    window.onload = function() {
        NetFunnel_Complete();
    };
}
</script>
	<!--  criteo 메인 페이지 트래커 END -->

	<div class="layerArea" id="simpJoinLayer" style="display: none;">
		<div class="layerBg" style="display: block;" tabindex="-1"></div>
		<div class="popwrap w_type_8" id=""
			style="position: absolute; z-index: 201; display: block;"
			tabindex="-1">
			<div class="pop_tltwrap3">
				<h3>더한섬닷컴 회원가입</h3>
			</div>
			<div class="pop_cnt">
				<div class="hpoint">
					<p class="img">
						<img src="/resources/images/popup/join_pop_icon.jpg"
							style="vertical-align: top">
					</p>
					<p class="txt">
						H.Point통합회원 정보로 더한섬닷컴에 회원가입이 가능합니다.<br /> 단, 더한섬닷컴 가입확인을 위해 아래의
						정보로 조회가 진행됩니다.<br /> 동의하시면 회원가입 해주세요.<br /> <span>※ 조회정보
							: 이름, 생년월일, 휴대폰번호</span>
					</p>
					<div class="btnwrap mt30">
						<input class="btn gray" value="더한섬닷컴 가입" type="button"
							style="width: 200px" onclick="simpJoin();" />
					</div>
				</div>
			</div>
			<a href="#" class="btn_close" id="closeLayerPop"
				onclick="layerPopup4('close');"><img
				src="/resources/images/popup/ico_close.png"></a>
		</div>
	</div>

	<!-- 마케팅 수신 팝업 : s -->
	<div class="layerArea" id="marketingAgreeLayer" style="display: none;">
		<div class="layerBg" style="display: block;"></div>
		<div class="popwrap w_type_8"
			style="outline: none; top: 50%; margin-top: -235px;" tabindex="-1">
			<!-- Title1 -->
			<div class="pop_tltwrap3">
				<h3>마케팅 수신 재동의 안내</h3>
			</div>
			<!-- //Title1 -->
			<div class="pop_cnt">
				<div class="hpoint">
					<p class="txt">
						고객님께서는 마케팅 수신 재동의 대상입니다.<br>더한섬닷컴에서 제공되는 서비스에 대한 수신동의 여부를<br>다시
						한번 확인해주세요.<br>선택 하시면 더한섬닷컴에서 진행하는 마케팅 및 이벤트소식을<br>받아보실 수
						있습니다.
					</p>
					<div class="marketing_rcv_box"
						style="overflow: hidden; text-align: center;">
						<!-- marketing_rcv_con -->
						<div class="marketing_rcv_con"
							style="display: inline-block; margin: 0 20px;">
							<input type="checkbox" id="emailchk" name="agree_marketing" /> <label
								for="emailchk">이메일(Email)</label>
						</div>
						<!-- // marketing_rcv_con -->
						<!-- marketing_rcv_con -->
						<div class="marketing_rcv_con"
							style="display: inline-block; margin: 0 20px;">
							<input type="checkbox" id="smschk" name="agree_marketing" /> <label
								for="smschk">SMS</label>
						</div>
						<!-- // marketing_rcv_con -->
					</div>
					<div class="noticeTxt">
						<p>단, 가입 및 주문/결제와 재입고 알림 등에 관련된 이메일과 SMS는 동의와 상관없이 발송됩니다.</p>
					</div>
					<div class="btnwrap mt30">
						<input class="btn gray" value="확인하기" type="button"
							onclick="maketingAgreeAlert();" />
					</div>
				</div>
			</div>
			<!-- btn_close -->
			<a href="#" class="btn_close" id="closeLayerPop"
				onclick="maketingAgreeClose();"><img
				src="/resources/images/popup/ico_close.png"></a>
			<!-- //btn_close -->
		</div>
	</div>
	<!-- 마케팅 수신 팝업 : e -->

	<form id="simpJoinForm" method="post" action=""
		target="simpStart_window">
		<input type="hidden" name="prtnrId" value="D080" /> <input
			type="hidden" name="chnnlId" value="1705" /> <input type="hidden"
			name="ssoMcustNo" id="ssoMcustNo" value="" /> <input type="hidden"
			name="ptcoReqnMdaInf" id="ptcoReqnMdaInf" />
	</form>

	<form id="userHiddenForm" method="post" target="transMember">
		<input type="hidden" name="prtnrReqGb" value="03" /> <input
			type="hidden" name="prtnrId" id="prtnrId" value="" /> <input
			type="hidden" name="chnnlId" id="chnnlId" value="" /> <input
			type="hidden" name="custNm" id="custNm" value="" /> <input
			type="hidden" name="birthDt" id="birthDt" value="" /> <input
			type="hidden" name="mophNo" id="mophNo" value="" /> <input
			type="hidden" name="chId" id="chId" value="" /> <input type="hidden"
			name="custUniqKey" id="custUniqKey" value="" /> <input type="hidden"
			name="email" id="email" value="" /> <input type="hidden"
			name="sexGbCd" id="sexGbCd" value="" /> <input type="hidden"
			name="ci" id="ci" value="" /> <input type="hidden"
			name="ptcoReqnMdaInf" id="ptcoReqnMdaInf" value="" />
	</form>
	<script type="application/ld+json">
    {
     "@context": "http://schema.org",
     "@type": "Organization",
     "name": "thehandsome",
     "url": "http://www.thehandsome.com",
     "sameAs": [
       "https://www.instagram.com/thehandsome_official/",
       "https://www.youtube.com/c/%EB%8D%94%ED%95%9C%EC%84%AC%EB%8B%B7%EC%BB%B4HANDSOME",
       "https://play.google.com/store/apps/details?id=com.handsome.thehandsome",
       "https://apps.apple.com/kr/app/itunes-connect/id1072288949"
     ]
    }
    </script>
	<!-- footerWrap -->

	<script type="text/javascript">
//<![CDATA[ 

$(document).ready(function(){
    var ua = navigator.userAgent.toLowerCase();
    // 익스플로러 브라우저 아닐 때만 인스타 링크버튼 노출
    if((ua.indexOf('trident') == -1) && (ua.indexOf("msie") == -1) ){
        $("#f_insta").show();
    }
});

getNewsList("/ko/magazine");


// 2022.03.29 푸터 공지사항 추가
getFooterNotices("/ko/svcenter");


function moveMobile(){
// 	location.href = location.href.replace("?uiel=Desktop", "") + "?uiel=Mobile";
	location.href = "/ko/?uiel=Mobile";
}


function setLogout(){
    deletecookie("UID");   
    deletecookie("criteoEmail"); 
    deletecookie("memberGb");
    location.href = "/ko/logout";
}

//]]>
</script>

	<div id="footerWrap">
		<div id="topBtn">
			<a href="javascript:void(0);" class="viewTopArea"><img
				src="http://cdn.thehandsome.com/resources/images/common/top_btn.png"
				alt="맨 위로" onclick="GA_Event('공통','퀵버튼','TOP');" /></a>
		</div>
		<div class="footer">
			<!--footer_cnts1 -->
			<div class="footer_cnts1 clearfix">
				<!-- footer_menu-->
				<div class="footer_menu cnts1_left">
					<div class="footer_logo">
						<a href="/ko/main" onclick="GA_Event('공통','로고','하단');"><img
							src="http://cdn.thehandsome.com/resources/images/common/footer_logo_renew.png"
							alt="HANDSOME" /></a>
					</div>
					<div class="footer_link">
						<ul class="clearfix">
							<li><a href="/ko/svcenter/theClubInfo"
								onclick="GA_Event('공통','푸터_메뉴','온라인 멤버십');">온라인 멤버십</a></li>
							<li><a href="/ko/svcenter/memberbenefitguide"
								onclick="GA_Event('공통','푸터_메뉴','한섬 VVIP 혜택');">한섬 VVIP 혜택</a></li>
							<li><a href="/ko/svcenter/pointguide"
								onclick="GA_Event('공통','푸터_메뉴','한섬마일리지 혜택');">한섬마일리지 혜택</a></li>
							<li><a href="/ko/svcenter/couponguide"
								onclick="GA_Event('공통','푸터_메뉴','쿠폰');">쿠폰</a></li>
							<li><a href="/ko/svcenter/asguide"
								onclick="GA_Event('공통','푸터_메뉴','반품&환불안내');">반품&amp;환불안내</a></li>
						</ul>
						<ul class="clearfix">
							<li><a href="/ko/svcenter/submain"
								onclick="GA_Event('공통','푸터_메뉴','고객센터');">고객센터</a></li>
							<li><a href="/ko/svcenter/faq"
								onclick="GA_Event('공통','푸터_메뉴','FAQ');">FAQ</a></li>
							<li><a href="/ko/svcenter/mending"
								onclick="GA_Event('공통','푸터_메뉴','수선진행조회');">수선진행조회</a></li>
						</ul>
						<ul class="clearfix">
							<li><a href="/ko/member/login"
								onclick="GA_Event('공통','푸터_메뉴','로그인');">로그인</a></li>
							<li><a href="/ko/mypage/order/myorders"
								onclick="GA_Event('공통','푸터_메뉴','주문배송조회');">주문배송조회</a></li>
							<li><a href="/ko/mypage/order/myorders"
								onclick="GA_Event('공통','푸터_메뉴','취소/반품');">취소/반품</a></li>
							<li><a href="/ko/mypage/myWish"
								onclick="GA_Event('공통','푸터_메뉴','위시리스트');">위시리스트</a></li>
						</ul>
						<ul class="clearfix">
							<li><a
								href="http://www.handsome.co.kr/ko/company/aboutHandsome.do"
								target="_blank" onclick="GA_Event('공통','푸터_메뉴','회사소개');">회사소개<!-- 회사소개 --></a></li>
							<li><a href="http://www.handsome.co.kr/ko/brand/fashion.do"
								target="_blank" onclick="GA_Event('공통','푸터_메뉴','브랜드소개');">브랜드소개</a></li>
							<li><a
								href="http://www.handsome.co.kr/ko/ir/governance01.do"
								target="_blank" onclick="GA_Event('공통','푸터_메뉴','투자정보');">투자정보</a></li>
							<li><a
								href="https://recruit.ehyundai.com/recruit-info/announcement/list.nhd?pageNo=1&hireGb=01&coCd=HDHAN"
								target="_blank" onclick="GA_Event('공통','푸터_메뉴','채용정보');">채용정보</a></li>
							<li><a
								href="http://www.handsome.co.kr/ko/sustainability/sharedGrowth01.do"
								target="_blank" onclick="GA_Event('공통','푸터_메뉴','동반성장');">동반성장</a></li>
						</ul>
					</div>
				</div>
				<!-- //footer_menu-->
				<div class="footer_apps cnts1_right">
					<ul>
						<li class="loca"><a href="/ko/b/storeInformation"
							onclick="GA_Event('공통','푸터','매장안내');">매장안내</a></li>
						<li class="look"><a href="/ko/magazine/lookbook"
							onclick="GA_Event('공통','푸터','룩북');">룩북</a></li>
						<li class="ico_youtube"><a href="/ko/magazine/youtubeList"
							onclick="GA_Event('공통','푸터_SNS','YOUTUBE');">비디오</a></li>
						<!-- 200330 추가 -->
						<li class="ico_insta" id="f_insta" style="display: none;"><a
							href="https://www.instagram.com/thehandsome_official/"
							target="_blank" onclick="GA_Event('공통','푸터_SNS','INSTAGRAM');">인스타그램</a></li>
						<!-- 200330 추가 -->
					</ul>
					<!--download_app , athome-->
					<div class="cnts1_right_inner">
						<a href="/ko/appDownloadSMS/sendSMSPage"
							onclick="GA_Event('공통','푸터','APP다운로드');"> <img
							src="http://cdn.thehandsome.com/resources/images/common/footer_ico_apps.png"
							alt="APP 다운로드" style="width: 52px; height: 71px;"> <!-- 				        <img src="/resources/images/common/ico_apps_new.png" alt="APP 다운로드" style="width:54px;height:70px;"> -->
							<p>APP 다운로드 &gt;</p>
						</a> <a href="/ko/svcenter/footerAthomeInfo" style="margin-right: 0;"
							onclick="GA_Event('공통','푸터','딜리버리서비스');"> <img
							src="http://cdn.thehandsome.com/pc/footer/footer_athome_car.png"
							alt="딜리버리 서비스" style="width: 85px;"> <!-- 				        <img src="http://cdn.thehandsome.com/pc/footer_athome_car.jpg" alt="딜리버리 서비스" style="width:95px;"> -->
							<p>딜리버리 서비스 &#62;</p>
						</a>
					</div>
					<!--//download_app , athome-->
				</div>
			</div>
			<!--//footer_cnts1 -->
		</div>
		<!--footer_cnts2 -->
		<div class="footer_cnts2 clearfix">
			<div class="footer">
				<div class="cnts2_left">
					<a href="/ko/footer/footerTermBusiness"
						onclick="GA_Event('공통','푸터_CNT','서비스이용약관');">서비스이용약관</a> <a
						href="/ko/footer/footerPrivacy"
						onclick="GA_Event('공통','푸터_CNT','개인정보처리방침');"><strong>개인정보처리방침<!-- 개인정보처리방침 --></strong></a>
					<a href="javascript:void(0);" class="box"
						onclick="javascript:window.open('http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1208126337', 'communicationViewPopup', 'width=750, height=700');GA_Event('공통','푸터_CNT','통신판매사업자정보확인');">통신판매사업자정보확인</a>
					<a
						href="https://mark.inicis.com/mark/escrow_popup.php?mid=handsomep1"
						class="box" onclick="GA_Event('공통','푸터_CNT','에스크로서비스가입확인');">에스크로서비스
						가입 확인</a>
					<p class="top_p">
						<span>(주)한섬</span><span>대표이사 : 김민덕</span><span>서울시 강남구 도산대로
							523 한섬빌딩</span><span>TEL 1800-5700 (유료)</span><span class="bgnone">FAX
							02-6078-2856</span>
					</p>
					<p>
						<span>사업자등록번호 120-81-26337</span><span>통신판매업신고번호 강남 제
							00826호</span><span>개인정보관리책임자 윤인수</span><span class="bgnone">호스팅서비스
							: (주) 한섬</span>
					</p>
					<p class="copyright">COPYRIGHT © 2017 HANDSOME. ALL RIGHT
						RESERVED.</p>
				</div>
				<div class="cnts2_right">
					<div class="related_site clearfix">
						<dl class="global lang_1911">
							<dt>
								<a href="javascript:void(0);" class=""
									onclick="GA_Event('공통','푸터_CNT','LANGUAGE');">LANGUAGE</a>
							</dt>
							<dd style="display: none;">
								<ul>
									<li><a href="javascript:language('ko')"
										onclick="GA_Event('공통','푸터_CNT','LANGUAGE_한국어');">한국어</a></li>
									<li><a href="javascript:language('en')"
										onclick="GA_Event('공통','푸터_CNT','LANGUAGE_ENGLISH');">ENGLISH</a></li>
									<li><a href="javascript:language('zh')"
										onclick="GA_Event('공통','푸터_CNT','LANGUAGE_中文');">中文</a></li>
								</ul>
							</dd>
						</dl>
						<dl class="family">
							<dt>
								<a href="javascript:void(0);"
									onclick="GA_Event('공통','푸터_CNT','FAMILY SITE');">FAMILY
									SITE<!-- FAMILY SITE -->
								</a>
							</dt>
							<dd style="">
								<ul>
									<li class="bold_division1811">쇼핑몰 Site<!-- 쇼핑몰 Site --></li>
									<li><a href="https://www.thehyundai.com/Home.html"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_더현대닷컴');">더현대닷컴<!-- 더현대닷컴 --></a></li>
									<li><a
										href="https://www.hddfs.com/shop/dm/main.do?ptnrChlCd=00003014"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대백화점 면세점');">현대백화점
											면세점<!-- 현대백화점 DUTY FREE -->
									</a></li>
									<li><a href="http://esuper.ehyundai.com/" target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_e수퍼마켓');">e수퍼마켓<!-- e수퍼마켓 --></a></li>
									<li><a href="https://www.hyundaihmall.com/Home.html"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대Hmall');">현대Hmall<!-- 현대 Hmall --></a></li>
									<li><a
										href="http://mall.hyundailivart.co.kr/front/vrStoreList.lv"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대리바트몰');">현대리바트몰<!-- 현대리바트몰 --></a></li>
									<li><a href="http://www.hyundairentalcare.co.kr/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대렌탈케어');">현대렌탈케어<!-- 현대렌탈케어 --></a></li>
									<li><a href="http://www.hfashionmall.com/sfmweb/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_H패션몰');">H패션몰<!-- H패션몰 --></a></li>
									<li><a href="https://www.h-vrstation.com/main"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_VR STATION');">VR
											STATION<!-- VR STATION -->
									</a></li>

									<li class="bold_division1811">관계사 Site<!-- 관계사 Site --></li>
									<li><a href="http://www.ehyundai.com/newPortal/ir/main.do"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대백화점그룹');">현대백화점그룹<!-- 현대백화점 그룹 --></a></li>
									<li><a href="https://www.ehyundai.com/newPortal/index.do"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대백화점');">현대백화점<!-- 현대백화점 --></a></li>
									<li><a href="http://www.hyundaigreenfood.com/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대그린푸드');">현대그린푸드<!-- (주)현대그린푸드 --></a></li>
									<li><a href="https://www.hyundaihmall.com/Home.html"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대홈쇼핑');">현대홈쇼핑<!-- (주)현대홈쇼핑 --></a></li>
									<li><a
										href="http://www.hyundailivart.co.kr/ko/intro/index.lvt"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대리바트');">현대리바트<!-- (주)현대 리바트 --></a></li>
									<li><a href="http://www.hyundaimedia.com/mpp/index.hcn"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대미디어');">현대미디어<!-- 현대 미디어 --></a></li>
									<li><a href="http://www.hyundairentalcare.co.kr/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대렌탈케어');">현대렌탈케어<!-- 현대렌탈케어 --></a></li>
									<li><a href="http://www.hyundaidreamtour.com/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대드림투어');">현대드림투어<!-- 현대드림투어 --></a></li>
									<li><a href="http://www.everdigm.com/" target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_에버다임');">에버다임<!-- 에버다임 --></a></li>
									<li><a href="http://www.cnsfoodsystem.co.kr/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_씨엔에스푸드시스템');">씨엔에스푸드시스템<!-- 씨엔에스푸드시스템 --></a></li>
									<li><a href="http://www.hyundaicatering.co.kr/"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대캐터링시스템');">현대캐터링시스템<!-- 현대캐터링시스템 --></a></li>
									<li><a href="http://www.hyundai-ite.com/index.jsp"
										target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대IT&amp;E');">현대IT&amp;E<!-- 현대IT&amp;E --></a></li>
									<li><a href="http://www.hyundailnc.com/" target="_blank"
										onclick="GA_Event('공통','푸터_CNT','FAMILY SITE_현대L&amp;C');">현대L&amp;C<!-- 현대L&amp;C --></a></li>
								</ul>
							</dd>
						</dl>


					</div>
					<!-- 푸터 공지 추가 220404 -->
					<!-- 공지 -->
					<div id="noticeWrap" class="notice">
						<div class="controls">
							<a href="javascript:void(0);" class="prev">이전</a> <a
								href="javascript:void(0);" class="next">다음</a>
						</div>
						<div class="list">
							<div class="tlt">
								공지
								<!-- 공지 -->
							</div>
							<ul class="list_new">
								<!-- NoticeContent -->
							</ul>
						</div>
					</div>
					<!-- //공지 -->

					<!-- 뉴스 -->
					<div id="newsWrap" class="news">
						<div class="controls">
							<a href="javascript:void(0);" class="prev">이전</a> <a
								href="javascript:void(0);" class="next">다음</a>
						</div>
						<div class="list">
							<div class="tlt">
								뉴스
								<!-- 뉴스 -->
							</div>
							<ul class="list_new">
								<!-- NewsContent -->
							</ul>
						</div>
					</div>
					<!-- //뉴스 -->
					<!-- // 푸터 공지 추가 220404 -->
				</div>
			</div>
		</div>
		<!--//footer_cnts2 -->
	</div>
	<!-- 네이버 애널리틱스 전환페이지 설정 : s -->
	<!-- 네이버 애널리틱스 전환페이지 설정 : e -->
	<form name="accessiblityForm">
		<input type="hidden" id="accesibility_refreshScreenReaderBufferField"
			name="accesibility_refreshScreenReaderBufferField" value="" />
	</form>
	<div id="ariaStatusMsg" class="skip" role="status" aria-relevant="text"
		aria-live="polite"></div>

	<!--loadingbar-->
	<div class="layerBg"></div>
	<!--//loadingbar-->

	<div class="layerArea" id="mapleLayer" style="display: none;">
		<div class="layerBg"></div>
	</div>

	<!-- Google 리마케팅 태그 코드 -->
	<script type="text/javascript">
	/* <![CDATA[ */
	var google_conversion_id = 943253288;
	var google_custom_params = window.google_tag_params;
	var google_remarketing_only = true;
	/* ]]> */
	</script>
	<script type="text/javascript"
		src="//www.googleadservices.com/pagead/conversion.js">
	</script>
	<noscript>
		<div style="display: inline;">
			<img height="1" width="1" style="border-style: none;" alt=""
				src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/943253288/?value=0&amp;guid=ON&amp;script=0" />
		</div>
	</noscript>

	<script type="text/javascript">  
	
	    var virtusizeViewYn = false;
	    
	        virtusizeViewYn = true;
	        
	    if(virtusizeViewYn){
	         
	    }
	</script>

	<input type="hidden" id="apiConfmKey"
		value="U01TX0FVVEgyMDE5MDYxNzE2NDczMzEwODgxNTI=" />

	<!-- GTM 추적코드 추가 -->
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5PCJDFJ"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<!-- Beusable(뷰저블 코드) : s -->
	<script type="text/javascript">
(function(w, d, a){
    w.__beusablerumclient__ = {
        load : function(src){
            var b = d.createElement("script");
            b.src = src; b.async=true; b.type = "text/javascript";
            d.getElementsByTagName("head")[0].appendChild(b);
        }
    };w.__beusablerumclient__.load(a);
})(window, document, "//rum.beusable.net/script/b200506e124944u371/29f6068460");
</script>
	<!-- Beusable(뷰저블 코드) : e -->

	<!-- Braze(브레이즈 스니펫 코드) : s -->
	<script type="text/javascript">
    +function(a,p,P,b,y){a.appboy={};a.appboyQueue=[];for(var s="initialize destroy getDeviceId toggleAppboyLogging setLogger openSession changeUser requestImmediateDataFlush requestFeedRefresh subscribeToFeedUpdates requestContentCardsRefresh subscribeToContentCardsUpdates logCardImpressions logCardClick logCardDismissal logFeedDisplayed logContentCardsDisplayed logInAppMessageImpression logInAppMessageClick logInAppMessageButtonClick logInAppMessageHtmlClick subscribeToNewInAppMessages subscribeToInAppMessage removeSubscription removeAllSubscriptions logCustomEvent logPurchase isPushSupported isPushBlocked isPushGranted isPushPermissionGranted registerAppboyPushMessages unregisterAppboyPushMessages trackLocation stopWebTracking resumeWebTracking wipeData ab ab.DeviceProperties ab.User ab.User.Genders ab.User.NotificationSubscriptionTypes ab.User.prototype.getUserId ab.User.prototype.setFirstName ab.User.prototype.setLastName ab.User.prototype.setEmail ab.User.prototype.setGender ab.User.prototype.setDateOfBirth ab.User.prototype.setCountry ab.User.prototype.setHomeCity ab.User.prototype.setLanguage ab.User.prototype.setEmailNotificationSubscriptionType ab.User.prototype.setPushNotificationSubscriptionType ab.User.prototype.setPhoneNumber ab.User.prototype.setAvatarImageUrl ab.User.prototype.setLastKnownLocation ab.User.prototype.setUserAttribute ab.User.prototype.setCustomUserAttribute ab.User.prototype.addToCustomAttributeArray ab.User.prototype.removeFromCustomAttributeArray ab.User.prototype.incrementCustomUserAttribute ab.User.prototype.addAlias ab.User.prototype.setCustomLocationAttribute ab.InAppMessage ab.InAppMessage.SlideFrom ab.InAppMessage.ClickAction ab.InAppMessage.DismissType ab.InAppMessage.OpenTarget ab.InAppMessage.ImageStyle ab.InAppMessage.TextAlignment ab.InAppMessage.Orientation ab.InAppMessage.CropType ab.InAppMessage.prototype.subscribeToClickedEvent ab.InAppMessage.prototype.subscribeToDismissedEvent ab.InAppMessage.prototype.removeSubscription ab.InAppMessage.prototype.removeAllSubscriptions ab.InAppMessage.prototype.closeMessage ab.InAppMessage.Button ab.InAppMessage.Button.prototype.subscribeToClickedEvent ab.InAppMessage.Button.prototype.removeSubscription ab.InAppMessage.Button.prototype.removeAllSubscriptions ab.SlideUpMessage ab.ModalMessage ab.FullScreenMessage ab.HtmlMessage ab.ControlMessage ab.Feed ab.Feed.prototype.getUnreadCardCount ab.ContentCards ab.ContentCards.prototype.getUnviewedCardCount ab.Card ab.Card.prototype.dismissCard ab.ClassicCard ab.CaptionedImage ab.Banner ab.ControlCard ab.WindowUtils display display.automaticallyShowNewInAppMessages display.showInAppMessage display.showFeed display.destroyFeed display.toggleFeed display.showContentCards display.hideContentCards display.toggleContentCards sharedLib".split(" "),i=0;i<s.length;i++){for(var m=s[i],k=a.appboy,l=m.split("."),j=0;j<l.length-1;j++)k=k[l[j]];k[l[j]]=(new Function("return function "+m.replace(/\./g,"_")+"(){window.appboyQueue.push(arguments); return true}"))()}window.appboy.getUser=function(){return new window.appboy.ab.User};window.appboy.getCachedFeed=function(){return new window.appboy.ab.Feed};window.appboy.getCachedContentCards=function(){return new window.appboy.ab.ContentCards};(y=p.createElement(P)).type='text/javascript';
        y.src='https://js.appboycdn.com/web-sdk/2.7/appboy.min.js';
        y.async=1;(b=p.getElementsByTagName(P)[0]).parentNode.insertBefore(y,b)
    }(window,document,'script');

    try {
        appboy.initialize('26020c09-35b8-44d0-b579-7e31f4c82527',{baseUrl:'https://sdk.iad-06.braze.com/api/v3'});
        appboy.display.automaticallyShowNewInAppMessages();
        appboy.openSession();
    } catch (e) {
        console.log(e);
    }
</script>
	<!-- Braze(브레이즈 스니펫 코드) : e -->
	<script type="text/javascript">
</script>
	<!-- 네이버 애널리틱스 공통 적용 : s -->
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript">
	if (!wcs_add) var wcs_add = {};
	wcs_add["wa"] = "5c81384bbc8d5c";
	if (window.wcs) {
		wcs_do();
	}
</script>
	<!-- 네이버 애널리틱스 공통 적용 : e -->
	<!-- 네이버 애널리틱스 공통 적용(프리미엄로그분석) : s -->
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript"> 
    if (!wcs_add)
    var wcs_add = {};
    wcs_add["wa"] = "s_56892c2154ef";
    
    if (!_nasa)
    var _nasa = {};
    wcs.inflow("thehandsome.com");
    wcs_do(_nasa);
</script>
	<!-- 네이버 애널리틱스 공통 적용(프리미엄로그분석) : e -->
	<!-- Enliple Tracker Start -->
	<script type="text/javascript">
	try{
	    (function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
		enp('create', 'common', 'thehandsome', { device: 'W' });  // W:웹, M: 모바일, B: 반응형
		enp('send', 'common', 'thehandsome');
	} catch(e) {
	    console.log(e);
	}
</script>
	<!-- Enliple Tracker End -->
</body>
<!-- AceCounter Log Gathering Script V.7.5.2013010701 -->
<script type='test/javascript'>
	var _AceGID=(function(){var Inf=['dgc17.acecounter.com','8080','AP6F40149814536','CW','0','NaPm,Ncisy','ALL','0']; var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src =( location.protocol=="https:"?"https://"+Inf[0]:"http://"+Inf[0]+":"+Inf[1]) +'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	var _AceCounter=(function(){var G=_AceGID;if(G.o!=0){var _A=G.val[G.o-1];var _G=( _A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];	var _U=( _A[5]).replace(/\,/g,'_');var _S=((['<scr','ipt','type="text/javascr','ipt"></scr','ipt>']).join('')).replace('tt','t src="'+location.protocol+ '//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime())+'" t');document.writeln(_S); return _S;} })();
</script>
<noscript>
	<img src='http://dgc17.acecounter.com:8080/?uid=AP6F40149814536&je=n&'
		border='0' width='0' height='0' alt=''>
</noscript>
<!-- AceCounter Log Gathering Script End -->

<!-- adinsight 공통스크립트 start -->
<script type="text/javascript">
var TRS_AIDX = 11864;
var TRS_PROTOCOL = document.location.protocol;
document.writeln();
var TRS_URL = TRS_PROTOCOL + '//' + ((TRS_PROTOCOL=='https:')?'analysis.adinsight.co.kr':'adlog.adinsight.co.kr') +  '/emnet/trs_esc.js';
document.writeln("<scr"+"ipt language='javascript' src='" + TRS_URL + "'></scr"+"ipt>");
</script>
<!-- adinsight 공통스크립트 end -->


</html>