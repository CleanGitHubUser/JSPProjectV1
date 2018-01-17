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
		#myinfo {
			width: 400px;
			margin: 0 auto;
			/*border: 1px solid red;*/
			padding-top: 125px;
		}		
		#myinfo label {
			/*border: 1px solid blue;*/
			display : inline-block;
			width: 120px;
			text-align: right;
			font-weight: bold;	
			padding-right: 15px;
		}
		#myinfo div {
			margin: 7px 0;
		}
		</style>
	</head>
	<body>
		<header>
			<h1>JSP 프로젝트 V1</h1>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="join.jsp">회원가입</a></li>
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="list.jsp">게시판</a></li>
				<li><a href="myinfo.jsp">회원정보</a></li>
			</ul>
			<hr>
		</header>	<!-- 머릿글 -->
		<div id="contents">
		<h2>회원정보</h2>
		<div id="myinfo">
		<div>
			<label>아이디</label>
			<span>fatalvirus</span>
		</div>
		<div>
			<label>이름</label>
			<span>으하하하</span>
		</div>
		<div>
			<label>이메일</label>
			<span>bigdatajeewoong@gmail.com</span>
		</div>
		<div>
			<label>가입일</label>
			<span>2018-01-16 16:15:36</span>
		</div>
		</div>
		</div>	<!-- 본문 -->
		<footer>
			<hr>
			<p>coupyright&copy; 2018. fatalvirus<sup>&reg;</sup>. all rights reserved.</p>
		</footer>	<!-- 꼬릿말 -->
	</body>
</html>