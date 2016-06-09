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
							<li class="active">차트형 데이터 만들기</li>
						</ol>
						<div><input type="text" value="데이터 제목을 입력하세요."></div> 
						<a href="#" class="btn btn-info sendjson button">요걸 누르면 json으로 비동기 보냄</a>
						<a href="#" class="btn btn-success loadjson button">요걸 누르면 json 불러옴</a>
						<a href="#" class="btn btn-danger reset button">리셋</a>
						<div id="edittable"></div>
				
					</div>
				
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>

<script src="${pageContext.request.contextPath}/resources/lib/editTable/jquery.edittable.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/data-create-general.js" type="text/javascript"></script>		

<%@include file="/ui/footer.jsp"%>