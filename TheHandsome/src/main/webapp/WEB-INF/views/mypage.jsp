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
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/contents.css?20220221" media="all">
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
	<script type="text/javascript">
/*<![CDATA[*/
	var session = [${session.ssesion_mid}]
	
	console.log(session);
/*]]*/
	</script>
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

	<!-- bodyWrap -->
	<div id="bodyWrap">
		<h3 class="cnts_title">
			<span id="menuTitle">마이페이지</span>
		</h3>
		<div class=""
			style="position: relative; width: 834px; height: 0; display: block; left: 50%; margin-left: -338px;">
			<div class="delch_box tooltip1907" id="store_delbox"
				style="display: none;">
				<span class="arr">위치아이콘</span> 작성 가능한 상품평 확인하시고,<br> 상품평 작성해서
				추가 마일리지 적립하세요.
			</div>
		</div>
		<div class="sub_container">
			<!-- lnb -->
			<div class="lnb_wrap">
				<h4>
					<a href="${contextPath}/mypage">마이페이지</a>
				</h4>
				<div class="lnb">
					<dl>
						<dt>나의 정보관리</dt>
						<dd>
							<a href="${contextPath}/mypage/personInfomationChangePWCheck">
								개인정보 변경/탈퇴</a>
						</dd>
					</dl>
				</div>
				<!-- ph_guide -->
				<div class="ph_guide">
					<p class="tlt">고객센터 운영 안내</p>
					<p class="phone">
						1800-5700<span style="color: #c69c6d;" class="txt">(유료)</span>
					</p>
					<p class="txt">
						평일(월~금)<br>am 09:00 ~ pm 18:00<span>토/일, 공휴일 휴무</span>
					</p>
					<a href="mailto:shophelp@thehandsome.com">shophelp<br>@thehandsome.com
					</a>
				</div>
				<!-- //ph_guide -->
			</div>
			<!-- //lnb -->
			<!-- cnts -->
			<div class="sub_cnts">
				<script type="text/javascript">
//<![CDATA[ 
$(document).ready(function(){
    //마스킹 처리
    $(".ico_grade").html(maskingName($(".ico_grade").html()));
    
	$(".btn_close").on("click", function(){//팝업 닫기
        hideProductLayer();
        $(".popwrap").hide();
    });
	
	
	$(function(){ // 상품평 오른쪽 툴팁
		$(".point_wrap .point.review .tlt").mouseover(function(){
			 $("#store_delbox").css("display","block");
		});
		$(".point_wrap .point.review .tlt").mouseout(function(){
			 $("#store_delbox").css("display","none");
		});
	});

	$(document).on('click','.evaluation_write1905 .select_group',function(){//옵션선택박스 열기
		if(!$(this).hasClass('open')){
			$('.opt_box1905').stop().slideDown('fast');
			$(this).addClass('open');
			$(this).find('.transparent_mask1905').stop().show('fast');
		}else{
			$('.opt_box1905').stop().slideUp('fast');
			$(this).removeClass('open');
			$(this).find('.transparent_mask1905').stop().hide('fast');
		}
	});
	$(document).on('mouseenter focus','.opt_box1905 li',function(){
		$(this).addClass('active');
	});
	$(document).on('mouseleave blur','.opt_box1905 li',function(){
		$(this).removeClass('active');
	});
	
    
    $("#menuTitle").text("마이페이지");
    
    dateData();
    
    function dateData(){
        var today = new Date();
        var endDate = today.format("yyyy-MM-dd");
        $('#eterm').val(endDate);
        var startDate = today;
        startDate.setMonth(today.getMonth()-1);
        startDate = startDate.format("yyyy-MM-dd");
        $('#sterm').val(startDate);
    };
    
    var orderList = new BoardListController('orderSearchForm', '#listBody', '.paging', 5);
    orderList.setRowHtml = function(results){
        var rows = "";
        $.each(results, function(){
            var orderThis = this;
            
            var date = new Date(this.placed).format("yyyy.MM.dd");
            var listTag = '';
            
            if(orderThis.egiftCardOrderYn == true) {
                listTag = '<tr class="al_middle e-gift">';
            } else {
                listTag = '<tr class="al_middle">';
            }
            
            listTag +=  '<td rowspan="'+this.entries.length+'" class="frt"><p class="num">'+this.code+'</p>';
            
            listTag +=  '<span class="sum_date">('+this.orderCreateDate+')</span>';
            listTag +=  '<a href="${contextPath}/mypage/order/myorderdetail?code='+this.code+'" class="btn_view" >상세보기</a>'; //상세보기
            
            var i = 1;
            
            var entryTag = "";
            var addrModifyAvailYn = true;
            var entrieslength = this.entries.length;
            
            var firstEntry = 0;
            var isFirstCheck = true;
            
            var freeGiftList = this.freeGiftList;
            $.each(this.entries, function(){
                var searchDeliveryTemp = "";
                /* 2017.05.17, HSLee, 예약주문 안내문구 출력 [START] */
                var reOrderInfoPrintYn = (this.reOrderYn && (this.orderStatus.code=="PAYMENT_CAPTURED" || this.orderStatus.code=="SHIPPING_PREPARATION" || this.orderStatus.code=="DEPOSIT_WAIT")); // 예약주문관련 안내메시지 노출 여부
                var reOrderCompleteYn = (this.reOrderYn && (this.orderStatus.code=="PAYMENT_CAPTURED")); // 예약주문완료 주문상태
                var reserveSaleYn = this.reOrderYn; // 예약판매 표기용 변수 별도 생성
                
                if(this.orderStatus==null){
                    $.extend(this,{"orderStatus":{"code":""},"orderStatusName":""});
                }
                
                var productImageUrl = "";
                if(this.product.productImages!=null){
                    $.each(this.product.productImages, function(){
                        if(orderThis.egiftCardOrderYn == true) {
                            if(this.imageDivisionCode.code=='T01'){
                                productImageUrl = this.image.url;
                            }
                        } else {
                            if(this.imageDivisionCode.code=='S01'){
                                productImageUrl = this.image.url;
                            }
                        }
                    });
                }
                
                if(i++!=1){
                    entryTag += '<tr class="al_middle">';
                }
                
                entryTag += '<td>';
                entryTag += '<div class="pt_list_all">                                                                         ';
                
                if(orderThis.egiftCardOrderYn == true) {
                    entryTag += '   <a href="#;"  style="pointer-events: none;" ><img src="'+productImageUrl+'" alt="상품 이미지"></a>    ';
                    entryTag += '   <div class="tlt_wrap">                                                                        ';
                    entryTag += '       <a href="#;"  style="pointer-events: none;" class="basket_tlt" >                                                           ';
                } else {
                    entryTag += '   <a href="${contextPath}/p/'+this.product.code+'" ><img src="'+productImageUrl+'" alt="상품 이미지"></a>    ';
                    entryTag += '   <div class="tlt_wrap">                                                                        ';
                    entryTag += '       <a href="${contextPath}/p/'+this.product.code+'" class="basket_tlt" >                                                           ';
                    entryTag += '           <span class="tlt">['+this.product.brandName+']</span>';
                }
                
                if(reserveSaleYn){
                    entryTag += '           <span class="sb_tlt"><b>[예약판매]</b> '+this.product.name+'</span>';
                } else {
                    entryTag += '           <span class="sb_tlt">'+this.product.name+'</span>';
                }
                
                entryTag += '       </a>';
                
                var patr = "";
                if(orderThis.egiftCardOrderYn != true) {
	                var color = this.product.baseOptions[1].selected.erpColorName;
	                if(color!=null){
	                    patr +='<p class="color_op">color : '+color;
	                }
	                
	                var size = this.product.baseOptions[0].selected.variantOptionQualifiers[2].value;
	                
	                if(size!=null){
	                    if(patr==""){
	                        patr +='<p class="color_op">';
	                    }else{
	                        patr +='  <span class="and_line">/</span> ';
	                    }
	                    
	                    patr += ' size : '+size;
	                }
	                
	                if(patr!=""){
	                    patr += '</p>';
	                }
                }
                
                entryTag += patr;
                
                if (typeof freeGiftList != "undefined" && freeGiftList.length > 0 && this.freeGiftCommentYN) {
                    var commentShowYn = true;
                    
                    
                    if (this.orderStatus !=null && this.orderStatus.code == "CANCELLED") {
                        commentShowYn = false;
                    }
                    
                	if (this.returnStatus != null && this.returnStatus.code != 'RETURN_CANCEL') {
                	    commentShowYn = false;
                	}
                	
                	if (commentShowYn) {
                	    entryTag+= '<p class="guide_comment2">※ 사은품 안내 사항은 ‘주문상세’를 확인해주세요.</p>';                	    
                	}
                }
                
                if (reOrderInfoPrintYn) {
					var dpDate = this.deliveryPlanDate.split('-');
					var yyyy    = dpDate[0]; 
					var mm  = dpDate[1];
					var dd  = dpDate[2];
                 
					var deliveryplanDateMsg = '주문하신 상품은 예약상품으로 <span style="color:#e64674;">{0}년 <br />{1}월{2}일부터 순차적으로 배송</span>됩니다.';
					deliveryplanDateMsg = deliveryplanDateMsg.replace('{0}',yyyy);
                    deliveryplanDateMsg = deliveryplanDateMsg.replace('{2}',dd);
                    
                        deliveryplanDateMsg = deliveryplanDateMsg.replace('{1}',mm);
                    

                    entryTag += '   <div class="option_wrap">';
                    
	                    entryTag += '                 <p class="al_restock">';
                    
                    entryTag += 		deliveryplanDateMsg;
                    entryTag += '       <br />(입고예정일은 제작상황에 따라 변경될 수 있습니다.)';
                    entryTag += '   	</p>';
                    entryTag += '   </div>';
                }
                /* 2017.05.17, HSLee, 예약주문 안내문구 출력 [END] */
                
                
                if(orderThis.deliveryKind == "QUICK") {
                    entryTag += '   <div class="option_wrap">';
                    entryTag += '       <p class="quick_deliv stk">퀵배송</p>';
                    entryTag += '   </div>';
                }else if(orderThis.deliveryKind == "AT_HOME") {
                    entryTag += '   <div class="option_wrap">';
                    entryTag += '       <p class="athome">앳홈</p>';
                    entryTag += '   </div>';
                }else if(orderThis.deliveryKind == "FOUR_PM") {
                    entryTag += '   <div class="option_wrap">';
                    entryTag += '       <p class="fourpm">4PM</p>';
                    entryTag += '   </div>';
                }else if(orderThis.deliveryPointOfService != null || (orderThis.deliveryPointOfService != "" && typeof orderThis.deliveryPointOfService != "undefined")) {
                    entryTag += '   <div class="option_wrap">';
                    entryTag += '       <p class="store_pickup stk">매장수령</p>';
                    entryTag += '   </div>';                    
                }
                
                entryTag += '   </div>';
                entryTag += '</div>';
                
                entryTag += '</td>';
                
                entryTag += '<td>'
                if(this.partCancelYn==true) entryTag += '<del>'+this.originalQuantity+'</del>';  
                entryTag += this.quantity+'</td>';
                
                
                entryTag += '<td>₩ '+addComma(this.totalPrice.value)+'</td>';
                entryTag += '<td>';
                
                
                if(this.returnStatus!=null){
                	if(orderThis.returnRequestRejectYn) {
                		entryTag += '반품거절'
                	} else {
                    	entryTag += this.returnStatusName;
                    }
                }else{
                    if (reOrderCompleteYn) {
                        
                        entryTag += '예약주문완료'; 
                    } else {
                        entryTag += this.orderStatusName;
                    }
                }
                if(this.orderStatus.code=="DEPOSIT_WAIT"||this.orderStatus.code=="PAYMENT_CAPTURED"||this.orderStatus.code=="DELIVERY_COMPLETED"||this.orderStatus.code=="NOT_PAID_CANCEL"||this.orderStatus.code=="CANCELLED"||this.orderStatus.code=="CANCELLING"){
                	 if (reOrderInfoPrintYn) {
                		 
                	 } else if(this.returnStatus!=null){
                     	entryTag += '<span  class="sum_date">('+this.returnActionDate+')</span>';
                     } else {
                    	entryTag += '<span  class="sum_date">('+this.orderModifyDate+')</span>'; 
                	 }
                }
                
                if(this.partCancelYn==true&&this.orderStatus.code!="CANCELLED"){
                    
                    entryTag += '(부분주문취소)'; //부분주문취소
                }
                if(orderThis.deliveryKind != "AT_HOME" && orderThis.egiftCardOrderYn != true) {
                    
                    if(this.orderStatus.code=="SHIPPED"||this.orderStatus.code=="DELIVERY_COMPLETED"){
                        if(this.returnStatus==null){
                            
                                entryTag += '<br /><a href="#" class="btn wt_ss shippingInfoBtn" ocode="'+orderThis.code+'" pcode="'+this.product.code+'" >배송조회</a>' //배송조회
                            
                        }
                    }
                }
                
                
                entryTag += '</td>';
                
                var actionBtn = '';
                if(this.orderStatus.code=="DEPOSIT_WAIT") {
                    actionBtn += '<a href="${contextPath}/mypage/order/cancelrequest?code='+orderThis.code+'&isall=Y" class="btn wt_ss">전체취소</a>'; //전체취소
                }
                else if(this.orderStatus.code=="PAYMENT_CAPTURED"){
                	if(orderThis.redVoucherOrderYn == true) {
                		actionBtn += '<a href="${contextPath}/mypage/order/cancelrequest?code='+orderThis.code+'&isall=Y" class="btn wt_ss">전체취소</a>'; //전체취소
                	} else {
                		
                        tempCancel = '<a href="${contextPath}/mypage/order/cancelrequest?code='+orderThis.code+'" class="btn wt_ss">주문취소</a>'; //주문취소
	                    actionBtn += '<div class="btn_wrap">'+searchDeliveryTemp+tempCancel;
	                    if(orderThis.egiftCardOrderYn == true && orderThis.egiftBuySmsReSendAvailableYn == true) {
	                        tempCancel = '<a href="javascript:eGiftBuySmsReSend(this,\''+orderThis.code+'\',\''+orderThis.egiftCardCode+'\');" id="reSendEGift" class="btn wt_ss" style="margin-top:10px;min-width:69px;">1회 재전송</a>';    
	                        actionBtn += searchDeliveryTemp+tempCancel+'</div>';  
	                    }else if(orderThis.egiftCardOrderYn == true && orderThis.egiftBuySmsReSendAvailableYn != true) {
	                        tempCancel = '<a href="javascript:void(0);" id="reSendEGift" class="btn dis_ss" style="margin-top:10px;min-width:69px;">1회 재전송</a>';    
	                        actionBtn += searchDeliveryTemp+tempCancel+'</div>';  
	                    } else {
	                        actionBtn += '</div>';  
	                    }                   
                	}
                }else{
                    if(orderThis.egiftCardOrderYn != true) {
                        actionBtn += '<div class="btn_wrap">';
                        if(this.returnAvailYn==true) {
	                        
	                        if(orderThis.deliveryKind == "AT_HOME" && (this.returnYN == true || this.returnYN == "true")) {
	                            
	                        } else {
	                        	<!-- 반품 중지 인 경우와 반품 상태가 없는 경우 반품 신청 버튼이 나옴. 반품 완료지만 수량이 남아 있을 경우 반품 신청 버튼이 나오지만 확인 후 수량이 없을 경우 다음으로 이동하지 않음 khg START-->
	                        	if(this.returnStatus != null) {
									if(this.returnStatus.code == 'RETURN_CANCEL'){
										actionBtn += '<a href="${contextPath}/mypage/order/returnrequest?code='+orderThis.code+'" class="btn wt_ss">반품신청</a><br />'; //반품신청
									} else if(this.returnStatus.code == 'RETURN_COMPLETED'){
										actionBtn += '<a href="javascript:returnConfirm(\''+orderThis.code+'\');" class="btn wt_ss">반품신청</a><br />'; //반품신청
									} else {
										
									}
	                        	} else {
	                        		actionBtn += '<a href="${contextPath}/mypage/order/returnrequest?code='+orderThis.code+'" class="btn wt_ss">반품신청</a><br />'; //반품신청	                        		
	                        	} 
	                        	<!-- 반품 중지 인 경우와 반품 상태가 없을 경우에만 반품 신청 버튼이 나옴 khg END-->
	                        }
	                        <!-- 20191104 글로벌 반품신청 -->
	                        
                        }
                        
                        
                        if(this.product.approvalStatus == "approved" && this.returnStatus == null) {
                        	if(this.reviewWriteYn != null) {
		                        if(this.reviewWriteYn == "Y") {
			                        var color = this.product.baseOptions[1].selected.erpColorName;
			                        var price = this.totalPrice.value;
			                        var brandName = this.product.brandName;
			                        var productName = this.product.name;
			                        var categoryCode = this.product.actualMeasurementSizeCode.code;
			                        var orderNumber = this.code;
			                        actionBtn += '<a href="javascript:openPopupReview(\''+this.product.code+'\', \''+orderThis.code+'\', \''+color+'\', \''+price+'\', \''+productImageUrl+'\', \''+escape(brandName).replace(/\'/g,"\\\'")+'\', \''+productName.replace(/\'/g,"\\\'")+'\', \''+categoryCode+'\', \'myMain\')" class="btn wt_ss">상품평 작성</a>'; //상품평쓰기
		                        }
                        	}
                        } else if(this.product.approvalStatus == "approved" && this.returnStatus != null && (this.returnStatus.code == "RETURN_CANCEL" || this.returnStatus.code == "RETURN_COMPLETED")) {
                        	if(this.reviewWriteYn != null) {
		                        if(this.reviewWriteYn == "Y") {
			                        var color = this.product.baseOptions[1].selected.erpColorName;
			                        var price = this.totalPrice.value;
			                        var brandName = this.product.brandName;
			                        var productName = this.product.name;
			                        var categoryCode = this.product.actualMeasurementSizeCode.code;
			                        var orderNumber = this.code;
			                        if(reviewReturnConfirm(orderThis.code) == "T") {
			                        	actionBtn += '<a href="javascript:openPopupReview(\''+this.product.code+'\', \''+orderThis.code+'\', \''+color+'\', \''+price+'\', \''+productImageUrl+'\', \''+escape(brandName).replace(/\'/g,"\\\'")+'\', \''+productName.replace(/\'/g,"\\\'")+'\', \''+categoryCode+'\', \'myMain\')" class="btn wt_ss">상품평 작성</a>'; //상품평쓰기
			                        }
		                        }
                        	}
                        }
                        
                        actionBtn += '</div>';
                    }
                    
                    addrModifyAvailYn = false;
                }
                if(this.orderStatus.code=="DEPOSIT_WAIT" && firstEntry == 0) {
                    entryTag += '<td rowspan="'+entrieslength+'">'+actionBtn+'</td>';
                } else if(this.orderStatus.code != "DEPOSIT_WAIT") {
                	if(orderThis.redVoucherOrderYn == true) {
                		if(firstEntry == 0) {
                			entryTag += '<td rowspan="'+entrieslength+'">'+actionBtn+'</td>';	
                		} else {
                			// skip
                		}
                	} else {
                		
                        entryTag += '<td class="pd12_resize">'+actionBtn+'</td>';
                	}
                }
            
            if(this.egiftCardOrderYn == true) {
                addrModifyAvailYn = false;
            }
            firstEntry += 1;

                if(addrModifyAvailYn){
                    if(isFirstCheck){
                    
                        var hp = ['','',''];
                        var ph = ['','',''];
                        var email = ['',''];
                        if(orderThis.cellphone !=null) hp = orderThis.cellphone.split('-');
                        if(orderThis.phone1 !=null) ph = orderThis.phone1.split('-');
                        if(orderThis.email !=null) email = orderThis.email.split('@');
                        searchDeliveryTemp +=  '<a href="javascript:void(0);" class="btn wt_ss addrModBtn" code="'+orderThis.code+'" addr1="'+orderThis.address1+'" addr2="'+orderThis.address2+'" zip="'+orderThis.zipCode+'" rcname="'+orderThis.name+'" hp1="'+hp[0]+'" hp2="'+hp[1]+'" hp3="'+hp[2]+'" ph1="'+ph[0]+'" ph2="'+ph[1]+'" ph3="'+ph[2]+'" or="'+orderThis.deliveryRequestContents+'" emailId="'+email[0]+'" emailDomain="'+email[1]+'" >배송정보수정</a>'; //배송지 수정
                    
                        isFirstCheck = false;
                    }
                }
            });
            
            listTag +='</td>';
            listTag +=entryTag;
            rows +=listTag;
        });
        return rows;
    };
    
    var $l = null;
    
    orderList.afterSetAction = function(){
        $('.addrModBtn').click(function(){
            
            
                $l = layerPopup('addrModPop');
                $l.attr('id', 'addrModPop_clone' );
                $l.find('#code').val($(this).attr('code'));
                $l.find('#zipCode').val($(this).attr('zip'));
                $l.find('#address1').val($(this).attr('addr1'));
                $l.find('#address2').val($(this).attr('addr2'));
                
                if(getByteLength($(this).attr('rcname')) > 40){
                    $l.find('#name').val(subStringBytes($(this).attr('rcname'),40,3));
                }else{
                    $l.find('#name').val($(this).attr('rcname'));
                }
                
                $l.find('#hp1').val($(this).attr('hp1'));
                $l.find('#hp2').val($(this).attr('hp2'));
                $l.find('#hp3').val($(this).attr('hp3'));
                $l.find('#ph1').val($(this).attr('ph1'));
                
                if($(this).attr('ph2') != 'undefined') {
                    $l.find('#ph2').val($(this).attr('ph2'));
                }
                if($(this).attr('ph3') != 'undefined') {
                    $l.find('#ph3').val($(this).attr('ph3'));
                }
                $l.find('#orderr').val($(this).attr('or'));
                $l.find('#emailId').val($(this).attr('emailId'));
                $l.find('#emailDomain').val($(this).attr('emailDomain'));
                
                emailTypeDomainSelectController("#addrModPop_clone #emailDomain","#addrModPop_clone #emailDomainSel");
                
                
                $l.find('#findAddrBtn').click(function(){
                    searchAddressLayer('addrModPop_clone #address1', 'addrModPop_clone #address2', 'addrModPop_clone #zipCode');
                });
                
                $("body").unbind('click');
                
                $l.find('.deliveryMsg').click(function(){
                    
                    //$l.find('#orderr').val($(this).find('a').text());
                    $l.find('#orderr').val($(this).find('a').attr("deliveryRequestMessage"));
                    $l.find('#orderr').keyup();
                    $l.find('.delivery_comt').hide();
                });
                
                $l.find('#orderr').focus(function(){
                    
                    $l.find('.delivery_comt').show();
                    $l.bind('click',function(e){
                        if($(e.target).parents("#orderrArea").size() == 0) {
                            $l.find('.delivery_comt').hide();
                            $l.unbind('click');
                        }; 
                    }); 
                });
                
                
                $l.find("[numberOnly=true]").keypress(function(event){
                    if(!isNum(event.which)) return false;
                }).keydown(function(event){
                    if(!isNum(event.which)) return false;
                });
                
                chkInputCount($l.find('#orderr'), $l.find('#textCnt'), 20);
                
                $l.find('#cancelBtn').click(function(){
                    $l.find('.btn_close').click();
                });
                
                $l.find('#applyBtn').click(function(){
                    var vc = new ValidationCheck('addrModPop_clone #addrModForm');
                    vc.checkIdList = ['zipCode','address1','address2', 'name', 'hp1', 'hp2', 'hp3'];
                    if(vc.isValid()){
                        
                        $l.find("#hp").val($l.find("#hp1").val()+"-"+$l.find("#hp2").val()+"-"+$l.find("#hp3").val());
                        $l.find("#ph").val($l.find("#ph1").val()+"-"+$l.find("#ph2").val()+"-"+$l.find("#ph3").val());
                        
                        $l.find("#email").val($l.find("#emailId").val()+"@"+$l.find("#emailDomain").val());
                        
                        addrModFn();
                        
                        $l.find('.btn_close').click();  
                    }
                });
            
            
        });
        
        $(".shippingInfoBtn").click(function(){
            var paramDatas = 'ocode='+$(this).attr('ocode')+'&pcode='+$(this).attr('pcode');
            var orderCode = $(this).attr('ocode');
            $.ajax({
                type: "get",
                url :  "${contextPath}/mypage/order/getdelno",
                data : paramDatas,          
                dataType : "json",
                error : function( request, status, error ){     
                    alert(error);
                }, 
                success : function( result ){
                    
                        if(result.companyName=="현대택배"){
                            window.open('http://www.hydex.net/ehydex/jsp/home/distribution/tracking/tracingNView.jsp?param1='+result.trackingNumber,'배송조회', 'width=557, height=500'); //배송조회
                        }else if(result.companyName=="DHL"){
                            window.open('http://www.dhl.com/cgi-bin/tracking.pl?awb='+result.trackingNumber+'&LAN=KOR&TID=KR_KOR&LINKS=NO'  ,'배송조회'); //배송조회
                        }else if(result.companyName.indexOf("우체국") > -1){
                            window.open(result.epostUrl  ,'배송조회', 'width=700, height=713'); //배송조회
                        }else if(result.companyName=="QUICK"){
                            $.ajax({
                                type: "get",
                                url :  "${contextPath}/mypage/order/deliveryHistory",
                                data : {"code":orderCode},          
                                dataType : "json",
                                async : false,
                                error : function( request, status, error ){     
                                    alert(error);
                                }, 
                                success : function( result ){
                                    var html = "";
                                    for(var i=0;i<result.length;i++){
                                        html += '<tr>';
                                        html += '    <td class="date">'+result[i].date+'</td>';
                                        html += '    <td class="status">'+result[i].status+'</td>';
                                        html += '</tr>';
                                    }
                                    html += '<tr>';
                                    html += '    <td colspan="2" class="last">※ 퀵배송 주문 후, 고객사유로 미수령 시 반품처리 됩니다.</td>';
                                    html += '</tr>';
                                    
                                    $("#quickDeliveryInfoBody").html(html);
                                    layerPopup("quickDeliveryInfo");
                                }
                            });
                        }else if(result.companyName.indexOf("CJ대한통운") > -1){
                            window.open(result.cjUrl  ,'배송조회', 'width=850, height=850'); //배송조회
                        }else if(result.companyName.indexOf("굿투럭") > -1){
                            window.open(result.goodsToLuckUrl  ,'배송조회', 'width=850, height=850'); //배송조회
                        }else{
                            layerAlert(result.companyName+"<br />"+result.trackingNumber);
                        }
                        
                }
            });
        });
    }
        
    orderList.doWork();
    
    
    var addrModFn = function(){
    
        
            var paramDatas = $("#addrModPop_clone #addrModForm" ).serialize();
        

        $.ajax({
            type: "post",
            url :  "${contextPath}/mypage/order/updateorderaddr",
            data : paramDatas,          
            dataType : "json",
            error : function( request, status, error ){     
                alert(error)
            }, 
            success : function( result ){
                
                if(result=="SUCCESS"){
                    layerAlert("배송지 수정을 완료하였습니다.", true); //배송지 수정을 완료하였습니다.
                }else{
                    layerAlert("배송지 수정을 실패하였습니다."); //배송지 수정을 실패하였습니다.
                }
            }
        });
        
    };
            
        // 한섬 멤버십 통합 전환 여부 조회
        
        $.ajax({
            url      : '/ko/mypage/searchHpMemberList?CSRFToken=01f98955-34f3-45f8-a479-5dde49ca5b31',
            type     : 'POST',
            dataType : 'json',
            data     : { custNm : "이제석", custMpNo : "010-4662-3126" },
            success  : function(data) {
                if ( data != null ) {
                    var membershipCnt = data.length;
                    if(membershipCnt > 1 && getCookie("mergeInfoPopup") == '') {
                        membershipMergeInfoPopup();
                    }
                }
            }
        });
        
});

function hideProductLayer() {
    $("#productLayer .layerBg").removeClass("white");
    $("#productLayer").hide();
}

var eGiftBuySmsReSend = function(obj, orderCode, eGiftCardCode) {
    var lc = new layerConfirm("SMS 재전송은 1회 가능합니다.<br />재전송하시겠습니까?"); 
    
    lc.confirmAction = function(){

        $.ajax({
            type: 'GET',
            url: "${contextPath}/mypage/order/eGiftBuySmsReSend",
            async: false,
            data : {"orderCode" : orderCode
                    ,"eGiftCode" : eGiftCardCode},          
            dataType : "json",
            success: function(data) {
                if (data == true) {
                    //$(obj).css("display", "none");
                    
                    $("#reSendEGift").removeClass("wt_ss");
                    $("#reSendEGift").addClass("dis_ss");
                    $("#reSendEGift").css("margin-top:10px;min-width:69px;");
                    $("#reSendEGift").attr("href","javascript:void(0);");
                    
                    layerAlert("재전송하였습니다.");
                } else {
                    layerAlert("재전송에 실패하였습니다.");
                }
            },
            error: function(xhr, status, err) {
                // var console = window.console || {log:function(){}};
                // console.log("status : " + status + "\n error : " + err);
            }
       });
        
    };
}



var returnConfirm = function(code){
	$.ajax({
		type: "get",
		url :  "${contextPath}/mypage/order/getorderreturninfo?code="+code,
		dataType : "json",
		cache: false,
		error : function( request, status, error ){
			alert(error);
			//console.log( "code:" + request.status+"\n" + "message:" + request.responseText+"\n" + "error:" + error );
		}, 
		success : function( result ){
			
			if(result.data.entries==null){
				layerAlert("반품 신청이 가능한 수량이 없습니다.");
				return;
			}else{
				
				location.href="/mypage/order/returnrequest?code="+code;
				
			}
		}
	});
	
};

var globalCancelRequest = function(code) {
	var alertTag;
	alertTag = '<div class="layerArea" style="z-index:1110;display:none" id="layerDiv">';
	alertTag +='    <div class="layerBg"></div> ';
	alertTag +='    <div class="popwrap w_type_1" style="z-index:150;"> ';
	alertTag +='        <div class="pop_cnt">';
	alertTag +='            <p class="pop_txt_190911">mypage.order.history.list.global.cancel.message1</p>';
	alertTag +='            <p class="pop_txt_190911">mypage.order.history.list.global.cancel.message2</p>';
	if("ko" == "zh") {
		alertTag +='            <p class="pop_txt_190911">mypage.order.history.list.global.cancel.message3</p>';
	}
	alertTag +='            <div class="btnwrap">';
	alertTag +='                <input type="button" class="btn wt_s mr0" value="취소">';
	alertTag +='                <input type="button" class="btn gray_s mr0" value="text.button.ok">';
	alertTag +='            </div>';
	alertTag +='        </div>';
	alertTag +='        <a href="javascript:void(0);" class="btn_close"><img src="${contextPath}/resources/images/popup/ico_close.png" alt="닫기"></a>';
	alertTag +='    </div>';
	alertTag +='</div>';
	
	var la = new globalCancelLayerAlert(alertTag);
	la.confirmAction = function() {
		location.href = "${contextPath}/mypage/order/cancelrequest?code="+code;
	};
};

var globalCancelLayerAlert = function(tag){
	var t = this;
	var scrollTopCurrent = $(window).scrollTop();
	var $alertLayer = $(tag).appendTo($("body"));
	
	this.confirmAction = function(){};
	
	$alertLayer.find('.popwrap').css('marginTop', getMarginTop2(250,scrollTopCurrent));
	$("#layerDiv").show();
	
	var existedStyle = $('body').attr('style') || '';
	if (existedStyle) {
		existedStyle += ';';
	}
	
	$('body').attr('style', existedStyle + 'overflow:hidden !important');
	$alertLayer.find('.popwrap').css('marginTop', getMarginTop($alertLayer.find('.popwrap').outerHeight()));
	$alertLayer.find('.btn.gray_s').click(function(){
		$('body').attr('style', existedStyle);
		$alertLayer.remove();
		t.confirmAction();
	});
	
	$alertLayer.find('.layerBg, .btn_close, .btn.wt_s').click(function(){
		$('body').attr('style', existedStyle);
		$alertLayer.remove();
	});
};

function reviewReturnConfirm(code) {
	var rtn;
	$.ajax({
		type: "get",
		url :  "${contextPath}/mypage/order/getorderreturninfo?code="+code,
		dataType : "json",
		cache: false,
		async: false,
		error : function( request, status, error ){
			alert(error);
		},
		success : function( result ){
			if(result.data.entries==null){
				rtn = "F";
			}else{
				rtn = "T";
			}
		}
	});
	
	return rtn;
}

//]]>

function getExchangeRate(price) {
	
		var currencyCode = "CNY";
		var exchangeRate = "189.72";
		var symbol = "¥";
		
		if("ko" == "en") {
			if(currencyCode == "USD") {
				return symbol + " " + addComma(Math.round(parseFloat(price) / parseFloat(exchangeRate) * 100) / 100);
			}
		} else {
			if(currencyCode == "CNY") {
				return symbol + " " + addComma(Math.round(parseFloat(price) / parseFloat(exchangeRate) * 100) / 100);
			}
		}
	
		var currencyCode = "USD";
		var exchangeRate = "1261.8";
		var symbol = "$";
		
		if("ko" == "en") {
			if(currencyCode == "USD") {
				return symbol + " " + addComma(Math.round(parseFloat(price) / parseFloat(exchangeRate) * 100) / 100);
			}
		} else {
			if(currencyCode == "CNY") {
				return symbol + " " + addComma(Math.round(parseFloat(price) / parseFloat(exchangeRate) * 100) / 100);
			}
		}
	
}

function membershipMergeInfoPopup() {
	var popupTag = '';
	popupTag += '<div class="layerArea" style="z-index:1110;display:none" id="layerDiv">';
	popupTag +='	<div class="layerBg"></div> ';
	popupTag += '	<div class="popwrap w_type_1 membership-alert" style="z-index: 150; margin-top: 220px;" tabindex="-1">';
	popupTag += '		<div class="in-pd">';
	popupTag += '			<div class="pop_cnt">';
	popupTag += '				<h3 class="pop_tlt">한섬 멤버십 통합 전환</h3>';
	popupTag += '				<p class="pop-sub-txt">';
	popupTag += '					한섬 오프라인 &amp; 온라인<br>';
	popupTag += '					(더한섬닷컴, H패션몰, EQL) 멤버십을<br>';
	popupTag += '					통합하여 사용하실 수 있습니다.<br><br>';
	popupTag += '					한섬 멤버십 통합을 진행 하실려면<br>';
	popupTag += '					‘한섬 멤버십 통합 전환 바로가기’를 선택해 주세요.';
	popupTag += '				</p>';
	popupTag += '				<div class="btnwrap">';
	popupTag += '					<input class="btn gray" value="한섬 멤버십 통합 전환 바로가기" type="button">';
	popupTag += '				</div>';
	popupTag += '			</div>';
	popupTag += '			<a href="#" class="btn_close"><img src="${contextPath}/resources/images/popup/ico_close.png" alt="닫기"></a>';
	popupTag += '		</div>';
	popupTag += '		<div class="day-check-zone" style="background:#f3f3f3">';
	popupTag += '			<label>';
	popupTag += '				<input type="checkbox" >';
	popupTag += '				<span style="color:#555;">오늘 그만 보기</span>';
	popupTag += '			</label>';
	popupTag += '		</div>';
	popupTag += '	</div>';
	popupTag += '</div>';
	
	var la = new mergeInfoPopupLayerAlert(popupTag);
	la.confirmAction = function() {
		location.href = "${contextPath}/mypage/mergeCustomerInfo";
	};
}

var mergeInfoPopupLayerAlert = function(tag) {
	var t = this;
	var scrollTopCurrent = $(window).scrollTop();
	var $alertLayer = $(tag).appendTo($("body"));
	
	this.confirmAction = function(){};
	
	$alertLayer.find('.popwrap').css('marginTop', getMarginTop2(250,scrollTopCurrent));
	$("#layerDiv").show();
	
	var existedStyle = $('body').attr('style') || '';
	if (existedStyle) {
		existedStyle += ';';
	}
	
	$('body').attr('style', existedStyle + 'overflow:hidden !important');
	$alertLayer.find('.popwrap').css('marginTop', getMarginTop($alertLayer.find('.popwrap').outerHeight()));
	$alertLayer.find('.btn.gray').click(function(){
		$('body').attr('style', existedStyle);
		$alertLayer.remove();
		t.confirmAction();
	});
	
	$alertLayer.find('.layerBg, .btn_close, .btn.wt_s').click(function(){
		$('body').attr('style', existedStyle);
		$alertLayer.remove();
	});
};

function dayClose(cName, cValue, cDay) {
	$("#layerDiv").hide();
	var currentDate = new Date();
	var expire = new Date(currentDate.getFullYear(), currentDate.getMonth(), currentDate.getDate() + cDay, 0, 0, 0);
	cookies = cName + '=' + escape(cValue) + '; path=/ ';
	if(typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
	document.cookie = cookies;
}
</script>
				<form id="hpointHiddenForm" method="post" action=""
					target="joinStart_window">
					<input type="hidden" name="prtnrReqGb" value="02"> <input
						type="hidden" name="prtnrId" value="D080"> <input
						type="hidden" name="chnnlId" value="1705"> <input
						type="hidden" name="ptcoReqnMdaInf" id="ptcoReqnMdaInf" value="">
				</form>
				<form id="orderSearchForm"
					action="${contextPath}/mypage/order/myorderlist">
					<input type="hidden" name="sterm" class="input_date" title="기간 입력"
						id="sterm" value="2022-04-06" readonly=""> <input
						type="hidden" name="eterm" class="input_date" title="기간 입력"
						id="eterm" value="2022-05-06" readonly="">
				</form>
				<!-- 회원정보 -->
				<div class="profile_info1 clearfix review_betterment1905">
					<div class="name ">
						<span class="ico_grade">${session_mname }&nbsp;<span>님</span></span>
						<span class="grade_txt" id="grade_txt"></span>
					</div>
					<div class="pointbox_cover">
						<div class="point_wrap">
							<div class="point" style="border-left: 0; padding-left: 0;">
								<p class="title">한섬마일리지</p>
								<a class="count" href="${contextPath}/mypage/mypoint">${session_mmileage }&nbsp;<span>M</span></a>
							</div>
							<div class="point review">
								<p class="title">상품평</p>
								<img src="${contextPath}/resources/images/common/ico_ques2.png"
									alt="상품평이란?" class="tlt"> <a href="/mypage/myreview"
									class="count">0&nbsp;<span>개</span></a>
							</div>
						</div>
					</div>
				</div>
				<!-- 회원정보 -->
				<!-- 최근주문 -->
				<div class="title_wrap">
					<h4 class="float_left">최근주문</h4>
				</div>
				<!-- table -->
				<div class="tblwrap lncl1812">
					<!-- 클래스추가 181204 -->
					<table class="tbl_ltype review_betterment1905">
						<caption>상품평 리스트</caption>
						<colgroup class="interval1812">
							<!-- 수정 181204 -->
							<col style="width: 120px">
							<col>
							<col style="width: 42px">
							<col style="width: 107px">
							<col style="width: 108px">
							<col style="width: 96px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">주문번호<!-- 주문번호 --></th>
								<th scope="col">상품정보<!-- 상품정보 --></th>
								<th scope="col" style="padding: 15px 0">수량<!-- 수량 --></th>
								<!-- 스타일추가 181204 -->
								<th scope="col">판매가<!-- 판매가 --></th>
								<th scope="col">주문상태<!-- 주문상태 --></th>
								<th scope="col">구분<!-- 구분 --></th>
							</tr>
						</thead>
						<tbody id="listBody">
							<tr>
								<td colspan="6" class="no_data"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- table -->
				<div class="title_wrap line mt50">
					<h4>위시리스트</h4>
				</div>
				<!-- TODO -->
				<!-- pid, pimg1, bname, pname, pprice -->
				<ul class="wish_wrap">
					<li><a href="${contextPath}/p/SH2C1NJM314MM" class="a_link">
							<img
							src="http://newmedia.thehandsome.com/SH/2C/SS/SH2C1NJM314MM_DN_S01.jpg"
							alt="상품 이미지"> <span class="brand">SYSTEM HOMME</span> <span
							class="tlt">포켓 데님 점퍼</span>
					</a> <span class="prie"> ￦ 450,000</span></li>
				</ul>

			</div>
			<!-- //cnts -->
		</div>
	</div>
	<!-- end bodyWrap -->

	<!-- footerWrap -->
	<div id="footerWrap">
		<%@include file="include/footer.jsp"%>
	</div>
	<!-- end footerWrap -->
</body>
</html>