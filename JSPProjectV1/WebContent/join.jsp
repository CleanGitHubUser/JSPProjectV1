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
		#joinfrm {
			width: 600px;
			margin: 0 auto;
			/*border: 1px solid red;*/
			padding-top: 100px;
		}		
		#joinfrm label {
			/*border: 1px solid blue;*/
			display : inline-block;
			width: 220px;
			text-align: right;
			font-weight: bold;	
		}
		#joinfrm div {
			margin: 5px 0;
		}
		/*button[type=submit] {
			margin-left: 120px;
		}*/
		</style>
	</head>
	<body>
		<jsp:include page="layout/header.jsp"/>
	<div id="contents">
		<h2>회원가입</h2>
		<form id="joinfrm" method="post" action="joinok.jsp">
		<div>
			<label for="uid">아이디</label>
			<input type="text" name="uid" id="uid">
			<span id = "umsg"></span>
		</div>
		<div>
			<label for="pwd">비밀번호</label>
			<input type="password" name="pwd" id="pwd">
		</div>
		<div>
			<label for="repwd">비밀번호 확인</label>
			<input type="password" name="repwd" id = "repwd">
		</div>
		<div>
			<label for="name">이름</label>
			<input type="text" name="name" id = "name">
		</div>
		<div>
			<label for="email">이메일</label>
			<input type="text" name="email" id = "email">
		</div>
		<div>
			<label></label>
			<button type="submit" id = "joinbtn">입력완료</button>
			<button type="reset">다시입력</button>
		</div>
		</form>	<!-- 본문 -->
	</div>
		<jsp:include page="layout/footer.jsp"/>		
		<script>
			var joinfrm = document.getElementById("joinfrm");
			joinfrm.onsubmit = checkjoin;	// 이벤트 등록
			// submit 버튼 클릭시 checkjoin 함수 실행
			
			var uid = document.getElementById("uid");	// 아이디
			var pwd = document.getElementById("pwd");	// 비밀번호
			var repwd = document.getElementById("repwd");	// 비밀번호확인
			var name = document.getElementById("name");	// 이름
			var email = document.getElementById("email");	// 이름
			
			function checkjoin() {
				if (uid.value == "") {
					alert("아이디를 입력하세요!");
					uid.focus();
				} else if (pwd.value == "") {
					alert("비밀번호를 입력하세요!");
					pwd.focus();
				} else if (repwd.value == "") {
					alert("비밀번호를 한 번 더 입력하세요!");
					repwd.focus();
				} else if (pwd.value != repwd.value) {
					alert("비밀번호가 일치하지 않습니다!");
					repwd.focus();
				} else if (name.value == "") {
					alert("이름을 입력하세요!");
					name.focus();
				} else {
				return true;	// submit 기능 동작
				}
				return false;	// submit 기능 중지
				
			}
		</script>
		
	<script>
		function checkUserid() {
			// 1. 
			var ajax = new XMLHttpRequest();
			// 2. 이벤트 처리 함수는 콜백방식으로 처리
			ajax.onload = function() {
				if (ajax.status == 200) {	// 정상처리시

					var result = ajax.responseText.replace(/(\s*)/g, "");
					// 빈칸을 공백으로 바꿈
					
					var isUsedID = false;
					
					if (result != "") isUsedID = true;
					
					if (isUsedID) {
						umsg.innerHTML = "사용중인 아이디";
						umsg.style.color = 'red';
						joinbtn.disabled = true;
					} else {
						umsg.innerHTML = "사용가능 아이디"
						umsg.style.color = 'blue';
						joinbtn.disabled = false;
					}
				} else {	// 비정상처리시
					alert('어쨌든 오류발생!');
				}
			};
			// 3.
			ajax.open("get", "checkuid.jsp?uid=" + uid.value, true);
			ajax.send(null);
		}
		
		// 회원가입 폼요소에 이벤트 추가하기
		var uid = document.getElementById("uid");
		var umsg = document.getElementById("umsg");	
		var joinbtn = document.getElementById("joinbtn");	
		
		uid.addEventListener('blur', checkUserid);
		
	</script>
		
	</body>
</html>