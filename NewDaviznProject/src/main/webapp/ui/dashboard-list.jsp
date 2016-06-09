<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/ui/header.jsp"%>
				
				<!-- content -->
				<div class="container">
					<div class="col-md-12 content-container">
	
						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}/ui/index.jsp">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/ui/dashboard.jsp">대시보드</a></li>
							<li class="active">대시보드 제목</li>
						</ol>
						
						<button type="button" id="widget_create" class="btn btn-success">
							<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 위젯 추가
						</button>
						
						<button type="button" id="widget_getvalue" class="btn btn-primary">
							<span class="glyphicon glyphicon-trash" aria-hidden="true"></span> 위젯값 가져오기
						</button>
						
						<button type="button" id="widget_delete" class="btn btn-danger">
							<span class="glyphicon glyphicon-trash" aria-hidden="true"></span> 대시보드 비우기
						</button>
						
						<select class="form-control dash-list-select">
							<option>내 대시보드 선택</option>
							<option>2</option>
							<option>3</option>
						</select>
						
						<br>
						<br>
						
						<div id="dashboard-container">
				
							<div class="gridster">
						        <ul></ul>
						    </div>
				
						</div>
		
						<br>
					
						<div id="push"></div>
					
					</div>
					
				</div>
			
			</div>
			
		</div>

<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/angular-gridster/gridster.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/grid-test.js"></script>
		
<%@include file="/ui/footer.jsp"%>