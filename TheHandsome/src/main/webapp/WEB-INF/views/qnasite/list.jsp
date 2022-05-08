<%@ page language="java" contentType="text/html; charset=UTF-8"     pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
.b{
text-align: right;
margin-botton: 30px;
}
element.style {
}
.paging .prev {
    background-position: -25px -4px;
}
.paging .prev2 {
    background-position: 0 -4px;
}
.paging .next {
    background-position: -62px -4px;
}
.paging .next2 {
    background-position: -86px -4px;
}
.paging > a {
    display: inline-block;
    width: 15px;
    margin: 0 5px;
    height: 13px;
    background: url(../resources/images/pagingIcon/ico_paging.png) 0 0 no-repeat;
    text-indent: -999em;
    cursor: pointer;
}
a:link, a:active, a:visited, a {
    text-decoration: none;
}
a {
    color: #444;
    outline: none;

    
}
div{
vertical-aglin:top;
}
user agent stylesheet
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
.paging {
    margin-top: 40px;
    text-align: center;
}
body, p, div, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, select, button, code, label, em, span {
    margin: 0;
    padding: 0;
    vertical-align: top;
    
    word-break: break-all;
}
body {
    -webkit-text-size-adjust: none;
    -webkit-user-select: none;
    -webkit-touch-callout: none;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    overflow-y: visible !important;
    font-family: "Malgun Gothic","맑은 고딕","Dotum","돋움", AppleGothic,sans-serif;
    color: #555;
    font-size: 15px;
}

body, p, div, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, select, button, code, label, em, span {
    
}
</style>


<style>
table{
border: 2px solid; border-collapse: collapse; text-align: center;
}

th, td{ border:1px solid; padding: 10px 5px;}
th{background-color: #CCCCCC; color; white;}
</style>

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
      <!--  -------------------------------------------------------------------------------------->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"> Board List Page 
                  <button id='regBtn' type="button" class="btn btn-xs pull-right">
                  Register 	New Board
                  </button>
                         </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>#번호</th>   <th>작성자</th>     <th>제목</th>
                                        <th>내용</th>  <th>작성일</th> 
                                    </tr>
                                </thead>
                                <c:forEach items="${list }" var="board">
                                <tr>
                                <td><c:out value="${board.qid }" /> </td>
                                <td><c:out value="${board.mid}"/> </td>
                                <td><c:out value="${board.qtitle}"/> </td>
                                <td><c:out value="${board.qcontent}"/> </td>
                                <td> <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${board.rdate }" />  </td> 
                            	
                                
                                <%--            --%>                  
                                </tr>
                                </c:forEach>
                            </table> <!-- table 태그 끝 -->
   
   <!--페이지 번호 처리  -->   
   <div class="paging" style="display: block;">
            	<a class="prev2" href="/review/list?pageNum=1&amount=${pageMaker.amount}&mid=${param.mid}">처음 페이지로 이동</a>
            	<c:choose>
              		<c:when test = "${pageMaker.pageNum == pageMaker.startPage}">
            			<a href="/review/list?pageNum=1&amount=${pageMaker.amount}&mid=${param.mid}" class="prev">이전 페이지로 이동</a>
            		</c:when>
            		<c:otherwise>
            			<a href="/review/list?pageNum=${pageMaker.pageNum - 1}&amount=${pageMaker.amount}&mid=${param.mid}" class="prev">이전 페이지로 이동</a>
            		</c:otherwise>
            	</c:choose>         
                <span class="num">
                	<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                    <a href="/review/list?pageNum=${num}&amount=${pageMaker.amount}&mid=${param.mid}" class="pageBtn">${num}</a>
                    </c:forEach>
                </span>              	
              	<c:choose>
              		<c:when test = "${pageMaker.pageNum == pageMaker.endPage}">
            			<a href="/review/list?pageNum=${pageMaker.pageNum}&amount=${pageMaker.amount}&mid=${param.mid}" class="next">다음 페이지로 이동</a>
            		</c:when>
            		<c:otherwise>
            			<a href="/review/list?pageNum=${pageMaker.pageNum + 1}&amount=${pageMaker.amount}&mid=${param.mid}" class="next">다음 페이지로 이동</a>
            		</c:otherwise>
            	</c:choose>
            	<a href="/review/list?pageNum=${pageMaker.endPage}&amount=${pageMaker.amount}&mid=${param.mid}" class="next2">마지막 페이지로 이동</a>
        </div> 
   <!--페이지 번호 처리  끝-->
            
            
                            
          	<!-- Modal  추가 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"	
			aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">Modal title</h4>
						</div>
						<div class="modal-body">처리가 완료되었습니다.</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save 	changes</button>
						</div>
					</div> 	   <!-- /.modal-content -->
               		</div> 	<!-- /.modal-dialog -->
			 </div>
			<!-- 모달끝/.modal -->    
			         
                        </div> <!-- end panel-body -->
                      </div> <!-- end panel panel-default  -->
                    </div>    <!-- /.panel -->
                </div>     <!-- /.col-lg-6 -->
            </div>       <!-- /.row -->

 
 

<script type="text/javascript">
	$(document)
	.ready(
		function() {
			var result = '<c:out value="${result}"/>';
			checkModal(result);	
			
			history.replaceState({}, null, null);
		
			function checkModal(result) {
				if (result === '' || history.state) {
					return;
				}//end if
				if (parseInt(result) > 0) {
					$(".modal-body").html(
					"게시글 " + parseInt(result)
					+ " 번이 등록되었습니다."); 
				}//end if
				$("#myModal").modal("show");
			}//end checkModel
			$("#regBtn").on("click", function () {
				self.location="/review/insert";				
			});//end click
		});//  end ready
</script>
