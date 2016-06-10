<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
				
				<!-- content -->
				<div class="container">
					<div class="col-md-12 content-container">
	
						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}/ui/index.jsp">홈</a></li>
							<li class="active">1:1 문의&건의</li>
						</ol>
						
						<div class="col-md-12 no-padding margin-bottom-10">
						
							<form action="" method="post">
	
								<div class="col-md-2 col-xs-2 no-padding margin-right-10">
									<select class="form-control">
										<option>작성자</option>
										<option>글제목</option>
										<option>글번호</option>
									</select>
								</div>
	
								<div class="col-md-3 col-xs-2 no-padding">
									<div class="input-group">
										<span class="input-group-btn">
											<button class="btn btn-info" type="button">
												<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
											</button>
										</span>
										<input type="text" class="form-control" placeholder="Search for...">
									</div>
									<!-- /input-group -->
								</div>
					
							</form>
								
							<div class="col-md-2 col-xs-2 no-padding pull-right">
								<select class="form-control">
									<option>5개씩 보기</option>
									<option>10개씩 보기</option>
									<option>15개씩 보기</option>
									<option>20개씩 보기</option>
								</select>
							</div>
							
						</div>
						
						<div class="col-md-12 table-responsive no-padding">
					
							<table class="table" style=TABLE-layout:fixed>
							
								<thead class="board-thead">
								
									<tr>
									
										<th scope="col" class="board-l-no">번호</th>
										<th scope="col" class="board-l-title">제목</th>
										<th scope="col" class="board-l-writer">작성자</th>
										<th scope="col" class="board-l-date">작성일</th>
										<th scope="col" class="board-l-lookup">조회</th>
										
									</tr>
								
								</thead>
								
								<tbody>
									
									<c:forEach items="${list}" var="n">
										<tr>
											<td class="seq">${n.boardseq}</td>
											<td class="title"><a href="noticeDetail.htm?seq=${n.boardseq}">${n.boardsubject}</a></td>
											<td class="writer">${n.nickname}</td>
											<td class="regdate">${n.boarddate}</td>
											<td class="hit">${n.boardreadcount}</td>
										</tr>
									</c:forEach>
								
								</tbody>
							
							</table>
						
						</div>
						
						<div class="col-md-12">
							<a href="${pageContext.request.contextPath}/qnaWrite.dvn" class="btn btn-success pull-right">글쓰기</a>
						</div>

						<div class="text-center">
							<ul class="pagination">
								<li>
									<a href="#" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
									</a>
								</li>
								<li class="board-pager active"><a href="#">1</a></li>
								<li class="board-pager"><a href="#">2</a></li>
								<li class="board-pager"><a href="#">3</a></li>
								<li class="board-pager"><a href="#">4</a></li>
								<li class="board-pager"><a href="#">5</a></li>
								<li>
									<a href="#" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
									</a>
								</li>
							</ul>
						</div>
				
						<!-- 
						<table class="col-md-12 no-padding table table-hover">
						
							<tr class="board-tr">
								<th class="board-th board-no">글번호</th>
								<th class="board-th board-title">글제목</th>
								<th class="board-th board-writer">작성자</th>
								<th class="board-th board-date">작성일</th>
								<th class="board-th board-lookup">조회수</th>
							</tr>
							
							<tr>
								<td class="board board-no">1</td>
								<td class="board board-title">안뇽하세용</td>
								<td class="board board-writer">kglim</td>
								<td class="board board-date">2016.06.08</td>
								<td class="board board-lookup">1</td>
							</tr>
							
							<tr>
								<td class="board board-no">2</td>
								<td class="board board-title">반갑습니당당당</td>
								<td class="board board-writer">kglim</td>
								<td class="board board-date">2016.06.08</td>
								<td class="board board-lookup">1</td>
							</tr>
						
						</table>
						 -->
						
						<br>
					
						<div id="push"></div>
					
					</div>
					
				</div>
			
			</div>
			
		</div>
		
<script src="${pageContext.request.contextPath}/resources/js/community.js"></script>
