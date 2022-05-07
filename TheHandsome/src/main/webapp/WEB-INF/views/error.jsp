<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="No-Cache" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=1, target-densitydpi=medium-dpi" />
<title>서비스 이용에 불편을 드려서 죄송합니다! | THE HANDSOME.COM</title>
<!-- ie8 미디어쿼리 사용하기위해 스크립트보다 상위에 위치해야 함 -->
<link rel="stylesheet" type="text/css"
	href="/_ui/desktop/common/css/common.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="/_ui/desktop/common/css/layout.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="/_ui/desktop/common/css/contents.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="/_ui/desktop/common/css/popup.css" media="all" />

<script type="text/javascript"
	src="/_ui/desktop/common/js/jquery-1.11.2.js"></script>
<!--[if lt IE 9]>
<script src="/_ui/desktop/common/js/html5shiv.js"></script>
<script src="/_ui/desktop/common/js/respond.js"></script>
<script src="/_ui/desktop/common/js/IE9.js"></script>
<![endif]-->
</head>

<!-- This script is for AceCounter START -->
<script type="text/javascript">
	var _ERR = 'err';
</script>
<!-- AceCounter END -->

<script type="text/javascript">
	//<![CDATA[
	$(document).ready(function() {
		if (location.href.indexOf("/ko") > -1) {
			$("#ko").show();
			$("#en").hide();
			$("#zh").hide();
		} else if (location.href.indexOf("/en") > -1) {
			$("#ko").hide();
			$("#en").show();
			$("#zh").hide();
		} else if (location.href.indexOf("/zh") > -1) {
			$("#ko").hide();
			$("#en").hide();
			$("#zh").show();
		}
	});

	function language(country) {

		var status = $("#" + country + "").css("display");
		if (status == 'none') {
			$("#ko").hide();
			$("#en").hide();
			$("#zh").hide();

			$("#" + country + "").show();
		}
	};
	//]]>
</script>
<body>
	<!-- bodyWrap -->
	<div id="bodyWrap">
		<!-- sub_container -->
		<div class="sub_container error_container">

			<div class="errorwrap" id="ko">
				<div class="top_error">
					<h1 class="logo">
						<a href="#">thehandsome.com</a>
					</h1>

					<a href="javascript:language('zh');">中文</a> <a
						href="javascript:language('en');">ENGLISH</a> <a href="#">한국어</a>
				</div>
				<div class="con_error">
					<p>서비스 이용에 불편을 드려서 죄송합니다!</p>
					<span>방문하시려는 페이지의 주소가 잘못 입력되었거나,<br />페이지의 주소가 변경 혹은 삭제되어
						요청하신 페이지를 찾을 수 없습니다.<br /> <br />입력한 주소가 정확한지 다시 한번 확인해주시길 바랍니다.
					</span>
				</div>
				<div class="btnwrap">
					<a href="/main" class="btn wt_ss">더한섬닷컴 메인으로</a>
				</div>

			</div>

			<div class="errorwrap" id="en" style="display: none;">
				<div class="top_error">
					<h1 class="logo">
						<a href="#">thehandsome.com</a>
					</h1>

					<a href="javascript:language('zh');">中文</a> <a href="#">ENGLISH</a>
					<a href="javascript:language('ko');">한국어</a>
					<!-- <a href="mailto:globalcs@thehandsome.com">Customer Center</a> -->
				</div>
				<div class="con_error">
					<p>We are sorry for any inconvenience caused by the recent
						service.</p>
					<span>The webpage cannot be found.<br />This error is
						caused because the website address is typed incorrectly,<br />has
						been deleted, or changed.<br /> <br />Make sure the address is
						correct and try again.
					</span>
				</div>
				<div class="btnwrap">
					<a href="/main" class="btn wt_ss">Go to thehandsome.com</a>
				</div>
			</div>

			<div class="errorwrap" id="zh" style="display: none;">
				<div class="top_error">
					<h1 class="logo">
						<a href="#">thehandsome.com</a>
					</h1>

					<a href="#">中文</a> <a href="javascript:language('en');">ENGLISH</a>
					<a href="javascript:language('ko');">한국어</a>
					<!--  <a href="mailto:globalcs@thehandsome.com">客服中心</a> -->
				</div>
				<div class="con_error">
					<p>非常抱！</p>
					<span>入的址无法。<br />此不存在或址已更。<br /> <br />再次地址。
					</span>
				</div>
				<div class="btnwrap">
					<a href="/main" class="btn wt_ss">返回thehandsome.com首</a>
				</div>
			</div>

		</div>
		<!-- //sub_container -->
	</div>
	<!-- //bodyWrap -->
</body>

</html>