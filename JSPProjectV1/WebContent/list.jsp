<%@page import="java.util.Random"%>
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
			table {
				width: 75%;
				margin: 0 auto;
				table-layout: fixed;
				border-collapse: collapse; 
			}
			th, td {
				border: 1px solid black;
				padding: 5px;
				text-align: center;
			}
			.bdtitle {
				white-space: nowrap;
				overflow: hidden;
				text-overflow: ellipsis;
			}
		</style>
	</head>
	<body>
	<div>
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
			<h2>게시판</h2>
			<table>
				<colgroup>
					<col style="width: 10%">
					<col>
					<col style="width: 15%">
					<col style="width: 15%">
					<col style="width: 10%">
				</colgroup><!-- 테이블 열 디자인 -->
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회</th>
				</tr>
			<% Random r = new Random(); %>
			<% for(int i = 1; i <= 25; ++i) { %>
				<tr>
					<td><%=i %></td>
					<td class="bdtitle">
					<a href="view.jsp?bno=<%=i%>">
					시간은 금이라구, 친구! 진짜라구, 친구! 정말이라구! 참말이라구!</a></td>
					<td>fatalvirus</td>
					<td>2018-01-15</td>
					<td><%=r.nextInt(1000) %></td>
				</tr>
			<% } %>
			</table>
		</div>
		</div>	<!-- 본문 -->
		<footer>
			<hr>
			<p>coupyright&copy; 2018. fatalvirus<sup>&reg;</sup>. all rights reserved.</p>
		</footer>	<!-- 꼬릿말 -->
	</body>
</html>