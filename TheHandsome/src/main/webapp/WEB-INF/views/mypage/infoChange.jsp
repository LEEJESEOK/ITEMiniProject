<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
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
<title>개인정보 변경 | 더한섬닷컴</title>
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
				type="hidden" id="deliverycancelMsg" value="취소">

			<%@include file="../include/gnb_member.jsp"%>
		</div>
	</div>

	<!-- end headerWrap -->

	<!-- bodyWrap -->
	<div id="bodyWrap">
		<h3 class="cnts_title">
			<span id="menuTitle"></span>
		</h3>
		<div class="sub_container">
			<!-- lnb -->
			<%@include file="../include/lnb_mypage.jsp"%>
			<!-- //lnb -->

			<!-- cnts -->
			<div class="sub_cnts">
				<!-- TODO -->
				<script type="text/javascript">
					//<![CDATA[ 
$(document).ready(function () {

	// set member data
	$("#id").text(maskingId("${mid}"));

	$("#name").val(maskingName("${mname}"));

	// 우편번호 5자리, 빈자리는 0으로 채움
	$("#zipCode").val(("${mzipcode}").padStart(5,'0'));
	$("#address1").val("${maddress1}");
	$("#address2").val("${maddress2}");
	
	var $hp1 = "${mtel}".slice(0, 3);
	var $hp2 = "${mtel}".slice(3, 7);
	var $hp3 = "${mtel}".slice(7, 11);
	$("#hp1 option").each(function() {
		if($(this).val() == $hp1) {
			$(this).attr("selected", "selected");
		}
	});
	$("#hp2").val($hp2);
	$("#hp3").val($hp3);

	
    var pwRegExp = /^(?=.*[a-zA-Z])(?=.*[\?\<\>\;\:\'\"\`\(\)\{\}\[\]\|\\\~\,\.!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;

    $("#menuTitle").text("개인정보 변경"); //개인정보 변경

	// 이메일 설정
    emailTypeDomainSelectController("#emailDomain", "#emailDomainSel");
   
    if ($("#emailDomainSel option").index($("#emailDomainSel option:selected")) != -1) $("#emailDomainSel").change();
    else $("#emailDomainSel option:eq(0)").attr("selected", "selected");

    $("#email, #emailDomain, #emailDomainSel").change(function () {

        var emailRegExp = /^((([^<>()[\]\\.,;:\s@\"~`!@#$%^&+={}|'/?]+(\.[^<>()[\]\\.,;:\s@\"~`!@#$%^&+={}|'/?]+)*))|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        var email = $("#email").val() + "@" + $("#emailDomain").val();

        if (emailRegExp.test(email) != true) {
            $("#emailMsg").text("잘못된 E-mail 형식입니다.");
            $("#emailDuplChk").val('N');
            return;
        } else {
            $("#emailDuplChk").val('');
        }

        // TODO
        // session email, domain
        
        if ($("#email").val() + "@" + $("#emailDomain").val() == email) {
            $("#emailMsg").text('');
            $("#emailDuplChk").val('Y');
        } else {
            $("#emailMsg").text('');
            $("#emailDuplChk").val('');
        }
    });
	$("#email").val("${memail}".split('@')[0]);
	$("#emailDomain").val("${memail}".split('@')[1]);
	$("#emailDomainSel option").each(function () {
		if($(this).val() ==$("#emailDomain").val()) {
			$(this).attr("selected", "selected");
		}
	});

    $("#cancel_btn").click(function () {
        var lc = new layerConfirm('개인정보 변경을 취소하시겠습니까?', '확인', '취소');
        lc.confirmAction = function () {
            location.href = "${contextPath}/main";
        };
    });

    $("#save_btn").click(function () {
        $("#memailAddress").val($("#email").val() + "@" + $("#emailDomain").val());

        var vc = new ValidationCheck();
        vc.checkIdList = ['email', 'emailDomain', 'name'];

        if ($("#emailDuplChk").val() == 'N') {
            return;
        }

        if ($("#memailAddress").val().length > 50) {
            layerAlert("E-mail은 최대 50자입니다.");
            return;
        }

        if (vc.isValid()) {

            var paramDatas = $("#updateMemberForm").serialize();

            $.ajax({
                type: "POST",
                url: "${contextPath}/mypage/updateComplete",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({
					memailAddress : $("#memailAddress").val(),
					zipCode : $("#zipCode").val(),
					address1 : $("#address1").val(),
					address2 : $("#address2").val(),
					mobilePhoneNumber : $("#hp1").val() + $("#hp2").val() + $("#hp3").val()
                }),
                success: function (response) {
                    if (response.result == true) {
                        var lc = new layerAlert("입력하신 정보가 변경완료 되었습니다.");

                        lc.confirmAction = function () {
                            location.href = "${contextPath}/mypage";
                        };
                    } else {
                        layerAlert("예상치 못한 오류가 발생하였습니다.</br>" + "다시 시도해 주시기 바랍니다.");
                    }
                },
                error: function (request, status, error) {
                    layerAlert("예상치 못한 오류가 발생하였습니다.</br>" + "다시 시도해 주시기 바랍니다.");
                    console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                }

            });
        }
    });


    $("#memberSecession_btn").click(function () {
        $.ajax({
            type: "POST",
            url: "${contextPath}/mypage/secessionAuth",
            dataType: "json",
            contentType: "application/text",
            async: false,
            cache: false,
            data: $("#sessionAuthForm").serialize(),
            success: function (responsee) {
                if (response.data == true) {
//                     location.href = "${contextPath}/mypage/memberSecesseion";
                }
            },
            error: function (xhr, Status, error) {
                alert('sendRequest error : ' + xhr.status + " ( " + error + " ) ");
            }
        });
    });

    $("#email,#emailDomain").keypress(function (event) {
		// space
        if (event.which == 32) {
            return false;
        }
    });


    /*
     *	비밀번호 변경 Layer Popup관련 Script	
    */
    var $t = null;


    $("#pwChange_btn").click(function () {
        $t = layerChangPopup('pwSearchPop');
        
        $t.find("#newPasswordDubMsg, #newPasswordConfirmDubMsg").text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.");
//         $t.find("#oldPassword").focus();
        passwordDataValidationCheck('newPassword', 'newPasswordDubMsg');
        passwordDataValidationCheck('newPasswordConfirm', 'newPasswordConfirmDubMsg');

        $t.find('#newPassword').change(function () {
        	if($t.find("#newPassword").val() == "")
			{
				$t.find("#newPasswordDubMsg").text("필수항목을 입력하시길 바랍니다.");
				$t.find("#newPassword").focus();
			}
			else if(!pwRegExp.test($(this).val()))
			{	
				$t.find('#newPasswordDubMsg').text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.");
				$t.find('#newPassword').focus();
			}
        });

        $t.find('#newPasswordConfirm').keyup(function () {
        	var newPwVal = $t.find('#newPassword').val();
			var newPwConfVal = $t.find('#newPasswordConfirm').val();
			
			if(newPwConfVal.length >= newPwVal.length){
				if(newPwVal == newPwConfVal && newPwVal != "")
				{
					$t.find("#passWordConfirmCheck").val("Y");
					$t.find("#newPasswordConfirmDubMsg").text("비밀번호가 확인되었습니다.");
					$t.find('#newPasswordConfirm').blur();
				}else
				{
					$t.find("#passWordConfirmCheck").val("N");
					if(newPwVal == "")
					{
						$t.find("#newPasswordDubMsg").text("필수항목을 입력하시길 바랍니다.");
						$t.find('#newPassword').focus();
					}else if(newPwConfVal == "")
					{
						$t.find("#newPasswordConfirmDubMsg").text("필수항목을 입력하시길 바랍니다.");
						$t.find('#newPasswordConfirm').focus();
					}
					else
					{		
						$t.find("#newPasswordConfirmDubMsg").text("비밀번호가 일치하지 않습니다.");
						$t.find('#newPasswordConfirm').val("");
						$t.find('#newPasswordConfirm').focus();
					}
				}
			}
        });

        $t.find('#cancel_btn').click(function () {

            $t.find('.btn_close').click();
        });


        $t.find('#confirm_btn').click(function () {

            var newPassword = $t.find('#newPassword').val();
            var newPasswordLength = parseInt(newPassword.length);


            var newPasswordDubMsg = $t.find('#newPasswordDubMsg').text();


            if (newPasswordDubMsg != "비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.") {
                $t.find("#newPassword").focus();
                $t.find("#newPasswordConfirm").val("");
                return;
            }


            if ($t.find("#newPasswordConfirm").val() == "") {
                $t.find("#newPasswordConfirmDubMsg").text("필수항목을 입력하시길 바랍니다.");
                $t.find("#newPasswordConfirm").focus();
            }
            else if ($t.find("#passWordConfirmCheck").val() != "Y") {
                $t.find("#newPasswordConfirmDubMsg").text("비밀번호가 일치하지 않습니다.");
                $t.find('#newPasswordConfirm').val("");
                $t.find('#newPasswordConfirm').focus();
            }
            // 새비밀번호 길이체크 (TRUE: 8<=newPassword<=15)
            else if (newPasswordLength < 8 || newPasswordLength > 15) {
                $t.find('#newPasswordDubMsg').text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.");
                $t.find('#newPassword').focus();
                $t.find("#newPasswordConfirm").val("");
            }
            // 영문/숫자/특수문자 혼합문자열 확인.
            else if (!pwRegExp.test(newPassword)) {
                $t.find('#newPasswordDubMsg').text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.");
                $t.find('#newPassword').focus();
                $t.find("#newPasswordConfirm").val("");
            }
            else {
                // 새비밀번호 연속/동일 문자열 체크
                var concatechk = parseInt(newPasswordConcateCheck(newPassword));

                if (concatechk == -1) {
                    $t.find('#newPasswordDubMsg').text("동일문자를 3번 이상 사용할 수 없습니다.");
                    $t.find('#newPassword').focus();
                    $t.find("#newPasswordConfirm").val("");
                    return;
                } else if (concatechk == -2) {
                    $t.find('#newPasswordDubMsg').text("연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다.");
                    $t.find('#newPassword').focus();
                    $t.find("#newPasswordConfirm").val("");
                    return;
                }

               
                $.ajax({
                	type :"POST", 
                	url : "${contextPath}/mypage/changePassword",
               		data : JSON.stringify({
               			password :$t.find("#newPassword").val() 
               		}),
              		contentType : "application/json; charset=utf-8",
              		dataType : "json",
              		success : function (response) {
              			if(response.result == true){
        		 			var la = new layerAlert("비밀번호 변경이 완료 되었습니다. ");		//다국어 : 비밀번호 변경이 완료되었습니다.
        					la.confirmAction = function() {	
        						$t.find('.btn_close').click();
        					};
                        }
                    },
                    error : function (request, status, error) {
                    	alert("code : " + request.status + "\n" + "message : " + request.responseText + "\n error : " + error);
                        layerAlert("비밀번호 변경에 실패하였습니다.");
                    }	
                });
                
            }
        });
    });

    var passwordDataValidationCheck = function (fid, msgid) {
        var t = this;

        this.notLockFn = function () {
            //default do nothing. but you can do something!
        };

        $t.find('#' + fid).keypress(function (event) {

            if (capsLock(event)) {
                $t.find('#' + msgid).text("Caps Lock 이 켜져 있습니다.");		//다국어 : <Caps Lock>이 켜져 있습니다.
                return false;
            }
            $t.find('#' + msgid).text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.");	//다국어 : 비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.

        });

        $t.find('#' + fid).keyup(function (event) {

            var inputdata = $t.find('#' + fid).val()

            if (inputdata > 0) {
                $t.find('#' + msgid).text("비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.");	//다국어 : 비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.
            }

            var concatechk = parseInt(newPasswordConcateCheck(inputdata));

            if (concatechk == -1) {
                $t.find('#' + msgid).text("동일문자를 3번 이상 사용할 수 없습니다.");	//다국어 : 동일문자를 3번 이상 사용할 수 없습니다.
                return false;
            } else if (concatechk == -2) {
                $t.find('#' + msgid).text("연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다.");	//다국어 : 연속된 문자열(123 또는 321, abc, cba 등)을 3자리이상 올 수 없습니다.
                return false;
            } else {
                t.notLockFn();
            }
        });
    };
});

//회원변경시에만 사용되는 블라인드 영역을 클릭해도 팝업이 안닫히도록 수정
var layerChangPopup = function (layerId) {

    var PARAMS = {};
    PARAMS.layerId = layerId;
    PARAMS.layer = $("#" + PARAMS.layerId);


    this.openNewLayer = function () {

        var tp = getMarginTop(PARAMS.layer.height());
        if (tp < 0) tp = 0;

        PARAMS.layer.css("top", tp).css("position", "absolute").css("z-index", 101);

        var layerTag = '<div class="layerArea">';
        layerTag += '<div class="layerBg"></div> ';
        layerTag += '</div>';

        var thisLayer = $(layerTag).appendTo($('body')).append(PARAMS.layer.clone().show());
        var existedStyle = $('body').attr('style') || '';
        if (existedStyle) {
            existedStyle += ';';
        }
        $('body').attr('style', existedStyle + 'overflow:hidden !important');


        thisLayer.find('.btn_close, .okBtn').click(function () {
            //$('body').css('overflow', '');
            $('body').attr('style', existedStyle);
            thisLayer.remove();
            return false;
        });

        return thisLayer;
    };

    return this.openNewLayer();
};


/*
 * 연속문자열 검사
 */
function newPasswordConcateCheck(inputdata) {

    var returnVal = 0;

    var SamePass_0 = 0; // 동일문자 카운트
    var SamePass_1 = 0; // 연속성(+) 카운드
    var SamePass_2 = 0; // 연속성(-) 카운드

    for (var i = 0; i < inputdata.length; i++) {	 // 4자리
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

        if (SamePass_0 > 0) {
            // 다국어 : 동일문자를 3번 이상 사용할 수 없습니다.
            returnVal = -1;
        } else if (SamePass_1 > 0 || SamePass_2 > 0) {
            // 다국어 : 연속된 문자열(123 또는 321, abc, cba 등)을 3자리이상 올 수 없습니다. 
            returnVal = -2;
        }
    }
    return returnVal;
}

					//]]>
				</script>
				<form id="updateMemberForm" method="post">
					<input type="hidden" id="memailAddress" name="memailAddress">

					<!-- //lnbWrap -->
					<div>
						<div class="title_wrap mt30">
							<h4 class="float_left">개인정보 변경</h4>
							<p class="txt_line">회원정보를 확인하고, 변경할 수 있습니다.</p>
							<p class="reqd_txt">
								<strong class="reqd">*</strong> 표시는 필수항목입니다.
							</p>
						</div>

						<fieldset>
							<legend>회원정보입력</legend>
							<div class="tblwrap">
								<table class="tbl_wtype1">
									<caption>회원가입 입력항목</caption>
									<colgroup>
										<col style="width: 140px">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="th_space">아이디</th>
											<td id="id"></td>
										</tr>
										<tr>
											<th scope="row" class="th_space"><label
												for="pwChange_btn">비밀번호</label></th>
											<td><input type="button" value="비밀번호 변경"
												class="btn add_s" id="pwChange_btn"></td>
										</tr>
										<tr>
											<th scope="row"><strong class="reqd">*</strong> <label
												for="inforcvemail">E-mail</label></th>
											<td><input type="text" style="width: 120px"
												title="이메일아이디" id="email"
												value="${fn:split(memail, '@')[0] }"> <span
												class="andmail">@</span> <select id="emailDomainSel"
												style="width: 120px" title="이메일계정">
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
											</select> <input type="text" id="emailDomain" style="width: 120px"
												value="${fn:split(memail, '@')[1] }" title="이메일 도메인">
												<!-- <input type="button" class="btn add_s" id="emailDubChk_btn" value="중복확인"> -->
												<span class="guide_comment" id="emailMsg"></span>
												<div class="wtype_comment pt10">
													<span>정확한 이메일 정보를 입력하셔야 주문/배송 및 서비스정보를 받아 보실 수 있습니다.</span>
												</div></td>
										</tr>
										<tr>
											<th scope="row" class="th_space"><strong class="reqd">*</strong>이름</th>
											<td><input type="text" style="width: 120px" id="name"
												name="name"></td>
										</tr>
										<tr>
											<th scope="row" class="th_space"><label for="address">주소</label>
											</th>
											<td><input type="text" id="zipCode" name="zipCode"
												style="width: 75px" title="우편번호" maxlength="5"
												pattern="[0-9].+"> <input type="text" id="address1"
												name="address1" style="width: 100%; margin: 5px 0"
												title="주소1"> <input type="text" id="address2"
												name="address2" style="width: 100%" title="주소2"></td>
										</tr>
										<tr>
											<th scope="row"><strong class="reqd">*</strong> <label
												for="hp">휴대폰 번호</label></th>
											<td><select style="width: 80px" title="휴대폰 번호 앞자리"
												id="hp1">
													<option value="010">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>
													<option value="019">019</option>
											</select>
												<div class="form_hyphen">-</div> <input type="text" id="hp2"
												class="hp_num1" title="휴대폰 번호 가운데자리" maxlength="4"
												pattern="[0-9].+">
												<div class="form_hyphen">-</div> <input type="text" id="hp3"
												class="hp_num2" title="휴대폰 번호 뒷자리" maxlength="4"
												pattern="[0-9].+"> <span class="guide_comment"
												id="hpMsg"></span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</fieldset>

						<!-- btn_btwrap -->
						<div class="btn_btwrap">
							<input type="button" class="btn wt_ss" value="회원탈퇴"
								id="memberSecession_btn">
						</div>
						<div class="btnwrap mypage2">
							<input type="button" class="btn wt" value="취소" id="cancel_btn">
							<input type="button" class="btn gray" value="변경사항 저장"
								id="save_btn">
						</div>
						<!-- //btn_btwrap -->
					</div>
					<div>
						<input type="hidden" name="CSRFToken"
							value="36371fd3-93d8-4c27-a3d3-a269065029d6">
					</div>
				</form>
			</div>
			<!-- //cnts -->
		</div>
	</div>
	<!-- end bodyWrap -->


	<!-- footerWrap -->
	<div id="footerWrap">
		<%@include file="../include/footer.jsp"%>
	</div>
	<!-- end footerWrap -->
	<div class="popwrap w_type_5" id="pwSearchPop"
		style="display: none; top: 363.5px; position: absolute; z-index: 101;">
		<input type="hidden" id="passWordConfirmCheck"
			name="passWordConfirmCheck">
		<!-- Title1 -->
		<div class="pop_tltwrap2">
			<h3>비밀번호 변경</h3>
		</div>
		<!-- //Title1 -->
		<div class="pop_cnt">
			<form id="pwChangeForm" action="#" method="post">
				<fieldset>
					<legend>비밀번호 변경 입력항목</legend>
					<div class="tblwrap">
						<table class="tbl_wtype1">
							<caption>비밀번호 입력항목</caption>
							<colgroup>
								<col style="width: 160px">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><strong class="reqd">*</strong> <label
										for="newPassword">새 비밀번호 입력</label></th>
									<td><input type="password" id="newPassword"
										style="width: 187px" title="새 비밀번호 입력"> <span
										class="guide_comment" id="newPasswordDubMsg"></span> <!-- <span class="guide_comment">비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.</span> -->
									</td>
								</tr>
								<tr>
									<th scope="row"><strong class="reqd">*</strong> <label
										for="newPasswordConfirm">새 비밀번호 확인</label></th>
									<td><input type="password" id="newPasswordConfirm"
										style="width: 187px" title="새 비밀번호 확인"> <span
										class="guide_comment" id="newPasswordConfirmDubMsg"></span> <!-- <span class="guide_comment">&lt;Caps Lock&gt;이 켜져 있습니다.</span> -->
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="btnwrap">
						<input type="button" class="btn wt_s" id="cancel_btn" value="취소">
						<input type="button" class="btn gray_s" id="confirm_btn"
							value="확인">
					</div>
				</fieldset>
			</form>
		</div>
		<!-- btn_close -->
		<a href="#" class="btn_close" id="closeLayerPop"><img
			src="${contextPath }/resources/images/popup/ico_close.png"
			alt="memberInfoChange.lang.change.password.close"></a>
		<!-- //btn_close -->
	</div>
	<form id="sessionAuthForm" name="sessionAuthForm"
		action="${contextPath }/mypage/personInfomationChange" method="POST">
		<input type="hidden" name="callPage" value="mypage">
		<div>
			<input type="hidden" name="CSRFToken"
				value="6e82e500-8196-429d-9443-35b28143bd4a">
		</div>
	</form>
</body>
</html>