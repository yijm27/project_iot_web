<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- 외부 라이브러리이용, UI꾸미기 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/popper/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.js"></script>
		<script>
			
		
		//DOM- //객체의 스타일, 속성 바꾸고 내용 추가
			/* function fun1() {
				//id로 찾기 -> 객체의 속성과 내용을 바꾸기 위해 ( div 테그가 하나의 블록이자 id를 부여하여 객체로 찾을 수 있다)
				//id는 중복 불가
				var div1 = document.getElementById("div1");
				div1.style.backgroundColor = "red";
			} */
			function fun1() {
				//query로 찾기
				var div1 = document.querySelector("#div1");
				div1.style.backgroundColor = "red";
			}
			function fun2() {
				//class로 찾기 -> 동일한 이름의 클래스가 여러개가 가능
				//var class1 = document.getElementByClassName("class1");
				var class1 = document.querySelectorAll(".class1");
				for(var i=0; i<class1.length; i++){
					class1[i].style.backgroundColor = "green";
				}
				
			}
			/* function fun3() {
				//class로 찾기 -> 동일한 이름의 클래스가 여러개가 가능
				var div = document.getElementByTagName("div");
				for(var i=0; i<div.length; i++){
					div[i].style.backgroundColor = "green";
				}
				
			} */
			function fun3() {
				var img1 = document.querySelector("#img1");
				img1.src = "${pageContext.request.contextPath}/resource/img/bg2.jpg";
			}
			function fun4() {
				//추가하는 것은 내용 없는 div로 id를 줘서 내용 추가 실행
				
				var div2 = document.querySelector("#div2");
				div2.innerHTML += "<img src = '${pageContext.request.contextPath}/resource/img/bg1.jpg' />";
			}
			function fun5() {
				/* var loginForm = document.querySelector("#loginForm");
				var mid = loginForm.mid.value;
				var mpassword = loginForm.mpassword.value; */
				
				/* //mid가 하나 일때만 사용( loginform joinform 겹치면 위에있는 것만 찾음)
				var mid = document.querySelector("#mid").value; */
				
				//var mid = document.loginForm.mid.value;
				
				var mid = document.querySelector("#loginForm #mid").value;
				var mpassword = document.querySelector("#loginForm #mpassword").value;
				
				if(mid == "" || mpassword == "") {
					window.alert("필수 입력값이 없습니다.");
					return false;
				} else {
					return true;
				}
			}
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/exam14_dom.jsp</h5>
		<div style="margin-top: 20px; padding:10px; border: 1px solid black;">
			<button onclick="fun1()" style="margin-bottom: 10px;">객체 찾기 by id</button>
			<button onclick="fun2()" style="margin-bottom: 10px;">객체 찾기 by class</button>
			<button onclick="fun3()" style="margin-bottom: 10px;">객체 찾기 tag name</button>
			<div>
				<div id="div1" style="width: 100px; height: 100px; border: 1px solid orange; display: inline-block;">id:div1</div>
				<div class="class1" style="width: 100px; height: 100px; border: 1px solid orange; display: inline-block;">class:class1</div>
				<div class="class1" style="width: 100px; height: 100px; border: 1px solid orange; display: inline-block;">class:class1</div>
			</div>
			
		</div>
		<div style="margin-top: 20px; padding:10px; border: 1px solid black;">
			<button onclick="fun3()" style="margin-bottom: 10px;">속성 변경</button>
			<img id="img1" src="${pageContext.request.contextPath}/resource/img/bg1.jpg"/>
		</div>
		<div style="margin-top: 20px; padding:10px; border: 1px solid black;">
			<button onclick="fun4()" style="margin-bottom: 10px;">내용 채우기</button>
			<div id="div2"></div>
		</div>
		<div style="margin-top: 20px; padding:10px; border: 1px solid black;">
			
			<div>
				<form id="loginForm" name="loginForm" action="main.do" onsubmit="return fun5()">
					<%--id는 객체를 가져올때 name은 서버로 넘겨 줄 때 --%> 
					Id:<input id="mid" name="mid" type="text"/><br/>
					pw:<input id="mpassword" name="mpassword" type="password"/><br/>
					<%--버튼도 submit 효과--%>
					<button style="margin-bottom: 10px;">사용자가 입력한 값 검사후 전송</button>
				</form>
			</div>
		</div>
			
	</body>
</html>