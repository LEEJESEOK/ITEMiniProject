<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/products.css" media="all" />
<link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/contents.css" media="all" />

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
	
	<!-- end headerWrap -->
	
<div id="bodyWrap" class="item_detail">
        <div id="oneEventLayer"></div>
        <div class="adaptive_wrap">
            <div class="clearfix prd_detail1905" id="clearfix">
		<div class="clearfix image_view3">
            <!-- 2021.08.18 동영상 재생 수정, 상품 imageDivisionCode에 VOD가 있는 경우 동영상 url 세팅 -->
            <div class="image_view1" id="image_view1">
                <div class="item_visual" id="imageDiv" style="margin-top: 20px;">
                
	                    <ul>
	                        <li><img src="${product_detail.pimg3}" class="respon_image" alt="" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
	                        <li><img src="${product_detail.pimg1}" class="respon_image" alt="" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>
	                        <li><img src="${product_detail.pimg2}" class="respon_image" alt="" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img1.jpg'"></li>	                     
	                    </ul>
                   
                </div>
            </div>          
            <!--동영상 삽입 180710-->
            <!--//동영상 삽입 180710-->
            <!--  2021.08.18 동영상 재생 영역  -->
    </div>

    
<div class="item_detail_info float_right" id="contentDiv" style="margin-top: 20px; top: 0px; left: 676px;">
	<div class="info">
		<div class="info_sect">
           		
				<h4 class="item_name">
					<div class="brand-name">
						<a href="" onclick="">${product_detail.bname}</a>
					</div>
					<span class="name ko_fir_spel">
						${product_detail.pname}<input type="hidden" id="brandName" value="">
						<input type="hidden" id="productName" value="${product_detail.pname}">
						<input type="hidden" id="productCode" value="">
					</span>
				</h4>		
				<p class="price">
					<span>₩ <fmt:formatNumber value="${product_detail.pprice}" pattern="#,###"/></span>
					<input type="hidden" id="productPrice" value="${product_detail.pprice}">
				</p>
				<div class="prod-detail-con-box">					
		       		<strong class="number-code">상품품번 : <span>MAN${product_detail.pid}</span></strong>     
		       		<div class="round-style">
		            	<p>"${product_detail.pdetail}"</p>
		            </div>             
	           </div>
		</div>
        <div class="info_sect">
			<ul class="point_delivery">
				<li>
					<span class="title">한섬마일리지</span>
					<span class="txt"><fmt:formatNumber value="${product_detail.pprice * 0.05}" pattern="#,###"/>&nbsp;M&nbsp;(5%)</span>
				</li>
				
				<li>
                    <span class="title">H.Point</span>
                        <span class="txt"><fmt:formatNumber value="${product_detail.pprice * 0.01}" pattern="#,###"/>&nbsp;P&nbsp;(0.1%)</span>

                </li>
				<li>
					<span class="title">배송비</span>
					<span class="txt">30,000원 이상 무료배송 (실결제 기준)</span>
                </li>
			</ul>
		</div>
		<div class="info_sect">
			<ul class="color_size_qty">
				<li>
					<span class="title">색상</span>
					<div class="txt">
						<ul class="color_chip clearfix">
							<c:forEach items="${product_color}" var="productColor" varStatus="status">            		 
								<li id="CS2C3HCO018LMZ_NA_100">
									<a href="javascript:fn_detailProductAjax('CS2C3HCO018LMZ_NA_FR')" onclick="">${productColor.ccolorname}</a>
								</li>
							</c:forEach>										
						</ul>
					</div>
					<span class="cl_name" id="colorNameContent"></span>
				</li>
				<li>
				    <span class="title">사이즈<!-- 사이즈 --></span>
					<span class="txt">


<ul class="size_chip clearfix sizeChipKo1901">
	<c:forEach items="${product_size}" var="productSize" varStatus="status">            		 
		<li id="CS2C3HCO018LMZ_NA_100">
			<a href="javascript:fn_detailProductAjax('CS2C3HCO018LMZ_NA_FR')" onclick="">${productSize.psize}</a>
		</li>	
	</c:forEach>										
</ul>
					</span>
					
					<li id="CS2C3HCO018LMZ_NA_100">
					<span class="title">평점<!-- 사이즈 --></span>
					<span class="txt">
			<a href="javascript:fn_detailProductAjax('CS2C3HCO018LMZ_NA_FR')">${product_detail.paveragerate}</a>
					</li>
                    
				
			</ul>
		</div>
		<div class="total_price clearfix">
			<div class="title float_left" style="width:auto;">총 합계</div>
			<div class="pirce float_right">
			<span id="sumPrice">₩ <fmt:formatNumber value="${product_detail.pprice}" pattern="#,###"/></span>
			</div>
		</div>
		<!-- st_receipt_wrap -->
			<!-- //st_receipt_wrap -->
			
			<!-- st_store_wrap -->
			<div class="st_store_wrap1807" id="storePickupChoice" style="display:none;">
				<div class="st_store">
					<dl>
						<dt>선택 매장</dt>
						<dd>
							<p id="storePickupChoiceName"></p>
							<p id="storePickupChoiceAddress"></p>
							<p id="storePickupChoiceTelephone"></p>
						</dd>
						<dt>수령 신청일</dt>
						<dd>
							<p id="storePickupChoiceDate"></p>
						</dd>
					</dl>
					<a href="javascript:fn_popupStorePickUp();" class="btn">매장변경</a>
				</div>
				<ul class="bul_sty01_li">
					<li>매장 수령 시 상품 사이즈 및 컬러 변경은 불가합니다.</li>
					<li>수령 가능 확정 일은 주문 완료 후, 수령 교환권을 SMS로 안내 드립니다.</li>
					<li>수령 확정일로부터 <span style="color:#fe4242;">1일 경과 후 상품을 수령하지 않으시면 자동 취소</span> 됩니다.</li>
				</ul>
			</div>
			<!-- //st_store_wrap -->
		<div class="btnwrap clearfix" style="position: absolute; width: 473px; margin-top: -1.562px; margin-bottom: 265.562px;">
            
            <!--190508 추가 -->
            <div class="toast_popup_pre_order1905"><!-- 토스트팝업 190507 -->
                <p>예약 주문이 가능한 옵션(컬러/사이즈)가 있습니다. <br>옵션 선택 후 배송 예정일을 확인해 주세요.</p>
                <span class="arr">위치아이콘</span>
            </div>
            <!--//190508 추가 -->
            
			<form id="addToCartForm" name="addToCartForm" action="/ko/HANDSOME/BEAUTY/Body-Hair-Care/Hand%C2%B7BodyLotion-Cream-Oil/%5BMAISON-LOUIS-MARIE%5D-NO-04-%EB%B6%80%EC%95%84-%EB%93%9C-%EB%B0%9C%EB%A6%B0%EC%BD%94%ED%8A%B8-%EB%B0%94%EB%94%94-%EB%A1%9C%EC%85%98-237ml/p/CS2C3HCO018LMZ_NA?categoryCode=be031" method="post"><input type="hidden" maxlength="3" size="1" name="qty" class="qty">
				<input type="hidden" name="productCodePost" value="CS2C3HCO018LMZ_NA">
				<input type="hidden" id="productCodeType" name="productCodeType" value="ApparelStyleVariantProduct">
				<input type="hidden" id="stockCnt" value="0">
				<input type="hidden" name="storeId" id="storeId" value="">
				<input type="hidden" name="storePickupDate" id="storePickupDate" value="">
				<input type="hidden" name="workOrder" id="workOrder" value="">
				<input type="hidden" name="recommendProduct" id="recommendProduct" value="">
				<input type="hidden" name="deliveryKind" id="deliveryKind" value="">
				<input type="hidden" name="streetname" id="streetname" value="">
				<input type="hidden" name="streetnumber" id="streetnumber" value="">
				<input type="hidden" name="postalcode" id="postalcode" value="">
				<input type="hidden" name="quickStreetname" id="quickStreetname" value="">
	            <input type="hidden" name="quickStreetnumber" id="quickStreetnumber" value="">
	            <input type="hidden" name="quickPostalcode" id="quickPostalcode" value="">
				<input type="hidden" name="fourpmList" id="fourpmList">
				<input type="hidden" name="athomeList" id="athomeList">
				<input type="hidden" name="pickupList" id="pickupList">
				<input type="hidden" name="quickList" id="quickList">
				<input type="hidden" name="buyNowYn" id="buyNowYn" value="false">
				<input type="button" value="쇼핑백 담기" class="btn cart1803 float_left ml0" id="addToCartButton" onclick="addToCart();">
			<div>
				<input type="hidden" name="CSRFToken" value="05387405-31e5-40d1-809e-c6300ba9b88c">
			</div>
				</form>
				<input type="button" value="바로주문" class="btn order float_right mr0" id="addToCartBuyNowButton" onclick="GA_Event('상품_상세','하단 고정 버튼','바로주문');addToCart(true);">   
	     </div>
		
	
		<!--상품평 btn-->
        <div class="popup_customer_review1807" id="customerReview">
        	<a href="/review/productReview?pId=${product_detail.pid}&pageNum=1&amount=10" id='getReviewListBtn'>상품평(<span id="customerReviewCnt">0</span>)</a>
                <script>
                 var modal = $(".modal");
                 var modalInputContent = modal.find("input[name='reply']");
            	 var modalInputReplyer = modal.find("input[name='replyer']");
            	 var modalInputReplyDate = modal.find("input[name='replyDate']");
            	 var modalModBtn = $("#modalModBtn"); //버튼 찾기
            	 var modalRemoveBtn = $("#modalRemoveBtn");
            	 var modalRegisterBtn = $("#modalRegisterBtn");	 
                 
                </script>
                <div class="star_score1807" id="prodTotalStarScoreWrapper" style="display: none;">
                    <span class="cmt_star">
                       <!-- 별점에 따라 class명 변경 (star1, star2 ,star3, star4, star5) -->
                        <span class="cmt_per" id="prodTotalStarScore">별점</span>
                    </span>
                </div>
            </a>
        </div>
        <!--//상품평 btn-->
        
        </dl>
	</div>
	
	<div class="clearfix mt30">
		<div class="btnwrap float_left">
			<a href="${contextPath}/qnaproduct/list?pageNum=1&amount=5&pid=${product_detail.pid}" class="btn arrow mr0" onclick="">Q&amp;A(<span class="data" id="productQnACnt">${qna_total} </span>)</a><!-- 큐앤에이 팝업 버튼 -->
			</div>
		<div class="btnwrap float_left" style="width: 100px;">
			<a href="${contextPath}/review/list?pageNum=1&amount=5&pid=${product_detail.pid}" class="btn arrow mr1" onclick="">상품평(<span class="data" id="productboardCnt">${review_total}</span>)</a><!-- 상품평 팝업 버튼 -->
			</div>	
		<div class="float_right">
<!-- AddToAny BEGIN -->
<div class="a2a_kit a2a_kit_size_32 a2a_default_style" style="line-height: 32px;">
<a class="a2a_button_facebook" onclick="GA_Event('상품_상세','공유_SNS','FACEBOOK');" target="_blank" href="/#facebook" rel="nofollow noopener"><span class="a2a_svg a2a_s__default a2a_s_facebook" style="background-color: rgb(24, 119, 242);"><svg focusable="false" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"><path fill="#FFF" d="M17.78 27.5V17.008h3.522l.527-4.09h-4.05v-2.61c0-1.182.33-1.99 2.023-1.99h2.166V4.66c-.375-.05-1.66-.16-3.155-.16-3.123 0-5.26 1.905-5.26 5.405v3.016h-3.53v4.09h3.53V27.5h4.223z"></path></svg></span><span class="a2a_label">Facebook</span></a>
<a class="a2a_button_twitter" onclick="GA_Event('상품_상세','공유_SNS','TWITTER');" target="_blank" href="/#twitter" rel="nofollow noopener"><span class="a2a_svg a2a_s__default a2a_s_twitter" style="background-color: rgb(29, 155, 240);"><svg focusable="false" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"><path fill="#FFF" d="M28 8.557a9.913 9.913 0 01-2.828.775 4.93 4.93 0 002.166-2.725 9.738 9.738 0 01-3.13 1.194 4.92 4.92 0 00-3.593-1.55 4.924 4.924 0 00-4.794 6.049c-4.09-.21-7.72-2.17-10.15-5.15a4.942 4.942 0 00-.665 2.477c0 1.71.87 3.214 2.19 4.1a4.968 4.968 0 01-2.23-.616v.06c0 2.39 1.7 4.38 3.952 4.83-.414.115-.85.174-1.297.174-.318 0-.626-.03-.928-.086a4.935 4.935 0 004.6 3.42 9.893 9.893 0 01-6.114 2.107c-.398 0-.79-.023-1.175-.068a13.953 13.953 0 007.55 2.213c9.056 0 14.01-7.507 14.01-14.013 0-.213-.005-.426-.015-.637.96-.695 1.795-1.56 2.455-2.55z"></path></svg></span><span class="a2a_label">Twitter</span></a>
<a href="javascript:fnSharePin(&quot;http://www.thehandsome.com/ko/HANDSOME/BEAUTY/Body-Hair-Care/Hand%C2%B7BodyLotion-Cream-Oil/%5BMAISON-LOUIS-MARIE%5D-NO-04-%EB%B6%80%EC%95%84-%EB%93%9C-%EB%B0%9C%EB%A6%B0%EC%BD%94%ED%8A%B8-%EB%B0%94%EB%94%94-%EB%A1%9C%EC%85%98-237ml/p/CS2C3HCO018LMZ_NA&quot;);" class="pinterest" onclick="GA_Event('상품_상세','공유_SNS','PRINTEREST');"></a>
<input type="hidden" id="url" value="http://www.thehandsome.com/ko/HANDSOME/BEAUTY/Body-Hair-Care/Hand%C2%B7BodyLotion-Cream-Oil/%5BMAISON-LOUIS-MARIE%5D-NO-04-%EB%B6%80%EC%95%84-%EB%93%9C-%EB%B0%9C%EB%A6%B0%EC%BD%94%ED%8A%B8-%EB%B0%94%EB%94%94-%EB%A1%9C%EC%85%98-237ml/p/CS2C3HCO018LMZ_NA">
<div style="clear: both;"></div></div>


<div class="popwrap w_type_4" id="productQnADiv" style="top: 715px; position: absolute; z-index: 101; display: none;">

	<div class="pop_tltwrap2 pb0">
		<h3>Q&amp;A</h3>
	</div>
	<div class="pop_cnt evaluation_list">
		<a href="#;" class="btn_evaluation" id="productQnAWrite">상품문의하기</a>					
		<div class="clearfix">
			<table class="pop_tbl_ltype1">
				<caption>Q&amp;A</caption>
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">Q&amp;A</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
					</tr>
				</thead>
				<tbody><tr><td colspan="4" class="no_data">등록된 Q&amp;A가 없습니다.<br>이 상품에 대한 첫 번재 Q&amp;A 글을 작성해주세요~</td></tr></tbody>
			</table>
		</div>
		<!-- paging -->
		<div class="paging mt30" id="qnAPagingDiv"><a class="prev2" href="javascript:void(0);">처음 페이지로 이동</a><a href="javascript:void(0);" class="prev">이전 페이지로 이동</a><span class="num"><a href="javascript:void(0);" class="pageBtn" pagenum="1">1</a></span><a href="javascript:void(0);" class="next">다음 페이지로 이동</a><a href="javascript:void(0);" class="next2">마지막 페이지로 이동</a></div>
		<!-- //paging -->
	</div>
	<a href="javascript:void(0);" class="btn_close"><img src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
</div>

<!-- QnA 게시판 자바 스크립트!!!!!!!!!!!!!! -->
<script>
	$('#productQnACnt').on('click', function(){
		
		$.ajax({
			url : "/review/productReview",
			type : "GET",
			data: {
            },
            beforeSend: function () {
                $.loading(true);
            },
            success: function (data) {
                $.modal(data, 'l'); //modal창 호출
            },
            complete: function () {
                $.loading(false);
            },
            error: function(e) {
                // TODO 에러 화면
            }
        });			
	});
	
	$.modal = function (modalContent, size) {

	    $('#modal').remove();

	    var html = '';
	    html += '<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">';
	    html += '	<div class="modal-dialog';
	    if(size=='l')  html += ' modal-lg';
	    if(size=='s')  html += ' modal-sm';
	    html += '" role="document">';
	    html += '		<div class="modal-content">';
	    html += modalContent;
	    html += '		</div>';
	    html += '	</div>';
	    html += '</div>';

	    $('#page-wrapper').append(html);

	    $('#modal').modal({backdrop: 'static'}); // 모달 배경 눌러서 닫히는 동작 막음

	    $('#modal').on('hidden.bs.modal', function (e) {
	        $('#modal').remove();
	    });
	};

	$.closeModal = function(fnCallback, param1, param2) {
	    $('#modal').on('hidden.bs.modal', function (e) {
	        $('#modal').remove();
	        if(fnCallback) {
	            fnCallback(param1, param2);
	        }
	    });
	    $('#modal').modal('hide');
	};
</script>
<!-- //QnA 게시판 자바 스크립트!!!!!!!!!!!!!! -->


<div class="popwrap w_type_3" id="productQnAWriteDiv" style="display:none;">
	<div class="pop_tltwrap2">
		<h3>상품문의하기</h3>
	</div>
	<div class="pop_cnt evaluation_write">
		<form id="productQnAForm" name="productQnAForm" action="/ko/HANDSOME/BEAUTY/Body-Hair-Care/Hand%C2%B7BodyLotion-Cream-Oil/%5BMAISON-LOUIS-MARIE%5D-NO-04-%EB%B6%80%EC%95%84-%EB%93%9C-%EB%B0%9C%EB%A6%B0%EC%BD%94%ED%8A%B8-%EB%B0%94%EB%94%94-%EB%A1%9C%EC%85%98-237ml/p/CS2C3HCO018LMZ_NA?categoryCode=be031" method="post" enctype="multipart/form-data"><input type="hidden" id="productCode" name="productCode">
			<input type="hidden" id="productQnaCode" name="productQnaCode">
			<input type="hidden" id="delAttach" name="delAttach" value="N">
			<fieldset>
				<legend>상품문의하기</legend>
				<div class="tblwrap">
					<p class="reqd_txt float_right"><strong class="reqd">*</strong> 표시는 필수항목입니다.</p>
					<table class="tbl_wtype1">
						<caption>상품문의하기 입력항목</caption>
						<colgroup>
							<col width="140px">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><strong class="reqd">*</strong><label for="inquiryTitle">문의제목</label></th>
								<td>
									<input type="text" id="inquiryTitle" name="inquiryTitle" title="input" style="width:100%">
								</td>
							</tr>
							<tr>
								<th scope="row"><strong class="reqd">*</strong><label for="inquiryContents">문의내용</label><span class="com_txt_p">(300자 이하)</span></th>
								<td>
									<textarea name="inquiryContents" id="inquiryContents" cols="30" rows="5" style="width:98%;height:200px"></textarea>
								</td>
							</tr>
							<tr>
								<th scope="row" class="th_space"><label for="file">파일 첨부하기</label></th>
								<td>
									<!-- File upload -->
									<div class="file_upload">
										<input type="text" id="textQnAFile" class="text" title="파일찾기" readonly="readonly" name="fileText">
										<a href="javascript:void(0);" id="delQnAFile">
											<img src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png" alt="파일삭제">
										</a>
										<div class="upload_btn">
											<label for="qnaFile"><button type="button" id="uploadFile" class="img_upload" title="파일찾기"><span>파일찾기</span></button></label>
											<input type="file" id="qnaFile" name="uploadFile" class="btn add_s" title="파일찾기">
										</div>
									</div>
									<!-- //File upload -->
									<p class="txt_guide">10MB 미만의 jpg,gif,png 파일만 첨부하실 수 있습니다.</p>
								</td>
							</tr>
							<tr>
								<th scope="row" class="th_space">
									<label for="inquiryMobileNo2">SMS 알림받기</label>
								</th>
								<td>
									<div style="position:relative;">
										<input type="hidden" id="smsMobileNo" name="smsMobileNo">
										<select id="inquiryMobileNo1" title="휴대폰 번호 앞자리" style="width:80px; margin-top:0; vertical-align:middle; padding: 3px 8px 3px 8px;">
											<option value="010" selected="selected">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
										</select>
										<div class="form_hyphen">-</div>
										<input type="text" id="inquiryMobileNo2" name="inquiryMobileNo2" title="휴대폰 번호 가운데자리" style="width:80px;" maxlength="4">
										<div class="form_hyphen">-</div>
										<input type="text" id="inquiryMobileNo3" name="inquiryMobileNo3" title="휴대폰 번호 뒷자리" style="width:80px;" maxlength="4">
										<span class="sms_alm_2006_chk" style="display: block; position:absolute; top:3px; right:14px;">
											<input type="hidden" id="smsNoticeYN" name="smsNoticeYN" value="N">
											<input type="checkbox" id="inquirySmsNoticeYn" name="inquirySmsNoticeYn" style="margin-top:1px;">
											<label for="inquirySmsNoticeYn">SMS 알람고지</label>
										</span>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row">
									<label for="inquiryEmailAddress"><strong class="reqd">*</strong><label for="inquiryMobileNo2">이메일 답변받기</label></label>
								</th>
								<td>
									<input type="hidden" id="replyToEmail" name="replyToEmail">
									<input type="text" id="inquiryEmailAddress" name="inquiryEmailAddress" title="이메일아이디" style="width:120px;">
									<span class="andmail">@</span>
									<input type="text" id="inquiryEmailDomain" name="inquiryEmailDomain" title="이메일계정 입력란" style="width:120px;">
									<select id="inquiryEmailSel" title="이메일계정" style="width:140px; padding: 3px 8px 3px 8px;">
										<option value="" selected="selected">직접입력</option>
										<option value="naver.com">naver.com</option>
										<option value="daum.net">daum.net</option>
										<option value="gmail.com">gmail.com</option>
										<option value="yahoo.co.kr">yahoo.co.kr</option>
										<option value="lycos.co.kr">lycos.co.kr</option>
										<option value="nate.com">nate.com</option>
										<option value="empas.com">empas.com</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="msn.com">msn.com</option>
										<option value="hanmir.com">hanmir.com</option>
										<option value="chol.net">chol.net</option>
										<option value="korea.com">korea.com</option>
										<option value="netsgo.com">netsgo.com</option>
										<option value="dreamwiz.com">dreamwiz.com</option>
										<option value="hanafos.com">hanafos.com</option>
										<option value="freechal.com">freechal.com</option>
										<option value="hitel.net">hitel.net</option>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<p class="guide_txt clearfix" style="border-top:0;">
					<span class="float_left"><strong>상품에 관한 배송, 교환, 취소 등의 자세한 문의사항은 고객센터를 이용해 주시기 바랍니다.</strong></span>
					<span class="float_right">
						<input type="checkbox" name="securitySentenceYn" id="securitySentenceYn" value="Y"> <label for="securitySentenceYn">비밀글 설정</label>
					</span>
				</p>
				<div class="btnwrap mt40">
					<input type="button" id="qnaCancle" value="취소하기" class="btn wt">
					<input type="button" id="qnaWriteSend" value="등록하기" class="btn gray mr0">
				</div>
			</fieldset>
		<div>
<input type="hidden" name="CSRFToken" value="05387405-31e5-40d1-809e-c6300ba9b88c">
</div></form></div>
	<a href="javascript:void(0);" class="btn_close"><img src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png" alt="닫기"></a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>


