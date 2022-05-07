<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
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
<title>회원가입완료 | 더한섬닷컴</title>
<link rel="shortcut icon"
	href="http://cdn.thehandsome.com/_ui/desktop/common/images/common/thehandsome_ic_16x16.ico">
<link rel="stylesheet" href="${contextPath }/resources/css/style.css">

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
	src="${contextPath}/resources/js/handsome/ui.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/jquery.form-3.51.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/common_function.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/videojs-ie8.min.js"></script>
<script type="text/javascript"
	src="${contextPath}/resources/js/jquery-ui-1.11.2.min.js"></script>
</head>
<body>
	<!-- headerWrap -->
	<div id="headerWrap">
		<div class="header header_fixed header_main1903">
			<%@include file="../include/top_nav.jsp"%>

			<%@include file="../include/gnb_member.jsp"%>
		</div>
	</div>
	<!-- end headerWrap -->

	<script type="text/javascript">
		$(document).ready(function() {
			$("#main_btn").click(function() {
				window.location = "${contextPath}/";
			});

			$("#login_btn").click(function() {
				window.location = "${contextPath}/member/login";
			});
		});
	</script>
	<!-- bodyWrap -->
	<div id="bodyWrap">
		<!-- title -->
		<h3 class="cnts_title">
			<span>회원가입</span>
		</h3>
		<!--//title-->

		<!-- sub container -->
		<div class="sub_container">
			<div class="join_title">
				<p class="title">회원가입이 완료 되었습니다.</p>
				<p class="s_title">
					한섬통합몰의 회원이 되신 것을 축하드립니다.<br>입력하신 개인 정보는 <a
						href="${contextPath }/mypage/personInfomationChangePWCheck"><em
						class="ft_point01">'마이페이지 &gt; 나의 정보관리 &gt; 개인정보변경'</em></a>에서 바로 수정
					가능합니다.
				</p>
			</div>
			<div class="btnwrap mt60">
				<input type="button" value="메인으로 이동" class="btn wt" id="main_btn">
				<input type="button" value="로그인" class="btn gray mr0" id="login_btn">
			</div>
		</div>
		<!-- end sub container -->
	</div>
	<!-- end bodyWrap -->

	<!-- footerWrap -->
	<div id="footerWrap">
		<%@include file="../include/footer.jsp"%>
	</div>
	<!-- end footerWrap -->
</body>
</html>