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
	src="${contextPath}/resources/js/handsome/ui.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/handsome/jquery.bxslider.min.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/common_function.js"></script>
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

			<%@include file="include/gnb_member.jsp"%>
		</div>
	</div>
	<!-- end headerWrap -->

	<script type="text/javascript">
		var loginLayer = document.getElementById("loginLayer");
		$(document)
				.ready(
						function() {
							$("#login_btn")
									.click(
											function() {
												var id = $("#loginForm").find(
														"[id='j_username']")
														.eq(0).val();
												var pw = $("#loginForm").find(
														"[id='j_password']")
														.eq(0).val();

												document
														.getElementById("loginLayer").value = "E";

												if (true) {
													if (id == "") {
														layerAlert("아이디를 입력해 주십시요.");
														return;
													}

													if (pw == "") {
														layerAlert("비밀번호를 입력해 주십시요.");
														return;
													}
												}

												$
														.ajax({
															type : "POST",
															url : "/member/auth",
															data : JSON
																	.stringify({
																		mid : id,
																		mpassword : pw
																	}),
															contentType : "application/json",
															dataType : "json",
															success : function(
																	data) {
																if (data.result == "exist") {
																	$(
																			"#inputId")
																			.val(
																					id);
																	$(
																			"#loginForm")
																			.submit();
																	location.href = "/main";
																} else{
																	$("#hpErrMsg").text(data.message);																}
															},
															error : function(
																	request,
																	status,
																	error) {
																alert("code:"
																		+ request.status
																		+ "\n"
																		+ "message:"
																		+ request.responseText
																		+ "\n"
																		+ "error:"
																		+ error);
															}
														});
											});
						});
	</script>
	<input type="hidden" name="loginLayer" id="loginLayer" value="E" />
	<!-- bodyWrap -->
	<div id="bodyWrap" class="login">
		<h3 class="cnts_title">
			<span>로그인</span>
		</h3>

		<div class="sub_container">
			<div id="handsomeCust" class="login_wrap box_type_1 renewal1904"
				style="display: flex; justify-content: center;">
				<div class="border_box1">
					<!-- 추가 190417 -->
					<div class="inner_box">
						<div class="title_wrap">
							<h4>회원</h4>
						</div>
						<div id="hpIPLogin">
							<form id="loginForm" name="loginForm"
								action="/j_spring_security_check" method="post">
								<input type="hidden" name="inputId" id="inputId" value="">
								<fieldset>
									<legend>로그인 입력항목</legend>
									<div class="login_section">

										<p class="login_err_txt" id="hpErrMsg"></p>
										<div>
											<div>
												<input type="text" id="j_username" name="j_username"
													placeholder="아이디 / 이메일을 입력하세요." title="아이디" value="">
											</div>
											<div>
												<input type="password" id="j_password" name="j_password"
													placeholder="비밀번호를 입력하세요." title="비밀번호">
											</div>
										</div>
										<div class="id_save">
											<input type="checkbox" id="id_save" name="id_save" value="Y">
											<label for="id_save">아이디 저장</label>
										</div>
										<a href="javascript:void(0);" class="btn_login" id="login_btn">로그인</a>
										<a href="${contextPath }/member/joininfoform" class="btn join" id="join_btn">회원가입</a>
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!--//login wrap-->
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