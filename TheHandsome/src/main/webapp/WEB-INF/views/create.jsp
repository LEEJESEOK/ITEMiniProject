<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
</head>
<style>
.center{
margin : 5px 25px; paddin:20px
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<body>
	<form class="center" method="post" action="/review/insert_review">
		<h6>상품평 등록</h6><br><br><br>
		<div class="form-group">
			<label>작성자</label>
			<input type="text" value="${sessionScope.session_mid}"class="form-control" name="mid" readonly/>
		</div>
		<div class="form-group">
			<label>품번</label>
			<input type="text" value="${param.pid}"class="form-control" name="pid" readonly/>
		</div>
		<div class="form-group">
			<label>색상</label>
			<input type="text" class="form-control" name="pcolor" placeholder="색상 입력">
		</div>
		<div class="form-group">
			<label>사이즈</label>
			<input type="text"  class="form-control" name="psize" placeholder="사이즈를 입력해주세요">
			
		</div>
		<div class="form-group">
			<label>별점</label>
			<input type="text" class="form-control" name="rrate" placeholder="별점 작성(1,2,3,4,5)">
		</div>
		<div class="form-group">
			<label>내용</label>
			<input type="text" class="form-control" name="rcontent" placeholder="간단하게 입력해주세요.">
		</div>
		<div class="form-group">
			<label>이미지</label>
			<input type="text" class="form-control" name="rimage" placeholder="이미지 작성">
		</div>
		
	<button type="submit" class="btn btn-outline-info">등록</button>
	
	</form>

</body>







</html>