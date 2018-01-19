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
		</style>
		<style>
			img { margin: 150px 320px; }
		</style>
	</head>
	<body>
		<jsp:include page="layout/header.jsp"/>
		<div id="contents">
			<a href="https://www.kakaocorp.com/service/KakaoTalk">
			<img alt="카카오톡" src="./images/kakaotalk.png"></a>
		</div>	<!-- 본문 -->
		<jsp:include page="layout/footer.jsp"/>
	</body>
</html>