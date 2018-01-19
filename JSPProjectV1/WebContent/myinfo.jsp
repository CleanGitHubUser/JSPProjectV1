<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 로그인 하지 않았다면 = 세션 데이터가 없다면 -->
<c:if test = "${ empty myuid }">
	<c:redirect url = "login.jsp" />
</c:if>

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
	<jsp:include page="layout/header.jsp"/>
	<body>
		<div id="contents">
		<h2>회원정보</h2>
		<div id="myinfo">
		<div>
			<label>아이디</label>
			<span>${ myuid }</span>
		</div>
		<div>
			<label>이름</label>
			<span>${ myname }</span>
		</div>
		<div>
			<label>이메일</label>
			<span>${ myemail }</span>
		</div>
		<div>
			<label>가입일</label>
			<span>${ mydate }</span>
		</div>
		</div>
		</div>	<!-- 본문 -->
		<jsp:include page="layout/footer.jsp"/>
	</body>
</html>