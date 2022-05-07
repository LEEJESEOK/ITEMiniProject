<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
<title>개인정보 변경 비밀번호 체크 | 더한섬닷컴</title>
<link rel="shortcut icon"
	href="http://cdn.thehandsome.com/_ui/desktop/common/images/common/thehandsome_ic_16x16.ico">
<link rel="stylesheet" type="text/css"
	href="${contextPath }/resources/css/style.css">

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
<script type="text/javascript"
	src="${contextPath}/resources/js/jquery-ui-1.11.2.min.js"></script>
</head>
<body>
	<!-- headerWrap -->

	<div id="headerWrap">
		<div class="header header_fixed header_main1903">
			<form id="autologinForm" name="autologinForm"
				action="${contextPath}/hp/autologin" method="get">
				<input type="hidden" name="hcid" id="hcid" value="e2gaf@naver.com">
			</form>

			<%@include file="../include/top_nav.jsp"%>

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

			<%@include file="../include/gnb.jsp"%>
		</div>
	</div>
	<!-- end headerWrap -->

	<!-- bodyWrap -->
	<div id="bodyWrap">
		<h3 class="cnts_title">
			<span id="menuTitle">개인정보 변경 / 탈퇴</span>
		</h3>
		<div class="sub_container">
			<!-- lnb -->
			<%@include file="../include/lnb_mypage.jsp"%>
			<!-- //lnb -->

			<!-- cnts -->
			<div class="sub_cnts">

				<script type="text/javascript">
					//<![CDATA[
					$(document).ready(function() {
						$("#login_btn").click(function() {
							var vc = new ValidationCheck();
							vc.checkIdList
						});
					});

					//]]>
				</script>

				<div class="title_wrap mt30">
					<h4 class="float_left">비밀번호 재확인</h4>
					<p class="txt_line">고객님의 정보보호를 위하여 비밀번호를 다시 한번 확인합니다.</p>
				</div>

				<!-- pw_reaffrim -->
				<div class="pw_reaffirm">
					<form>
						<fieldset>
							<legend>입력항목</legend>
							<div class="login_section">

								<div>
									<div>
										<!-- TODO member -->
										<label for="j_username">아이디</label> <input type="text"
											id="j_username" name="j_username" value=""
											disabled="disabled">
									</div>
									<div>
										<label for="j_password">비밀번호</label> <input type="password"
											id="j_password" name="j_password" title="비밀번호">
									</div>
								</div>
								<p class="guide_comment ml50">
									<!-- 입력하신 아이디 혹은 비밀번호가 일치하지 않습니다. -->
								</p>
							</div>
						</fieldset>
					</form>
				</div>
				<!-- btn_btwrap -->
				<div class="btnwrap mypage2">
					<a href="javascript:void(0);" class="btn wt" id="cancle_btn">취소</a>
					<a href="javascript:void(0);" class="btn gray" id="login_btn">확인</a>
				</div>

			</div>
			<!-- end cnts -->
		</div>
	</div>
	<!-- end bodyWrap -->


	<!-- footerWrap -->
	<div id="footerWrap">
		<%@include file="../include/footer.jsp"%>
	</div>
	<!-- end footerWrap -->
</body>
</html>