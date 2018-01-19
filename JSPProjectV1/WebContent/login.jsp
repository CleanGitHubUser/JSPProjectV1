<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:if test = "${ not empty myuid }">
	<c:redirect url = "logout.jsp" />
</c:if>

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
	<jsp:include page="layout/header.jsp"/>
	<div id="contents">
		<h2>로그인</h2>
		<form id="loginfrm" method="post" action="loginok.jsp">
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
					<button type="submit">로그인</button>
				</div>
		</form>
	</div>	<!-- 본문 -->
	<jsp:include page="layout/footer.jsp"/>
	</body>
</html>