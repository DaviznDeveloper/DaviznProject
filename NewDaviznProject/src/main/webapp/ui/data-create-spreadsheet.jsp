<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/ui/header.jsp"%>
				
				<!-- content -->
				<div class="loading-container">
					<img class="loading-img" src="${pageContext.request.contextPath}/resources/img/davizn-loading.gif">
				</div>
				
				<div class="container">
				
					<div class="col-md-12 content-container">

						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}/ui/index.jsp">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/ui/data-repo.jsp">데이터 관리</a></li>
							<li><a href="${pageContext.request.contextPath}/ui/data-repo.jsp">저장소 제목</a></li>
							<li class="active">엑셀형 데이터 만들기</li>
						</ol>

						
						<a href="#" class="btn btn-info sendjson button">요걸 누르면 json으로 비동기 보냄</a>
						<a href="#" class="btn btn-success loadjson button">요걸 누르면 json 불러옴</a>
						<a href="#" class="btn btn-danger reset button">리셋</a>
						
						<hr>

						<div class="row">
							<div class="col-lg-2">
								<div class="input-group">
									<div class="input-group">
									<input type="text" id="create-rows-input" class="form-control" placeholder="줄 갯수">
									<span class="input-group-btn">
										<button id="create-rows" class="btn btn-success" type="button">추가</button>
									</span>
								</div>
								</div>
								<!-- /input-group -->
							</div>
							<!-- /.col-lg-6 -->
							<div class="col-lg-2">
								<div class="input-group">
									<input type="text" id="create-cols-input" class="form-control" placeholder="칸 갯수">
									<span class="input-group-btn">
										<button id="create-cols" class="btn btn-success" type="button">추가</button>
									</span>
								</div>
								<!-- /input-group -->
							</div>
							<!-- /.col-lg-6 -->
						</div>
						<!-- /.row -->
				
						<div id="jqs" class="col-md-12 col-xs-12 no-padding"></div>
				
					</div>
				
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>
		
<script src="${pageContext.request.contextPath}/resources/lib/ipgrid-master/ip.grid.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/data-create-spreadsheet.js"></script>

<%@include file="/ui/footer.jsp"%>