<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<div class="lnb_wrap">
	<h4>
		<a href="${contextPath}/mypage">마이페이지</a>
	</h4>
	<div class="lnb">
		<dl>
			<dt>나의 정보관리</dt>
			<dd>
				<a href="${contextPath}/mypage/infoChangePWCheck"> 개인정보 변경/탈퇴</a>
			</dd>
		</dl>
		<dl>
			<dt>나의 활동관리</dt>
			<dd>
				<a href="${contextPath}/qnasite/list?pageNum=1&amount=5&mid=${session_mid}">1:1 문의</a>
			</dd>
		</dl>
	</div>
	<!-- ph_guide -->
	<div class="ph_guide">
		<p class="tlt">고객센터 운영 안내</p>
		<p class="phone">
			1800-5700<span style="color: #c69c6d;" class="txt">(유료)</span>
		</p>
		<p class="txt">
			평일(월~금)<br>am 09:00 ~ pm 18:00<span>토/일, 공휴일 휴무</span>
		</p>
		<a href="mailto:shophelp@thehandsome.com">shophelp<br>@thehandsome.com
		</a>
	</div>
	<!-- //ph_guide -->
</div>
