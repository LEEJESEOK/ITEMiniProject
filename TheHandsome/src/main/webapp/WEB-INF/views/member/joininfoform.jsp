<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	<meta property="og:description" content="타임, 마인, 시스템, SJSJ 등 프리미엄 브랜드 및 트렌디한 해외·편집숍까지 가득한 스타일 플랫폼!">
	<meta property="og:image"
		content="http://s3.ap-northeast-2.amazonaws.com/cdn.thehandsome.com-kr/pc/210510_logo/%E3%84%B9%EB%A1%9C%EA%B3%A0.png">
	<meta property="og:url" content="http://www.thehandsome.com/ko/">
	<meta name="keywords" contents="한섬, 더한섬닷컴, 한섬몰, 한섬아울렛, 한섬닷컴, 더한섬, 한섬올라인몰, HANDSOME, thehandsome">
	<title>더한섬닷컴 | THE HANDSOME.COM</title>
	<link rel="shortcut icon"
		href="http://cdn.thehandsome.com/_ui/desktop/common/images/common/thehandsome_ic_16x16.ico">
	<link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/style.css">
	<script type="text/javascript" src="${contextPath}/resources/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript" src="${contextPath}/resources/js/jquery-ui-1.11.2.min.js"></script>
	<script type="text/javascript" src="${contextPath}/resources/js/handsome/common.js"></script>
	<script type="text/javascript"
		src="${contextPath}/resources/js/handsome/html5shiv-printshiv.js"></script>
	<script type="text/javascript"
		src="${contextPath}/resources/js/handsome/jquery.flexslider.js"></script>
	<script type="text/javascript" src="${contextPath}/resources/js/handsome/ui.js"></script>
	<script type="text/javascript"
		src="${contextPath}/resources/js/handsome/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="${contextPath}/resources/js/common_function.js"></script>
	<script type="text/javascript" src="${contextPath}/resources/js/jquery.vticker.js"></script>
	<script type="text/javascript" src="${contextPath}/resources/js/jquery.form-3.51.js"></script>
	<script type="text/javascript" src="${contextPath}/resources/js/swiper.min.js"></script>
	<script type="text/javascript" src="${contextPath}/resources/js/videojs-ie8.min.js"></script>
</head>

<body>
	<!-- headerWrap -->
	<div id="headerWrap">
		<div class="header header_fixed header_main1903">
			<form id="autologinForm" name="autologinForm" action="${contextPath}/hp/autologin"
				method="get">
				<input type="hidden" name="hcid" id="hcid" value="e2gaf@naver.com">
			</form>

			<%@include file="../include/top_nav.jsp" %>

				<!-- validation check message global -->
				<input type="hidden" id="validationCheckPwd" value="비밀번호를 재입력 하셔야 합니다."> <input
					type="hidden" id="validationCheck" value="필수데이터가 입력되지 않았습니다."> <input type="hidden"
					id="validationCheckMsg" value="다음 사항을 확인해 주세요.">
				<input type="hidden" id="validationCheckMsg1" value="필수데이터가 입력되지 않았습니다."> <input
					type="hidden" id="validationCheckMsg2" value="동일문자를 3번 이상 사용할 수 없습니다."> <input
					type="hidden" id="validationCheckMsg3"
					value="연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다."> <input type="hidden"
					id="validationCheckMsg4" value="Caps Lock 이 켜져 있습니다.">
				<input type="hidden" id="validationCheckMsg5" value="아이디의 중복 확인이 필요합니다."><input
					type="hidden" id="deliveryOkMsg" value="확인"> <input type="hidden"
					id="deliverycancelMsg" value="취소">

				<%@include file="../include/gnb_member.jsp" %>
		</div>
	</div>
	<!-- end headerWrap -->

	<!-- bodyWrap -->
	<form id="memberJoinForm" method="POST">
		<input type="hidden" name="idDuplChk" id="idDuplChk" title="아이디 중복"/>
		<input type="hidden" name="pwTypeChk" id="pwTypeChk" title="비밀번호 형식"/> 
		<input type="hidden" name="pwConfirmChk" id="pwConfirmChk" title="비밀번호 일치"/>
		<input type="hidden" name="emailAddress" id="emailAddress"/> 
		<input type="hidden" name="mobilePhoneNumber" id="mobilePhoneNumber"/>


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

				<script type="text/javascript">
				$(document).ready(function () {

				    // #emailDomainSel에서 선택한 이메일 #emailDomain에 반영
				    emailTypeDomainSelectController("#emailDomain", "#emailDomainSel");			        
				    
				    // 비밀번호 검사
				    passwordValidationCheck('pw');
				    passwordValidationCheck('pwc');

				    $("#pw").keypress(function (event) {

				        if (capsLock(event)) {
				            $("#pwcapsLockMsg").text("<Caps Lock>이 켜져 있습니다.");
				        } else {
				            $("#pwcapsLockMsg").text("");
				        }
				        if ($("#pw").val().length > 0)
				            $("#pwMsg").text("비밀번호는 8~20자리 이하로 영문/숫자/특수문자를 혼합해주세요");
				    });

				    $("#pw").focus(function (event) {
				        $("#pwMsg").text("비밀번호는 8~20자리 이하로 영문/숫자/특수문자를 혼합해주세요");
				    });

				    $("#pw").blur(function () {
				        if ($(this).val().length > 0) {
				            var pwRegExp = /^(?=.*[a-zA-Z])(?=.*[\?\<\>\;\:\'\"\`\(\)\{\}\[\]\|\\\~\,\.!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
				            if (!pwRegExp.test($(this).val())) {
				                $("#pwMsg").text("비밀번호는 8~20자리 이하로 영문/숫자/특수문자를 혼합해주세요");
				                $("#pwTypeChk").val("");
				                return true;
				            }
				            $("#pwTypeChk").val("Y");
				            $("#pwMsg").text("");
				            $("#pwcMsg").text("");
				            $("#pwConfirmChk").val("");
				        }
				    });

				    $("#pwc").keypress(function (event) {

				        if (capsLock(event)) {
				            $("#pwcCapsLockMsg").text("<Caps Lock>이 켜져 있습니다.");
				        } else {
				            $("#pwcCapsLockMsg").text("");
				        }

				        if ($("#pwc").val().length > 0)
				            $("#pwcMsg").text("비밀번호는 8~20자리 이하로 영문/숫자/특수문자를 혼합해주세요");

				    });

				    $("#pwc").focus(function (event) {
				        $("#pwcMsg").text("비밀번호는 8~20자리 이하로 영문/숫자/특수문자를 혼합해주세요");

				    });

				    $("#pwc").blur(function () {
				        if ($("#pw").val() != $("#pwc").val()) {
				            $("#pwcMsg").text("비밀번호가 일치하지 않습니다");
				            $("#pwConfirmChk").val("");
				            //$("#pwc").val("");
				            return true;
				        }
				        if ($("#pw").val() != "") {
				            $("#pwConfirmChk").val("Y");
				            $("#pwcMsg").text("비밀번호가 확인되었습니다.");
				        }
				    });

					$("#ph1").blur(function() {
						if($("#ph1").val() == "")
							$("#hpMsg").text("")
					});
				    
				    // TODO 아이디 중복 검사
				    $("#idDubChkBtn").click(function () {
				        var vc = new ValidationCheck();
				        vc.checkIdList = ['id'];
				        vc.msgFn = function (msg) {
				            $("#idDubMsg").text(msg);
				        };

				        if (vc.isValid()) {
				            $.ajax({
				                type: "GET",
				                url: "/member/isduplid",
				                data: $("#id").serialize(),
				                contentType: "application/json; charset=utf-8",
				                dataType: "json",
				                success: function (response) {
				                    if (response.result == true) {
				                        console.log("" + response.result);
				                        $("#idDubMsg").text('이미 사용중인 아이디입니다.');
				                    } else {
				                        $("#idDubMsg").text('사용 가능한 아이디입니다.');
				                        $("#idDuplChk").val('Y');
				                    }
				                },
				                error: function (e) {
				                    console.log(e);
				                }
				            });
				        }
				    });

				    // 취소
				    $("#cancel_btn").click(function () {
				        var lc = new layerConfirm('회원가입을 취소하시겠습니까?', '확인', '취소');
				        lc.confirmAction = function () {
				            window.location = "${contextPath}/main";
				        }
				    });
				    
				    // 회원가입
				    $("#join_btn").click(function () {

				        var vc = new ValidationCheck();
				        vc.checkIdList = ['pw', 'pwc', 'name'];

				        if (!vc.isValid()) {
				            return;
				        }
				        
				        var idDuplChk = $("#idDuplChk").val();
				        var pwTypeChk = $("#pwTypeChk").val();
				        var pwConfirmChk = $("#pwConfirmChk").val();

				        if ($("#id").val() != "") {
				            if (idDuplChk !== "Y") {
				                layerAlert("ID 중복확인이 되지 않았습니다.");
				                return;
				            }
				        }				        

				        if (pwTypeChk !== "Y") {
				            layerAlert("비밀번호는 8~20자리 이하로 영문/숫자/특수문자를 혼합해주세요 ");
				            return;
				        }

				        if (pwConfirmChk !== "Y") {
				            layerAlert("비밀번호가 일치하지 않습니다 ");
				            return;
				        }

				        if ($("#email").val() != "") {
				            var email = $("#email").val() + "@" + $("#emailDomain").val();
				            if (!validateEmail(email)) {
				                layerAlert("잘못된 E-mail 형식입니다.");
				                return;
				            }

				            if (email.length > 50) {
				                layerAlert("E-mail은 최대 50자입니다.");
				                return;
				            }
				        }

				        $("#mobilePhoneNumber").val($("#hp1").val() + $("#hp2").val() + $("#hp3").val());
			        	
			            // 전화번호 확인
		                var hpCheckResult = phoneNumbericCheck();
			            console.log(hpCheckResult );
		                if(hpCheckResult != "SUCCESS"){
		                    var lc = new layerAlert("전화번호는 숫자만 입력가능 합니다.");
		                    lc.confirmAction = function(){
		                        $('#'+hpCheckResult).focus();
		                    };
		                    return;
		                }
		                

				        $("#cancel_btn").attr("disabled", true);
				        $("#join_btn").attr("disabled", true);

				        $("#emailAddress").val($("#email").val() + "@" + $("#emailDomain").val());
				        if ($("#email").val() == "") {
				            $("#emailAddress").val("");
				        }

				        $("#memberJoinForm").attr("action", "${contextPath}/member/joincomplete");
				        $("#memberJoinForm").submit();

				        
				    });
				});
				
				$("#email,#emailDomain").keypress(function (event) {
		            if (event.which == 32) {
		                return false;
		            }
		        });

				var passwordValidationCheck = function (fid) {
				    var t = this;

				    this.msgFn = function (msg) {
				        $('#' + fid).blur();
				        layerAlert(msg)
				    };

				    this.notLockFn = function () {
				        //default do nothing. but you can do something!
				    };

				    $('#' + fid).keyup(function (event) {
				        passwordSamePassCheck(fid);
				    });
				}

				var readonlyFlag = false;
				function passwordSamePassCheck(fid) {

				    var SamePass_0 = 0; // 동일문자 카운트
				    var SamePass_1 = 0; // 연속성(+) 카운드
				    var SamePass_2 = 0; // 연속성(-) 카운드

				    var inputdata = $('#' + fid).val();

				    for (var i = 0; i < inputdata.length; i++) {     // 4자리
				        var chr_pass_0 = inputdata.charCodeAt(i - 2);//3);
				        var chr_pass_1 = inputdata.charCodeAt(i - 1);//2);
				        var chr_pass_2 = inputdata.charCodeAt(i);// - 1);

				        if (i > 1) {
				            // 동일문자 카운트
				            if ((chr_pass_0 == chr_pass_1) && (chr_pass_1 == chr_pass_2)) {
				                SamePass_0++;
				            } else {
				                SamePass_0 = 0;
				            }
				            // 연속성(+) 카운드
				            if (chr_pass_0 - chr_pass_1 == 1 && chr_pass_1 - chr_pass_2 == 1) {
				                SamePass_1++;
				            } else {
				                SamePass_1 = 0;
				            }
				            // 연속성(-) 카운드
				            if (chr_pass_0 - chr_pass_1 == -1 && chr_pass_1 - chr_pass_2 == -1) {
				                SamePass_2++;
				            } else {
				                SamePass_2 = 0;
				            }
				        }

				        if (!readonlyFlag) {
				            if (SamePass_0 > 0) {
				                readonlyFlag = true;
				                $("input").attr("readonly", readonlyFlag);
				                var la = new layerAlert("동일문자를 3번 이상 사용할 수 없습니다.");
				                la.confirmAction = function () {
				                    readonlyFlag = false;
				                    $("input").attr("readonly", readonlyFlag);
				                    $('#' + fid).focus();
				                };
				            } else if (SamePass_1 > 0 || SamePass_2 > 0) {
				                readonlyFlag = true;
				                $("input").attr("readonly", readonlyFlag);
				                var la = new layerAlert("연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다.");
				                la.confirmAction = function () {
				                    readonlyFlag = false;
				                    $("input").attr("readonly", readonlyFlag);
				                    $('#' + fid).focus();
				                };
				            }
				        }
				    }
				}

				function validateEmail(email) {
				    var re = /^((([^<>()[\]\\.,;:\s@\"~`!@#$%^&*+={}|'/?]+(\.[^<>()[\]\\.,;:\s@\"~`!@#$%^&*+={}|'/?]+)*))|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
				    return re.test(email);
				}
				</script>

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
										<th scope="row"><strong class="reqd">*</strong><label
												for="id">아이디</label></th>
										<td><input type="text" id="id" name="id" name="id"
												style="width: 150px" title="아이디" maxlength="100"> <input type="button"
												class="btn add_s" id="idDubChkBtn" value="중복확인"><span
												class="guide_comment" id="idDubMsg"></span></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
												for="pw">비밀번호</label></th>
										<td><input type="password" id="pw" name="passwd"
												style="width: 150px" title="비밀번호" maxlength="20"> <span
												class="guide_comment lh_30" id="pwMsg"></span> <span
												class="guide_comment lh_30" id="pwcapsLockMsg"></span>
										</td>
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
										<th scope="row"><strong class="reqd">*</strong><label
												for="email">E-mail</label></th>
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
											</select> <input type="text" id="emailDomain"
												style="width: 120px" title="이메일 도메인"> <span
												class="guide_comment" id="emailMsg"></span></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong><label
												for="name">이름</label></th>
										<td><input type="text" style="width: 120px" id="name"
												name="name"></td>
									</tr>
									<tr>
										<th scope="row" class="th_space"><label for="address">주소</label>
										</th>
										<td><input type="text" id="zipCode" name="zipCode"
												style="width: 75px" title="우편번호"
												numberonly="true" maxlength="5"> <input
												type="text" id="address1" name="address1"
												style="width: 100%; margin: 5px 0" title="주소1">
												<input type="text" id="address2"
												name="address2" style="width: 100%" title="주소2"
												></td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong> <label
												for="hp">휴대폰 번호</label></th>
										<td><select style="width: 80px" title="휴대폰 번호 앞자리" id="hp1">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select>
											<div class="form_hyphen">-</div> <input type="text" id="hp2"
												class="hp_num1" title="휴대폰 번호 가운데자리" numberonly="true"
												maxlength="4">
											<div class="form_hyphen">-</div> <input type="text" id="hp3"
												class="hp_num2" title="휴대폰 번호 뒷자리" numberonly="true"
												maxlength="4"> <span class="guide_comment"
												id="hpMsg"></span>
										</td>
									</tr>
								</tbody>
							</table>
						</div>


						<div class="btnwrap">
							<input type="button" value="취소" class="btn wt" id="cancel_btn">
							<input type="button" value="회원가입" class="btn gray mr0" id="join_btn">
						</div>
					</div>
				</fieldset>
			</div>
			<!--//sub container-->
		</div>

		<div>
			<input type="hidden" name="CSRFToken" value="2e71a41c-edbc-42ef-8ec8-44309abdf1e2">
		</div>
	</form>
	<!-- bodyWrap -->


	<!-- footerWrap -->
	<div id="footerWrap">
		<%@include file="../include/footer.jsp" %>
	</div>
	<!-- footerWrap -->
</body>
</html>