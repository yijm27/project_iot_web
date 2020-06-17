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
			function fun1() {
				console.log("fun1() 실행");
				
			}
			function fun2(a, b) {//매개변수 타입 주지 않는다. // default값 없음
				return a+b;
				
			}
			function fun3(a, b) {
				var result = fun2(a, b);
				console.log(result);
			}
			function fun4(result) {
				//휴효성 검사 코드
				if(result == null) {
					return false;
				} else {
					return true;
				}
				
			}
			function fun5() {
						//div에서.form테그의 name. 입력정보name. value
				var mid = document.loginForm.mid.value;
				if(mid == "") {
					return false;
				} else {
					return true;
				}
				
			}
			//함수 객체를 대입 -> var6이 함수 이름이 된다. = function var6() {};
			var var6 = function() {
				console.log("var6() 함수 실행");
			};
		</script>
		
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam06_function.jsp</h5>
		
		<div>
			<button onclick="fun1()" class="btn btn-primary btn-sm">fun1() 호출</button>
			<button onclick="fun3(3, 5)" class="btn btn-primary btn-sm">fun3() 호출- fun2() 호출</button>
			
			<%--a 테크 검사 onclick에 return을 불리안으로 주기!! fun4 먼저 실행 하고 false 리턴 하면 버튼 실행 안함 --%>
			<a onclick="return fun4()" href="main.do" class="btn btn-primary btn-sm">메인 화면</a>
			
			<%--form 테그 검사 --%>
			<form name="loginForm" method="post" action="main.do" onsubmit="return fun5()" style="margin-top: 10px;">
				
				<input type="text" name="mid"/>
				
				<%-- submit 방법 1--%>
				<input type="submit" value="전송" class="btn btn-primary btn-sm" />
				
				<%-- submit 방법 2--%>
				<button class="btn btn-primary btn-sm" >전송(버튼 방식)</button>
				
				<%-- submit 방법 3--%>
				<input type="image" style="margin-top: 20px;" src="${pageContext.request.contextPath}/resource/img/redbutton.png"/>
			</form>
			
			<button onclick="var6()" class="btn btn-primary btn-sm">var6()</button>
		</div>
			
	</body>
</html>