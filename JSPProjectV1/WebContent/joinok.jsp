<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="fatalvirus.jspv1.UserInfo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    
<jsp:useBean id="mi" scope="page" class="fatalvirus.jspv1.UserInfo"/>
<jsp:setProperty property="*" name="mi"/>

<sql:update 
	dataSource="jdbc/oracle"
	sql="insert into member
	(userid, pwd, name, email)
	values (?,?,?,?)">
		<sql:param value="${ mi.uid }"/>
		<sql:param value="${ mi.pwd }"/>
		<sql:param value="${ mi.name }"/>
		<sql:param value="${ mi.email }"/>
</sql:update>
	
<sql:query 
	var = "rs"
	dataSource="jdbc/oracle"
	sql="select regdate
		from member">
</sql:query>

<c:forEach 
	var = "row" 
	items = "${ rs.rows }">
		<c:set 
			var = "regdate" 
			scope = "page"
			value="${ row.regdate }"/>
</c:forEach>
	<jsp:setProperty property="regdate" name="mi" value = "${regdate}"/>
    
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
			<h2>회원가입 처리결과</h2>
			<div>아이디 : 	<jsp:getProperty property="uid" 	name="mi"/></div>
			<div>비밀번호: 	<jsp:getProperty property="pwd" 	name="mi"/></div>
			<div>이름 : 		<jsp:getProperty property="name" 	name="mi"/></div>
			<div>이메일 : 	<jsp:getProperty property="email" 	name="mi"/></div>
			<div>가입일 : 	<jsp:getProperty property="regdate"	name="mi"/></div>
			<hr>
			<div>
				<button type="button" onclick="location='login.jsp'">
				로그인 하러 가기
				</button>
			</div>
		</div>	<!-- 본문 -->
		<jsp:include page="layout/footer.jsp"/>
	</body>
</html>