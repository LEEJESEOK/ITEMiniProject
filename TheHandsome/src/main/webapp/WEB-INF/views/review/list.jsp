<%@ page language="java" contentType="text/html; charset=UTF-8"     pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


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
                                        <th>#번호</th>   <th>작성자</th>     <th>품번</th>
                                        <th>색상</th>   <th>사이즈</th>     <th>작성일</th> <th>별점</th> <th>내용</th> <th>이미지</th>
                                    </tr>
                                </thead>
                                <c:forEach items="${list }" var="board">
                                <tr>
                                <td><c:out value="${board.rno }" /> </td>
                                <td><c:out value="${board.mid}"/> </td>
                                <td><c:out value="${board.pid}"/> </td>
                                <td><c:out value="${board.pcolor}"/> </td>
                                <td><c:out value="${board.psize}"/> </td>
                                <td><c:out value="${board.rdate}"/> </td>
                            	<td><c:out value="${board.rrate}"/> </td>
                            	<td><c:out value="${board.rcontent}"/> </td>
                                <td><c:out value="${board.rimage}"/> </td>
                                
                                <%-- <td> <fmt:formatDate pattern="yyyy-MM-dd" value="${board.rdate }" />  </td>            --%>                  
                                </tr>
                                </c:forEach>
                            </table> <!-- table 태그 끝 -->
   
   <!--페이지 번호 처리  -->   
    <div class="paging" style="display: block;">
            	<a class="prev2" href="/review/list?pageNum=1&amount=${pageMaker.amount}&pid=${param.pid}">처음 페이지로 이동</a>
            	<c:choose>
              		<c:when test = "${pageMaker.pageNum == pageMaker.startPage}">
            			<a href="/review/list?pageNum=1&amount=${pageMaker.amount}&pid=${param.pid}" class="prev">이전 페이지로 이동</a>
            		</c:when>
            		<c:otherwise>
            			<a href="/review/list?pageNum=${pageMaker.pageNum - 1}&amount=${pageMaker.amount}&pid=${param.pid}" class="prev">이전 페이지로 이동</a>
            		</c:otherwise>
            	</c:choose>         
                <span class="num">
                	<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                    <a href="/review/list?pageNum=${num}&amount=${pageMaker.amount}&pid=${param.pid}" class="pageBtn">${num}</a>
                    </c:forEach>
                </span>              	
              	<c:choose>
              		<c:when test = "${pageMaker.pageNum == pageMaker.endPage}">
            			<a href="/review/list?pageNum=${pageMaker.pageNum}&amount=${pageMaker.amount}&pid=${param.pid}" class="next">다음 페이지로 이동</a>
            		</c:when>
            		<c:otherwise>
            			<a href="/review/list?pageNum=${pageMaker.pageNum + 1}&amount=${pageMaker.amount}&pid=${param.pid}" class="next">다음 페이지로 이동</a>
            		</c:otherwise>
            	</c:choose>
            	<a href="/review/list?pageNum=${pageMaker.endPage}&amount=${pageMaker.amount}&pid=${param.pid}" class="next2">마지막 페이지로 이동</a>
        </div>
   
            
            
                            
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
		
			//게시글 등록 처리 
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
			
			//새글 등록 처리
			$("#regBtn").on("click", function () {
				self.location="/board/register";				
			});//end click
			
			//페이징 버튼 처리
			var actionForm = $("#actionForm"); //폼등록
			$(".paginate_button a").on( "click",function(e) {
				e.preventDefault(); //<a> 작동 중지
				console.log('click');
				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				actionForm.submit(); //form submit
			});//end click
			
		});//  end ready

</script>
