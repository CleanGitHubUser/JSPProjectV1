<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>JSP 프로젝트 V1</title>
		<link href="./css/normalize.css" rel="stylesheet">
		<link href="./css/fatalvirus.css" rel="stylesheet">
		<style>
		#view {
			width: 70%;
			margin: 0 auto;
			/*border: 1px solid red;*/
			padding-top: 55px;
		}
		#view label {
			/*border: 1px solid blue;*/
			display : inline-block;
			width: 80px;
			font-weight: bold;	
		}
		#view div {
			margin: 10px 0;
		}
		#content {
			border: 1px solid indigo;
			display: inline-block;
			width: 540px;
		}
		.dragup {
			vertical-align: top;
		}
		</style>
	</head>
	<jsp:include page="layout/header.jsp"/>
	<body>
		<div id="contents">
		<h2>게시판 본문글</h2>
		<div id="view">
		<div>
			<label>제목</label>
			<span>시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구, 친구! 정말이라구, 친구!</span>
		</div>
		<div>
			<label>작성자</label>
			<span>fatalvirus</span>
		</div>
		<div>
			<label>작성일</label>
			<span>2018-01-15 16:41:53 (777)</span>
		</div>
		<div>
			<label class="dragup">본문</label>
			<span id ="content">
			<%for (int i = 1; i <= 50; ++i) { %>
			시간은 금이라구, 친구!!
			<%} %>
			</span>
		</div>
		</form>
		</div>	<!-- 본문 -->
		<jsp:include page="layout/footer.jsp"/>
	</body>
</html>