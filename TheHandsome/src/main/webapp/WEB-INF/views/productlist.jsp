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
<link rel="stylesheet" href="${contextPath}/resources/css/style.css" />
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
	
	<div class="filterWrap hsDelivery1902">
                    <ul class="clearfix float_left">
                    <li class="color"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','색상');">색상<span class="ico_arr">arrow</span></a>
                            <div class="list list_item4">
                                <ul class="color_chip clearfix" id="category_color_chip">
                                <li><a href="javascript:setRepProdColorCode('BEIGE')" style="background:#fae7c4;" onclick="">BEIGE</a></li>
                                    <li><a href="javascript:setRepProdColorCode('BLACK')" style="background:#000000;" onclick="">BLACK</a></li>
                                    <li><a href="javascript:setRepProdColorCode('BLUE')" style="background:#0f45bc;" onclick="">BLUE</a></li>
                                    <li><a href="javascript:setRepProdColorCode('BROWN')" style="background:#673915;" onclick="">BROWN</a></li>
                                    <li><a href="javascript:setRepProdColorCode('BURGUNDY')" style="background:#741313;" onclick="">BURGUNDY</a></li>
                                    <li><a href="javascript:setRepProdColorCode('CAMEL')" style="background:#876c41;" onclick="">CAMEL</a></li>
                                    <li><a href="javascript:setRepProdColorCode('GOLD')" style="background:#ffc733;" onclick="">GOLD</a></li>
                                    <li><a href="javascript:setRepProdColorCode('GREEN')" style="background:#0f6f0e;" onclick="">GREEN</a></li>
                                    <li><a href="javascript:setRepProdColorCode('GREY')" style="background:#444445;" onclick="">GREY</a></li>
                                    <li><a href="javascript:setRepProdColorCode('IVORY')" style="background:#fff8d9;" onclick="">IVORY</a></li>
                                    <li><a href="javascript:setRepProdColorCode('KHAKI')" style="background:#465626;" onclick="">KHAKI</a></li>
                                    <li><a href="javascript:setRepProdColorCode('LAVENDER')" style="background:#9c81bb;" onclick="">LAVENDER</a></li>
                                    <li><a href="javascript:setRepProdColorCode('METAL')" style="background:#9d9fa2;" onclick="">METAL</a></li>
                                    <li><a href="javascript:setRepProdColorCode('MINT')" style="background:#95d0ab;" onclick="">MINT</a></li>
                                    <li><a href="javascript:setRepProdColorCode('MULTI')" style="background:#534741;" onclick="">MULTI</a></li>
                                    <li><a href="javascript:setRepProdColorCode('NAVY')" style="background:#061836;" onclick="">NAVY</a></li>
                                    <li><a href="javascript:setRepProdColorCode('OLIVE')" style="background:#5d682d;" onclick="">OLIVE</a></li>
                                    <li><a href="javascript:setRepProdColorCode('ORANGE')" style="background:#ee6423;" onclick="">ORANGE</a></li>
                                    <li><a href="javascript:setRepProdColorCode('PINK')" style="background:#ea589b;" onclick="">PINK</a></li>
                                    <li><a href="javascript:setRepProdColorCode('PURPLE')" style="background:#833b95;" onclick="">PURPLE</a></li>
                                    <li><a href="javascript:setRepProdColorCode('RED')" style="background:#ec1e24;" onclick="">RED</a></li>
                                    <li><a href="javascript:setRepProdColorCode('SILVER')" style="background:#c0c0c0;" onclick="">SILVER</a></li>
                                    <li><a href="javascript:setRepProdColorCode('SKY')" style="background:#a2d6f3;" onclick="">SKY</a></li>
                                    <li><a href="javascript:setRepProdColorCode('VIOLET')" style="background:#4c2b7b;" onclick="">VIOLET</a></li>
                                    <li><a href="javascript:setRepProdColorCode('WHITE')" class="wt" style="background:#ffffff;" onclick="">WHITE</a></li>
                                    <li><a href="javascript:setRepProdColorCode('YELLOW')" style="background:#ffea0a;" onclick="">YELLOW</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="size"><a href="#" class="select" onclick="">사이즈<span class="ico_arr">arrow</span></a>
                            <div class="list list_item3">
                                <ul class="size_chip clearfix" id="category_size_chip">
                                <li><a href="javascript:setRepSizeEnumCode('XXXS')" onclick="GA_Event('카테고리_리스트','정렬','XXXS');">XXXS</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('XXS')" onclick="GA_Event('카테고리_리스트','정렬','XXS');">XXS</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('XS')" onclick="GA_Event('카테고리_리스트','정렬','XS');">XS</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('S')" onclick="GA_Event('카테고리_리스트','정렬','S');">S</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('M')" onclick="GA_Event('카테고리_리스트','정렬','M');">M</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('L')" onclick="GA_Event('카테고리_리스트','정렬','L');">L</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('XL')" onclick="GA_Event('카테고리_리스트','정렬','XL');">XL</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('XXL')" onclick="GA_Event('카테고리_리스트','정렬','XXL');">XXL</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('XXXL')" onclick="GA_Event('카테고리_리스트','정렬','XXXL');">XXXL</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('XXXXL')" onclick="GA_Event('카테고리_리스트','정렬','XXXXL');">XXXXL</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('FREE')" onclick="GA_Event('카테고리_리스트','정렬','FREE');">FREE</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('ETC')" onclick="GA_Event('카테고리_리스트','정렬','ETC');">ETC</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="price"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','가격');">가격<span class="ico_arr">arrow</span></a>
                            <div class="list">
                                <ul>
                                    <li><input type="checkbox" id="price_ck1" onClick="GA_Event('카테고리_리스트','정렬','￦100,000 이하');setPriceOrderCode(this, '1')" /> <label for="price_ck1" id="lable_ck1"> ￦100,000 이하</label></li>
                                    <li><input type="checkbox" id="price_ck2" onClick="GA_Event('카테고리_리스트','정렬','￦100,000 ~ ￦300,000');setPriceOrderCode(this, '2')" /> <label for="price_ck2" id="lable_ck2">￦100,000 ~ ￦300,000</label></li>
                                    <li><input type="checkbox" id="price_ck3" onClick="GA_Event('카테고리_리스트','정렬','￦300,000 ~ ￦500,000');setPriceOrderCode(this, '3')"  /> <label for="price_ck3" id="lable_ck3">￦300,000 ~ ￦500,000</label></li>
                                    <li><input type="checkbox" id="price_ck4" onClick="GA_Event('카테고리_리스트','정렬','￦500,000 ~ ￦1,000,000');setPriceOrderCode(this, '4')"  /> <label for="price_ck4" id="lable_ck4">￦500,000 ~ ￦1,000,000</label></li>
                                    <li><input type="checkbox" id="price_ck5" onClick="GA_Event('카테고리_리스트','정렬','￦1,000,000 이상');setPriceOrderCode(this, '5')"  /> <label for="price_ck5" id="lable_ck5">￦1,000,000 이상</label></li>
                                </ul>
                            </div>
                        </li>
                                    
                        <li class="sortby"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','정렬순');">정렬순<span class="current">신상품</span><span class="ico_arr">arrow</span></a>
                            <div class="list">
                                <ul>
                                    <li><a href="javascript:setProductOrderCode('NEW', '신상품');" onclick="GA_Event('카테고리_리스트','정렬','신상품');">신상품</a></li>
                                    <li><a href="javascript:setProductOrderCode('SALES', '판매순');" onclick="GA_Event('카테고리_리스트','정렬','판매순');">판매순</a></li>
                                    <li><a href="javascript:setProductOrderCode('HIGH', '고가순');" onclick="GA_Event('카테고리_리스트','정렬','고가순');">고가순</a></li>
                                    <li><a href="javascript:setProductOrderCode('LOW', '저가순');" onclick="GA_Event('카테고리_리스트','정렬','저가순');">저가순</a></li>
                                    <li><a href="javascript:setProductOrderCode('REVIEW', '평점순');" onclick="GA_Event('카테고리_리스트','정렬','상품평순');">평점순</a></li>
                                    </ul>
                            </div>
                        </li>
                         <li class="prd_list_filter1810 sale_filter">
                            <div class="input_wrap">
                                <input type="checkbox" id="checkSale" name="checkSale" onClick="setCheckSaleCode();GA_Event('카테고리_리스트','정렬','SALE');" style="margin: 3px 10px 0 0;"><label for="checkSale" id="checkSale" style="color: #ff0000;">SALE</label>
                            </div>
                        </li>
                        <li class="prd_list_filter1810 delivery" style="display:none"><!-- 딜리버리 190219 -->
                            <div class="input_wrap">
                                <input type="checkbox" id="checkDelivery" name="checkDelivery" onClick="sethsDeliveryCode();GA_Event('카테고리_리스트','정렬','한섬딜리버리');"><label for="checkDelivery" id="hsDelivery">한섬딜리버리</label>
                            </div>
                            <img src="http://cdn.thehandsome.com/_ui/desktop/common/images/common/ico_quest.png" alt="한섬딜리버리란?" class="tlt" onmouseover="onMouseOverRecommend();" onmouseout="onMouseOutRecommend();">
                            <div class="rmd_pb_popup" style="display: none;">
                            <p>4PM, 퀵배송이 가능합니다.</p> 
                            <span class="box_arr"></span>
                         </div>
                        </li>
                        <li class="btn"><a href="javascript:gubunSearch(1);">적용</a></li>
                    </ul>
 
                </div>
       
            
		
		
<div id="bodyWrap" class="products">
    <h3 class="cnts_title ou1804">
    
        <span>
            <a href="#" onclick="">${list_by_brand[0].bname}</a>
        </span>
       
    </h3>
    <div class="adaptive_wrap">     
            <!-- sort wrap -->
            <div class="filterWrap hsDelivery1902">             
                <div class="items_count float_right">
                    <span class="num">${pageMaker.total}</span><span>전체</span>
                </div>
            </div>
        <div class="items_list" id="listContent" style="display: block;">
            <ul class="clearfix" id="listBody" style="display: block;">
            	<c:forEach items="${list_by_brand}" var="product" varStatus="status">            		
            		<c:choose>
	            		<c:when test="${status.index  % 4 != 3}">
			                <li> 
			                    <div class="item_box"> 
			                        <a href="${contextPath}/p/detail?product_id=${product.pid}" class="item_info1" onclick=""> 
			                        <span class="item_img"> 
			                            <img src="${product.pimg1}" id="${product.pid}" alt="" class="respon_image" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img3.jpg'"> 
			                            <img src="${product.pimg2}" id="${product.pid}" alt="" class="respon_image on" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img3.jpg'" style="display: none; opacity: 1;"> 
			                            <input type="hidden" id="newImage1_0" value="${product.pimg1}">                
			                            <input type="hidden" id="newImage2_0" value="${product.pimg1}">            
			                        </span> 
			                        <span class="item_size" id="itemsize_0" style="display: none; height: 1.67105px; padding-top: 0.664475px; margin-top: 0px; padding-bottom: 0.664475px; margin-bottom: 0px;"> 
			                            <div id="${product.pid}"> 
			                            <span>
			                            <c:out value="${status.index}"/>
			                            </span>
			                            </div> 
			                        </span> 
			                        </a> 
			                        <a href="${contextPath}/p/detail?product_id=${product.pid}" class="item_info2" onclick=""> 
			                            <span class="brand">${product.bname}</span> 
			                            <span class="title">${product.pname}</span> 
			                            <span class="price">₩ <span id="${product.pid}"><fmt:formatNumber value="${product.pprice}" pattern="#,###"/><span></span></span></span> 
			                            <span class="flag"> 
			                                <span class="product"></span> 
			                            </span> 
			                        </a> 			                       
			                      
			                    </div> 	              
<!-- 			                </li> -->
		                </c:when>
		                <c:otherwise>
		                	<li class="mr1m"> 
		                    <div class="item_box"> 
		                        <a href="${contextPath}/p/detail?product_id=${product.pid}" class="item_info1" onclick=""> 
		                        <span class="item_img"> 
		                            <img src="${product.pimg1}" id="T01_IMG_0" alt="" class="respon_image" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img3.jpg'"> 
		                            <img src="${product.pimg2}" id="T02_IMG_0" alt="" class="respon_image on" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img3.jpg'" style="display: none; opacity: 1;"> 
		                            <input type="hidden" id="newImage1_0" value="">                
		                            <input type="hidden" id="newImage2_0" value="">            
		                        </span> 
		                        <span class="item_size" id="itemsize_0" style="display: none; height: 1.67105px; padding-top: 0.664475px; margin-top: 0px; padding-bottom: 0.664475px; margin-bottom: 0px;"> 
		                            <div id="${product.pid}"> <span><c:out value="1"/></span></div> 
		                        </span> 
		                        </a> 
		                        <a href="${contextPath}/p/detail?product_id=${product.pid}" class="item_info2" onclick=""> 
		                            <span class="brand">${product.bname}</span> 
		                            <span class="title">${product.pname}</span> 
		                            <span class="price">₩ <span id="${product.pid}"><fmt:formatNumber value="${product.pprice}" pattern="#,###"/><span></span></span></span> 
		                            <span class="flag"> 
		                                <span class="product"></span> 
		                            </span> 
		                        </a> 
		                         
		                    </div> 	                 
		                	</li>
	                	</c:otherwise>
	            	</c:choose>    	             
	          	</c:forEach>              
              </ul>
        </div>
        <div class="paging" style="display: block;">
            	<a class="prev2" href="/product/productList?cateNo=${param.cateNo}&pageNum=1&amount=${pageMaker.amount}&level=${param.level}">처음 페이지로 이동</a>
            	<c:choose>
              		<c:when test = "${pageMaker.pageNum == pageMaker.startPage}">
            			<a href="/product/productList?cateNo=${param.cateNo}&pageNum=${pageMaker.pageNum}&amount=${pageMaker.amount}&level=${param.level}" class="prev">이전 페이지로 이동</a>
            		</c:when>
            		<c:otherwise>
            			<a href="/product/productList?cateNo=${param.cateNo}&pageNum=${pageMaker.pageNum - 1}&amount=${pageMaker.amount}&level=${param.level}" class="prev">이전 페이지로 이동</a>
            		</c:otherwise>
            	</c:choose>         
                <span class="num">
                	<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                    <a href="/product/productList?cateNo=${param.cateNo}&pageNum=${num}&amount=${pageMaker.amount}&level=${param.level}" class="pageBtn">${num}</a>
                    </c:forEach>
                </span>              	
              	<c:choose>
              		<c:when test = "${pageMaker.pageNum == pageMaker.endPage}">
            			<a href="/product/productList?cateNo=${param.cateNo}&pageNum=${pageMaker.pageNum}&amount=${pageMaker.amount}&level=${param.level}" class="next">다음 페이지로 이동</a>
            		</c:when>
            		<c:otherwise>
            			<a href="/product/productList?cateNo=${param.cateNo}&pageNum=${pageMaker.pageNum + 1}&amount=${pageMaker.amount}&level=${param.level}" class="next">다음 페이지로 이동</a>
            		</c:otherwise>
            	</c:choose>
            	<a href="/product/productList?cateNo=${param.cateNo}&pageNum=${pageMaker.endPage}&amount=${pageMaker.amount}&level=${param.level}" class="next2">마지막 페이지로 이동</a>
        </div>       
    </div>
</div>
</div>
</body>
<div id="footerWrap">
		<%@include file="include/footer.jsp"%>
	</div>