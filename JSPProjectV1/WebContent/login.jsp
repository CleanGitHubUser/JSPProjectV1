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
		#loginfrm {
			/*border: 1px solid blue;*/
			width: 400px;
			margin: 0 auto;
			padding-top: 120px;
		}
		#loginfrm label {
			/*border: 1px solid red;*/
			display: inline-block;
			width: 115px;
			text-align: right;
			font-weight: bold;
		}
		#loginfrm div {
			margin: 7px 0;
		}
		</style>
	</head>
	<body>
	<div id="contents">
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
		<h2>로그인</h2>
		<form id="loginfrm">
				<div>
					<label for="uid">아이디</label>
					<input type="text" name="uid" id="uid"
					placeholder="아이디" required="required">
				</div>
				<div>
					<label for="pwd">비밀번호</label>			
					<input type="password" name="pwd" id="pwd"
					placeholder="비밀번호" required="required">
				</div>
				<div>
					<label></label>	
					<buton type="submit">로그인</button>
				</div>
		</form>
	</div>	<!-- 본문 -->
	<footer>
		<hr>
		<p>coupyright&copy; 2018. fatalvirus<sup>&reg;</sup>. all rights reserved.</p>
	</footer>	<!-- 꼬릿말 -->
	</body>
</html>