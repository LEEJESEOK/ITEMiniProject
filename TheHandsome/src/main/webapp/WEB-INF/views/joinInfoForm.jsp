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

			<%@include file="include/gnb_member.jsp"%>
		</div>
	</div>
	<!-- end headerWrap -->

	<!-- bodyWrap -->
	<form id="memberJoinForm" action="/ko/member/joininfoform"
		method="POST">
		<input type="hidden" name="emailDuplChk" id="emailDuplChk" value=""
			title="이메일 중복"> <input type="hidden" name="pwTypeChk"
			id="pwTypeChk" value="" title="비밀번호 형식"> <input type="hidden"
			name="pwConfirmChk" id="pwConfirmChk" value="" title="비밀번호 일치">
		<input type="hidden" id="uid" name="uid" value="junelle_js@naver.com">
		<input type="hidden" id="emailAddress" name="emailAddress" value="">
		<input type="hidden" id="sBirthday" name="sBirthday" value="">
		<input type="hidden" id="gender" name="gender" value=""> <input
			type="hidden" id="collectionAgreementYN" name="collectionAgreementYN"
			value="">


		<div id="bodyWrap">
			<!--title-->
			<h3 class="cnts_title">
				<span>회원가입</span>
			</h3>
			<!--//title-->
			<!--sub container-->
			<div class="sub_container">
				<div class="join_title">
					<p class="title">고객님의 회원정보를 입력해주세요.</p>
				</div>
				<fieldset>
					<legend>회원정보입력</legend>
					<div class="box_type_1">
						<div class="title_wrap clearfix">
							<h4 class="float_left">회원정보</h4>
							<p class="reqd_txt float_right">
								<strong class="reqd">*</strong> 표시는 필수항목입니다.
							</p>
						</div>
						<div class="tblwrap">
							<table class="tbl_wtype1">
								<caption>회원가입 입력항목</caption>
								<colgroup>
									<col style="width: 160px">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">이메일 아이디</th>
										<td>junelle_js@naver.com</td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="pw">비밀번호</label></th>
										<td><input type="password" id="pw" name="passwd"
											style="width: 150px" title="비밀번호"> <span
											class="guide_comment lh_30" id="pwMsg"></span> <span
											class="guide_comment lh_30" id="pwcapsLockMsg"></span></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong> <label
											for="pw2">비밀번호 확인</label></th>
										<td><input type="password" id="pwc" style="width: 150px"
											title="비밀번호 확인"> <span class="guide_comment"
											id="pwcMsg"></span> <span class="guide_comment"
											id="pwcCapsLockMsg"></span></td>
									</tr>
									<tr>
										<th scope="row"><label for="email">E-mail (정보수신용)</label></th>
										<td><input type="text" style="width: 120px" title="이메일"
											id="email"> <span class="andmail">@</span> <select
											id="emailDomainSel" style="width: 120px" title="이메일">
												<option value="">직접입력</option>
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
										</select> <input type="text" id="emailDomain" style="width: 120px"
											value="" title="이메일 도메인"> <input type="button"
											class="btn add_s" id="emailDubChkBtn" value="중복확인"> <span
											class="guide_comment" id="emailMsg"></span>
											<div class="wtype_comment pt10">
												<input type="checkbox" id="ck1"><label for="ck1">이메일
													아이디 적용</label>
											</div>
											<div class="wtype_comment pt5">
												<input type="checkbox" id="emailReceiveYn"
													name="emailReceiveYn" value="Y"><label
													for="emailReceiveYn">이메일을 통한 상품 및 이벤트 정보 수신에 동의합니다.
													(선택)</label> <a href="javascript:void(0);"
													class="email-prev-detail-btn">자세히 보기</a>
											</div></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="name">이름</label></th>
										<td><input type="text" style="width: 120px" id="name"
											name="name"></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
											for="birth">생년월일</label></th>
										<td><select style="width: 80px" id="selYear" title="년도">
												<option value="">년</option>
												<option value="2008">2008</option>
												<option value="2007">2007</option>
												<option value="2006">2006</option>
												<option value="2005">2005</option>
												<option value="2004">2004</option>
												<option value="2003">2003</option>
												<option value="2002">2002</option>
												<option value="2001">2001</option>
												<option value="2000">2000</option>
												<option value="1999">1999</option>
												<option value="1998">1998</option>
												<option value="1997">1997</option>
												<option value="1996">1996</option>
												<option value="1995">1995</option>
												<option value="1994">1994</option>
												<option value="1993">1993</option>
												<option value="1992">1992</option>
												<option value="1991">1991</option>
												<option value="1990">1990</option>
												<option value="1989">1989</option>
												<option value="1988">1988</option>
												<option value="1987">1987</option>
												<option value="1986">1986</option>
												<option value="1985">1985</option>
												<option value="1984">1984</option>
												<option value="1983">1983</option>
												<option value="1982">1982</option>
												<option value="1981">1981</option>
												<option value="1980">1980</option>
												<option value="1979">1979</option>
												<option value="1978">1978</option>
												<option value="1977">1977</option>
												<option value="1976">1976</option>
												<option value="1975">1975</option>
												<option value="1974">1974</option>
												<option value="1973">1973</option>
												<option value="1972">1972</option>
												<option value="1971">1971</option>
												<option value="1970">1970</option>
												<option value="1969">1969</option>
												<option value="1968">1968</option>
												<option value="1967">1967</option>
												<option value="1966">1966</option>
												<option value="1965">1965</option>
												<option value="1964">1964</option>
												<option value="1963">1963</option>
												<option value="1962">1962</option>
												<option value="1961">1961</option>
												<option value="1960">1960</option>
												<option value="1959">1959</option>
												<option value="1958">1958</option>
												<option value="1957">1957</option>
												<option value="1956">1956</option>
												<option value="1955">1955</option>
												<option value="1954">1954</option>
												<option value="1953">1953</option>
												<option value="1952">1952</option>
												<option value="1951">1951</option>
												<option value="1950">1950</option>
												<option value="1949">1949</option>
												<option value="1948">1948</option>
												<option value="1947">1947</option>
												<option value="1946">1946</option>
												<option value="1945">1945</option>
												<option value="1944">1944</option>
												<option value="1943">1943</option>
												<option value="1942">1942</option>
												<option value="1941">1941</option>
												<option value="1940">1940</option>
												<option value="1939">1939</option>
												<option value="1938">1938</option>
												<option value="1937">1937</option>
												<option value="1936">1936</option>
												<option value="1935">1935</option>
												<option value="1934">1934</option>
												<option value="1933">1933</option>
												<option value="1932">1932</option>
												<option value="1931">1931</option>
												<option value="1930">1930</option>
												<option value="1929">1929</option>
												<option value="1928">1928</option>
												<option value="1927">1927</option>
												<option value="1926">1926</option>
												<option value="1925">1925</option>
												<option value="1924">1924</option>
												<option value="1923">1923</option>
												<option value="1922">1922</option>
												<option value="1921">1921</option>
												<option value="1920">1920</option>
												<option value="1919">1919</option>
												<option value="1918">1918</option>
												<option value="1917">1917</option>
												<option value="1916">1916</option>
												<option value="1915">1915</option>
												<option value="1914">1914</option>
												<option value="1913">1913</option>
												<option value="1912">1912</option>
												<option value="1911">1911</option>
												<option value="1910">1910</option>
												<option value="1909">1909</option>
												<option value="1908">1908</option>
												<option value="1907">1907</option>
												<option value="1906">1906</option>
												<option value="1905">1905</option>
												<option value="1904">1904</option>
												<option value="1903">1903</option>
												<option value="1902">1902</option>
												<option value="1901">1901</option>
												<option value="1900">1900</option>
										</select> <select style="width: 80px" id="selMonth" title="월">
												<option value="">월</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
										</select> <select style="width: 80px" id="selDay" title="일">
												<option value="">일</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
												<option value="24">24</option>
												<option value="25">25</option>
												<option value="26">26</option>
												<option value="27">27</option>
												<option value="28">28</option>
												<option value="29">29</option>
												<option value="30">30</option>
												<option value="31">31</option>
										</select></td>
									</tr>
								</tbody>
							</table>
						</div>


						<div class="btnwrap">
							<input type="button" value="취소" class="btn wt" id="cancleBtn">
							<input type="button" value="회원가입" class="btn gray mr0"
								id="joinBtn">
						</div>
					</div>
				</fieldset>
			</div>
			<!--//sub container-->
		</div>

		<div class="layerArea email-detail-pop" style="display: none;">
			<div class="layerBg"></div>
			<div class="popwrap w_type_11">
				<div class="terms_box box_type_2">
					■ 개인정보의 수집항목 및 이용<br>
					<br> 더한섬닷컴은 별도의 회원가입 절차 없이 대부분의 컨텐츠에 자유롭게 접근할 수 있습니다. 더한섬닷컴의
					서비스를 이용하시는 경우 다음의 정보를 고객의 동의를 받아 수집할 수 있으며 선택항목을 입력하지 않아도 서비스 이용에
					제한은 없습니다.<br>
					<br> <span
						style="color: #000; display: block; margin-bottom: 12px;">회원가입
						및 주문 등 필요시점에 수집하는 개인정보의 범위</span>
					<table class="tbl_ltype">
						<caption>회원가입 및 주문 등 필요시점에 수집하는 개인정보의 범위</caption>
						<colgroup>
							<col style="width: auto">
							<col style="width: 202px;">
							<col style="width: 103px;">
							<col style="width: 254px;">
							<col style="width: auto;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">수집 방법</th>
								<th scope="col">이용 목적</th>
								<th scope="col">수집 정보</th>
								<th scope="col">수집 항목</th>
								<th scope="col">보유 기간</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="frt">간편회원가입</td>
								<td><strong>신규서비스/상품안내</strong></td>
								<td>선택</td>
								<td>이메일</td>
								<td>회원 탈퇴 시 또는 동의 철회 시</td>
							</tr>
						</tbody>
					</table>
					<a href="javascript:void(0)" class="btn_close"><img
						src="${contextPAth }/resources/images/popup/ico_close.png" alt="닫기"></a>
				</div>
			</div>
		</div>
		<div>
			<input type="hidden" name="CSRFToken"
				value="2e71a41c-edbc-42ef-8ec8-44309abdf1e2">
		</div>
	</form>
	<!-- bodyWrap -->


	<!-- footerWrap -->
	<div id="footerWrap">
		<%@include file="include/footer.jsp"%>
	</div>
	<!-- footerWrap -->
</body>
</html>