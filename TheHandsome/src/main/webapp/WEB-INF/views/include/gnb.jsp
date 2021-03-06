<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(function() {

		if (navigator.userAgent.toLowerCase().indexOf("firefox") > -1) {
			$("#searchBox").on("keypress", function(event) {
				var keyCode = event.which || event.keyCode;
			});
		}

		$('#query')
				.click(
						function() {
							// 스타일 서치 아이템   
							doStyleItem();
							$('.search_box_wrap')
									.click(
											function() {
												if (!$('.search_box_wrap')
														.hasClass('on')) {
													var dataHeight = $(
															'.data_react')
															.height();
													$("#transparent_mask")
															.show();

													GA_Event('공통', '유틸_메뉴',
															'검색');
													$('.search_box_wrap')
															.stop()
															.animate(
																	{
																		width : '406px',
																		height : '+= dataHeight +"px"',
																		"max-height" : "430px",
																		"opacity" : 1
																	}, 'fast');

													$('.search_box_wrap')
															.addClass('on');
													$('.btn_search_tab').stop()
															.show();

													$('.data_react').stop()
															.show();

													$('#styleSearchSlider')
															.hide();
													$('.search_box .search')
															.stop().fadeIn(
																	'fast');

													//검색창 텝 >> style search slider
													$(document)
															.find(
																	'#styleSearchSlider')
															.flexslider(
																	{
																		animation : "slide",
																		slideshow : false,
																		directionNav : true,
																		after : function(
																				slider) {
																			$(
																					"#styleSearchSlider .slides li")
																					.not(
																							".clone")
																					.each(
																							function(
																									idx) {
																								if ($(
																										this)
																										.hasClass(
																												"flex-active-slide")) {
																									$(
																											".ss_txt_list li a")
																											.removeClass(
																													"on");
																									$(
																											".ss_txt_list li:eq("
																													+ idx
																													+ ") a")
																											.addClass(
																													'on');
																								}
																							});
																		}
																	});
													var styleTotal = $(
															"#styleSearchSlider .slides li")
															.size();
													if (styleTotal <= 1) {
														$(
																"#styleSearchSlider .flex-direction-nav")
																.hide();
													}

													//keyup 자동완성 리스트

													//keyup 자동완성 리스트
													$('#query')
															.keyup(
																	function(e) {
																		if (!$(
																				'#query')
																				.val() == "") {
																			$(
																					'.search_tab')
																					.hide();

																			$(
																					'.search_box_wrap')
																					.stop()
																					.animate(
																							{
																								width : '477px'
																							},
																							'fast',
																							function() {
																								$(
																										'.search_autocomplete')
																										.show();
																							});
																			$(
																					'.search_box_wrap.on .search_box input[type="search"]')
																					.stop()
																					.animate(
																							{
																								width : '461px'
																							},
																							'fast');
																			/*  var atcRightHeight = $(".autocomplete_right").height();//자동완성리스트 높이 조절
																			var atctxtHeight = $(".autocomplete_txt").height();
																			if(atcRightHeight < atctxtHeight){
																			$(".autocomplete_right").height(atctxtHeight);
																			} */

																		} else {
																			$(
																					'.search_autocomplete')
																					.hide();
																			$(
																					'.search_tab')
																					.show();

																			$(
																					'.search_box_wrap')
																					.stop()
																					.animate(
																							{
																								width : '406px'
																							});
																			$(
																					'.search_box_wrap.on .search_box input[type="search"]')
																					.stop()
																					.animate(
																							{
																								width : '390px'
																							});

																		}
																		$(
																				'.autocomplete_txt li a')
																				.each(
																						function() {
																							if (!$(
																									this)
																									.hasClass(
																											'brand_main')) {
																								$(
																										this)
																										.html(
																												$(
																														this)
																														.html()
																														.replace(
																																"<strong>",
																																""));
																								$(
																										this)
																										.html(
																												$(
																														this)
																														.html()
																														.replace(
																																"</strong>",
																																""));

																								if ($(
																										this)
																										.html()
																										.indexOf(
																												$(
																														'#searchBox')
																														.val()) > -1) {
																									$(
																											this)
																											.html(
																													$(
																															this)
																															.html()
																															.replace(
																																	$(
																																			'#searchBox')
																																			.val(),
																																	"<strong>"
																																			+ $(
																																					'#searchBox')
																																					.val()
																																			+ "</strong>"));
																								}
																							}
																						});
																	});

													//검색창 click시 이미 value 값이 있을 때
													if (!$('#query').val() == "") {
														$('.search_box_wrap')
																.stop()
																.animate(
																		{
																			width : '477px',
																			'opacity' : 1
																		},
																		'fast');
														$(
																'.search_box_wrap.on .search_box input[type="search"]')
																.stop()
																.animate(
																		{
																			width : '461px'
																		},
																		'fast');
													} else {
														$(
																'.search_box_wrap.on .search_box input[type="search"]')
																.stop()
																.animate(
																		{
																			width : '390px'
																		},
																		'fast');
													}

												}

												$('#styleSearchSlider')
														.fadeIn();

												//close button
												$(
														'.search_box a span.btn_close')
														.on(
																'click',
																function() {

																	$(
																			'.search_box_wrap')
																			.stop()
																			.animate(
																					{
																						width : '30px',
																						height : '-= dataHeight +"px"',
																						"opacity" : 0
																					});

																	$(
																			'.data_react')
																			.stop()
																			.hide();
																	$(
																			'.btn_search_tab')
																			.stop()
																			.hide();
																	$(
																			'.search_box_wrap')
																			.removeClass(
																					'on');
																	$(
																			"#transparent_mask")
																			.hide();
																	$(
																			'.search_box .search')
																			.stop()
																			.fadeOut(
																					'fast');
																	if (!$(
																			'#query')
																			.val() == "") {
																		$(
																				'#query')
																				.val(
																						"");
																		$(
																				'.search_autocomplete')
																				.hide();
																		$(
																				'.search_tab')
																				.show();
																	}
																	return false;
																});
											});
							$("#transparent_mask")
									.click(
											function() {
												if ($('.search_box_wrap')
														.hasClass('on')) {

													$('.search_box_wrap')
															.stop()
															.animate(
																	{
																		width : '30px',
																		height : '-= dataHeight +"px"',
																		"opacity" : 0
																	});

													$('.data_react').stop()
															.hide();
													$('.btn_search_tab').stop()
															.hide();
													$('.search_box_wrap')
															.removeClass('on');
													$("#transparent_mask")
															.hide();
													$('.search_box .search')
															.stop().fadeOut(
																	'fast');
												}
											});
							//검색창 텝
							$(document).on('click', '.btn_search_tab a',
									function() {
										$(this).addClass('on');
										$(this).siblings().removeClass('on');
										$('.data_react .s_tab').stop().hide();
										var activeTab = $(this).attr('rel');
										$('.' + activeTab).stop().show();
									});
						});
	});
</script>


<div class="gnbwrap com clearfix">
	<h1 class="logo logo1903">
		<a href="/main">thehandsome.com</a>
	</h1>

	<div class="gnb_nav gnb_nav1903 hscene1906 hscene1910">
		<h2 class="invisible">주메뉴</h2>
		<ul class="cate_m cate_banner gnbul1" id="cate_m_main">
			<li><a href="javascript:void(0);" class="gnb_brand">브랜드<span
					class="arr">arrow</span></a>
				<div class="sub_back">
					<div class="sub_menu clearfix">
						<p class="gnbbr_txt">
							브랜드 명을 클릭하시면 해당 브랜드로 이동합니다.<br>
						</p>
						<ul class="al_frt1 sm_dep1">
							<li></li>
							<!-- #1141 - 카테고리 개편 - 메인 즐겨찾기 브랜드 레이어 -->
							<li><strong>여성 브랜드</strong>
								<ul class="clearfix sm_dep2">
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR01"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="TIME" value="NEW_NORMAL_BRANDS_WE#BR01#1"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_WE_BR01"></label><a
										href="/b?bno=1">TIME</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR02"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="MINE" value="NEW_NORMAL_BRANDS_WE#BR02#2"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_WE_BR02"></label><a
										href="/b?bno=2">MINE</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR19"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="LANVIN COLLECTION" value="NEW_NORMAL_BRANDS_WE#BR19#3">
										<label for="gnb_br_NEW_NORMAL_BRANDS_WE_BR19"></label><a
										href="/b?bno=3">LANVIN COLLECTION</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR03"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="SYSTEM" value="NEW_NORMAL_BRANDS_WE#BR03#4"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_WE_BR03"></label><a
										href="/b?bno=4">SYSTEM</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR04"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="SJSJ" value="NEW_NORMAL_BRANDS_WE#BR04#5"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_WE_BR04"></label><a
										href="/b?bno=5">SJSJ</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR08"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="the CASHMERE" value="NEW_NORMAL_BRANDS_WE#BR08#6">
										<label for="gnb_br_NEW_NORMAL_BRANDS_WE_BR08"></label><a
										href="/b?bno=6">the CASHMERE</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR44"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="CLUB MONACO" value="NEW_NORMAL_BRANDS_WE#BR44#7">
										<label for="gnb_br_NEW_NORMAL_BRANDS_WE_BR44"></label><a
										href="/b?bno=7">CLUB MONACO</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR43"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="OBZEE" value="NEW_NORMAL_BRANDS_WE#BR43#8"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_WE_BR43"></label><a
										href="/b?bno=8">OBZEE</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR31"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="LÄTT" value="NEW_NORMAL_BRANDS_WE#BR31#9"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_WE_BR31"></label><a
										href="/b?bno=9">LÄTT</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR45"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="O'2nd" value="NEW_NORMAL_BRANDS_WE#BR45#10"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_WE_BR45"></label><a
										href="/b?bno=10">O'2nd</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_WE_BR61"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="oera" value="NEW_NORMAL_BRANDS_WE#BR61#11"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_WE_BR61"></label><a
										href="/b?bno=11">oera</a></li>
								</ul></li>
							<li><strong>남성 브랜드</strong>
								<ul class="clearfix sm_dep2">
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_ME_BR06"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="TIME HOMME" value="NEW_NORMAL_BRANDS_ME#BR06#1">
										<label for="gnb_br_NEW_NORMAL_BRANDS_ME_BR06"></label><a
										href="/b?bno=12">TIME HOMME</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_ME_BR07"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="SYSTEM HOMME" value="NEW_NORMAL_BRANDS_ME#BR07#2">
										<label for="gnb_br_NEW_NORMAL_BRANDS_ME_BR07"></label><a
										href="/b?bno=13">SYSTEM HOMME</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_ME_BR08"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="the CASHMERE" value="NEW_NORMAL_BRANDS_ME#BR08#3">
										<label for="gnb_br_NEW_NORMAL_BRANDS_ME_BR08"></label><a
										href="/b?bno=14">the CASHMERE</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_ME_BR44"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="CLUB MONACO" value="NEW_NORMAL_BRANDS_ME#BR44#4">
										<label for="gnb_br_NEW_NORMAL_BRANDS_ME_BR44"></label><a
										href="/b?bno=15">CLUB MONACO</a></li>
								</ul></li>
							<li></li>
							<!-- <li>
								<strong>편집 브랜드</strong>
								<ul class="clearfix sm_dep2">
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR15"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="TOM GREYHOUND"
										
										value="NEW_NORMAL_BRANDS_ED#BR15#1"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_ED_BR15"></label><a
										href="/b/br15" >TOM
											GREYHOUND</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR35"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="FOURM THE STORE"
										
										value="NEW_NORMAL_BRANDS_ED#BR35#2"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_ED_BR35"></label><a
										href="/b/br35" >FOURM
											THE STORE</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR30"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="FOURM STUDIO"
										
										value="NEW_NORMAL_BRANDS_ED#BR30#3"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_ED_BR30"></label><a
										href="/b/br30" >FOURM
											STUDIO</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR32"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="FOURM MEN'S LOUNGE"
										
										value="NEW_NORMAL_BRANDS_ED#BR32#4"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_ED_BR32"></label><a
										href="/b/br32" >FOURM
											MEN'S LOUNGE</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR16"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="MUE" 
										value="NEW_NORMAL_BRANDS_ED#BR16#5"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_ED_BR16"></label><a
										href="/b/br16" >MUE</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_ED_BR47"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="H : SCENE" 
										value="NEW_NORMAL_BRANDS_ED#BR47#6"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_ED_BR47"></label><a
										href="/b/br47" >H
											: SCENE</a></li>
									<li class="oera"><input
										id="gnb_br_NEW_NORMAL_BRANDS_ED_BR62" name="gnb_br_ch"
										type="checkbox" class="checkboxEvent"
										title="Liquides Perfume Bar"
										
										value="NEW_NORMAL_BRANDS_ED#BR62#7"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_ED_BR62"></label><a
										href="/b/br62" >Liquides
											Perfume Bar<i class="ico-new">new</i>
									</a></li>
								</ul> 
							</li> -->
							<!-- <li>
								<strong>해외 브랜드</strong>
								<ul class="clearfix sm_dep2">
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_OS_BR37"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="ROCHAS" 
										value="NEW_NORMAL_BRANDS_OS#BR37#1"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_OS_BR37"></label><a
										href="/c/br37/br37"
										>ROCHAS</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_OS_BR41"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="3.1 Phillip Lim"
										
										value="NEW_NORMAL_BRANDS_OS#BR41#2"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_OS_BR41"></label><a
										href="/c/br41/br41"
										>3.1 Phillip
											Lim</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_OS_BR20"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="LANVIN PARIS"
										
										value="NEW_NORMAL_BRANDS_OS#BR20#3"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_OS_BR20"></label><a
										href="/c/br20/br20"
										>LANVIN
											PARIS</a></li>
									<li><input id="gnb_br_NEW_NORMAL_BRANDS_OS_BR21"
										name="gnb_br_ch" type="checkbox" class="checkboxEvent"
										title="BALLY" 
										value="NEW_NORMAL_BRANDS_OS#BR21#4"> <label
										for="gnb_br_NEW_NORMAL_BRANDS_OS_BR21"></label><a
										href="/c/br21/br21"
										>BALLY</a></li>
								</ul> 
							</li> -->
							<!-- #1141 - 카테고리 개편 - 메인 즐겨찾기 브랜드 레이어 -->
						</ul>
					</div>
				</div></li>

			<li><a href="/p/c/large?clarge=여성">여성<span class="arr">arrow</span></a>
				<div class="sub_back">
					<div class="sub_menu clearfix">
						<ul class="al_frt1 sm_dep1">
							<li><a href="/c/we">전체보기 <!-- 전체보기 -->
							</a></li>
							<li><a href="/c/we09/">SPECIAL SHOP*</a>
								<ul class="clearfix sm_dep2">
									<li><a href="/c/we09v/">MINE : CODE MINE E</a></li>
									<li><a href="/c/we09k/">LATT : EXCLUSIVE -THE LINES</a></li>
									<li><a href="/c/we093/">SYSTEM : JEANS</a></li>
									<li><a href="/c/we094/">SJSJ : SCENT IN TALES</a></li>
									<li><a href="/c/we098/">SYSTEM : PARIS PRESENTATION</a></li>
									<li><a href="/c/we091/">OBZEE : ICONIC OBZEE</a></li>
									<li><a href="/c/we09b/">O'2ND : 25TH ANNIV. MARIE
											ASSENAT </a></li>
									<li><a href="/c/we09j/">TOMGREYHOUND: THE GREY</a></li>
									<li><a href="/c/we095/">FOURM THE STORE : PALETTE</a></li>
									<li><a href="/c/we096/">FOURM STUDIO : RE:STUDIO</a></li>
									<li><a href="/c/we097/">LANVIN COLLECTION : IT. 1</a></li>
									<li><a href="/c/we092/">TIME : SIGNATURE SUIT</a></li>
									<li><a href="/c/we09q/">LATT : WITH 신민아</a></li>
								</ul></li>
							<!--  status2.last end -->
							<li><a href="/p/c/medium?clarge=여성&cmedium=아우터">아우터</a>
								<ul class="clearfix sm_dep2">
									<li><a href="/p/c/small?clarge=여성&cmedium=아우터&csmall=재킷">재킷</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=아우터&csmall=점퍼">점퍼</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=아우터&csmall=가디건/베스트">가디건/베스트</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=아우터&csmall=트렌치 코트">트렌치 코트</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=아우터&csmall=코트">코트</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=아우터&csmall=다운/패딩">다운/패딩</a></li>
								</ul></li>
							<!--  status2.last end -->
							<li><a href="/p/c/medium?clarge=여성&cmedium=탑">탑</a>
								<ul class="clearfix sm_dep2">
									<li><a href="/p/c/small?clarge=여성&cmedium=탑&csmall=티셔츠">티셔츠</a></li>
									<li><a href=/p/c/small?clarge=여성&cmedium=탑&csmall=블라우스>블라우스</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=탑&csmall=셔츠">셔츠</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=탑&csmall=니트">니트</a></li>
								</ul></li>
							<!--  status2.last end -->
							<li><a href="/p/c/medium?clarge=여성&cmedium=드레스">드레스</a>
								<ul class="clearfix sm_dep2">
									<li><a href="/p/c/small?clarge=여성&cmedium=드레스&csmall=미니 드레스">미니 드레스</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=드레스&csmall=미디 드레스">미디 드레스</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=드레스&csmall=맥시 드레스">롱/맥시 드레스</a></li>
								</ul></li>
							<!--  status2.last end -->
							<li><a href="/p/c/medium?clarge=여성&cmedium=팬츠">팬츠</a>
								<ul class="clearfix sm_dep2">
									<li><a href="/p/c/small?clarge=여성&cmedium=팬츠&csmall=캐주얼">캐주얼</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=팬츠&csmall=포멀">포멀</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=팬츠&csmall=데님">데님</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=팬츠&csmall=쇼츠">쇼츠</a></li>
								</ul></li>
							<!--  status2.last end -->
							<li><a href="/p/c/medium?clarge=여성&cmedium=스커트">스커트</a>
								<ul class="clearfix sm_dep2">
									<li><a href="/p/c/small?clarge=여성&cmedium=스커트&csmall=미니 스커트">미니 스커트</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=스커트&csmall=펜슬 스커트">펜슬 스커트</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=스커트&csmall=플레어 스커트">플레어 스커트</a></li>
									<li><a href="/p/c/small?clarge=여성&cmedium=스커트&csmall=롱/맥시 스커트">롱/맥시 스커트</a></li>
								</ul></li>
						</ul>
						<div class="gnb_banner float_right"></div>
					</div>
				</div> <!--  status2.last end --> <!-- categoryItemList end --></li>
			<li><a href="/p/c/large?clarge=남성">남성<span class="arr">arrow</span></a>
				<div class="sub_back">
					<div class="sub_menu clearfix">
						<ul class="al_frt1 sm_dep1">
							<li><a href="/c/me">전체보기 <!-- 전체보기 -->
							</a></li>
							<li><a href="/c/me09/">SPECIAL SHOP*</a>
								<ul class="clearfix sm_dep2">
									<li><a href="/c/me09c/">SYSTEM HOMME : PLAYER LINE</a></li>
									<li><a href="/c/me094/">SYSTEM HOMME : PARIS
											PRESENTATION</a></li>
									<li><a href="/c/me093/">SYSTEM HOMME : TYPE 2</a></li>
									<li><a href="/c/me091/">CLUB MONACO : PANTS ARCHIVE</a></li>
									<li><a href="/c/me095/">TIME HOMME : ONLINE EXCLUSIVE</a></li>
								</ul></li>
							<!--  status2.last end -->
							<li><a href="/p/c/medium?clarge=남성&cmedium=아우터">아우터</a>
								<ul class="clearfix sm_dep2">
									<li><a href="/p/c/small?clarge=남성&cmedium=아우터&csmall=재킷">재킷</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=아우터&csmall=점퍼">점퍼</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=아우터&csmall=가디건/베스트">가디건/베스트</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=아우터&csmall=트렌치코트">트렌치코트</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=아우터&csmall=코트">코트</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=아우터&csmall=다운/패딩">다운/패딩</a></li>
								</ul></li>
							<!--  status2.last end -->
							<li><a href="/p/c/medium?clarge=남성&cmedium=탑">탑</a>
								<ul class="clearfix sm_dep2">
									<li><a href="/p/c/small?clarge=남성&cmedium=탑&csmall=티셔츠">티셔츠</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=탑&csmall=셔츠">셔츠</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=탑&csmall=니트">니트</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=탑&csmall=스웨터">스웨터</a></li>
								</ul></li>
							<!--  status2.last end -->
							<li><a href="/p/c/medium?clarge=남성&cmedium=팬츠">팬츠</a>
								<ul class="clearfix sm_dep2">
									<li><a href="/p/c/small?clarge=남성&cmedium=팬츠&csmall=루즈/테이퍼드">루즈/테이퍼드</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=팬츠&csmall=슬림/스트레이트">슬림/스트레이트</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=팬츠&csmall=조거/트랙">조거/트랙</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=팬츠&csmall=데님">데님</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=팬츠&csmall=쇼츠">쇼츠</a></li>
								</ul></li>
							<!--  status2.last end -->
							<li><a href="/p/c/medium?clarge=남성&cmedium=수트">수트</a>
								<ul class="clearfix sm_dep2">
									<li><a href="/p/c/small?clarge=남성&cmedium=수트&csmall=드레스셔츠">드레스셔츠</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=수트&csmall=수트재킷">수트재킷</a></li>
									<li><a href="/p/c/small?clarge=남성&cmedium=수트&csmall=수트팬츠">수트팬츠</a></li>
								</ul></li>
						</ul>
						<div class="gnb_banner float_right"></div>
					</div>
				</div> <!--  status2.last end --> <!-- categoryItemList end --></li>
		</ul>

		<ul class="cate_m cate_banner gnbul2" id="cate_m_main">
			<!-- THE 매거진 수정 200330 -->
			<li><a href="/magazine/submain" class="magazine1803">THE 매거진
					<!-- 매거진 --> <span class="arr">arrow</span>
			</a>
				<div class="sub_back">
					<div class="sub_menu clearfix newtmzbox">
						<ul class="the_maga_sublist sm_dep1">
							<li><a href="/magazine/submain">전체보기</a>
								<ul class="sm_dep2">
									<li><a href="/magazine/coverstory">커버스토리</a></li>
									<li><a href="/magazine/weeklypick">위클리 픽</a></li>
									<li><a href="/magazine/selection">셀렉션</a></li>
									<li><a href="/magazine/styleguide">스타일 가이드</a></li>
									<li><a href="/magazine/some">#SOME</a></li>
									<li><a href="/magazine/news">뉴스 </a></li>
								</ul></li>
						</ul>
						<div class="img_themaga_sub">
							<a href="/magazine/editorials/8806021814344"> <img
								class="amc_img"
								src="http://cdn.thehandsome.com/mobile/editorial/list/banner/20220503_38152662776577284_ko.jpg"
								alt="">
								<p>
									<strong>#SOME</strong> <span>제주 부부의 함께하는 여행</span>
								</p>
							</a> <a
								href="/magazine/newsDetailtemplatetype4?newsCode=8803498645276">
								<img class="amc_img"
								src="http://cdn.thehandsome.com/mobile/news/list/banner/20220502_38037817234832454_ko.jpg"
								alt="">
								<p>
									<strong>뉴스</strong> <span>세상 유일한 무이 스타일 '유일무이' 4화</span>
								</p>
							</a> <a href="/magazine/editorials/8806021781576"> <img
								class="amc_img"
								src="http://cdn.thehandsome.com/mobile/editorial/list/banner/20220428_37731240926702146_ko.jpg"
								alt="">
								<p>
									<strong>#SOME</strong> <span>일상을 빛내는 작가 켈리박</span>
								</p>
							</a>
						</div>
					</div>
				</div></li>
			<!-- // THE 매거진 수정 200330 -->
		</ul>
	</div>
	<!-- 첫번째 c:if -->

	<div id="transparent_mask"></div>

	<!-- 201803 util menu -->
	<%@include file="util_menu.jsp"%>
	<!-- //201803 util menu -->
</div>