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

<div class="gnbwrap new201608 clearfix">
	<h1 class="logo logo1903">
		<a href="/main">thehandsome.com</a>
	</h1>

	<!-- 첫번째 c:if -->

	<div id="transparent_mask"></div>

	<!-- 201803 util menu -->
	<%@include file="util_menu.jsp"%>
	<!-- //201803 util menu -->

</div>