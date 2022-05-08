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

	<form class="center" method="post" action="/qnasite/insert_qna_site">
		<h6 style="text-align:center;margin-top:30px;">1:1 문의 작성</h6><br><br><br>
		<div class="form-group">
			<label>작성자</label>
			<input type="text" value="${sessionScope.session_mid}"class="form-control" name="mid" readonly/>
		</div>
		
		<div class="form-group">
			<label>제목</label>
			<input type="text" class="form-control" name="qtitle" placeholder="제목 입력">
		</div>
		<div class="form-group">
			<label>내용</label>
			<input type="text" class="form-control" name="qcontent" placeholder="내용 입력">
		</div>
		
		</div>
		
	<button type="submit" class="btn btn-outline-info">등록</button>
	
	</form>

</body>







</html>