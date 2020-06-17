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
				var width = window.innerWidth;
				var height = window.innerHeight;
				console.log(width + "x" + height);
				
			}
			function fun2() {
				
				myWindow = window.open(
						"https://www.w3schools.com", "", "width=500,height=300");

				
			}
			function fun3() {
				myWindow.close();
			}
			
			
			function fun4(start) {
				if(start) {
					//반복 실행 시작
					intervalId = window.setInterval(function() {
						console.log("데이터를 보냅니다.");
						}, 1000
					);
					
				} else {
					//반복실행 중지
					window.clearInterval(intervalId);
				}
			}
			function fun5(start) {
				//알람설정
				if(start) {
					timeoutId = window.setTimeout(function() {
						console.log("알람을 울립니다.")
						}, 3000
					);
				} else {
					window.clearTimeout(timeoutId);
				}
			}
			function fun6() {
				//window는 최 상위 객체 ( 생략 가능)
				window.location.href = "https://www.w3schools.com";
			}
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/exam13_bom.jsp</h5>
		
		<ul>
			<li><a href="javascript:fun1()">창의 크기 정보</a></li>
			<li><a href="javascript:fun2()">새창 띄우기</a></li>
			<li><a href="javascript:fun3()">새창 닫기</a></li>
			<li><a href="javascript:fun4(true)">주기적 실행</a></li>
			<li><a href="javascript:fun4(false)">주기적 멈춤</a></li>
			<li><a href="javascript:fun5(true)">예약 실행</a></li>
			<li><a href="javascript:fun5(false)">예약 취소</a></li>
			<li><a href="javascript:fun6()">URL 변경</a></li>
		</ul>
			
	</body>
</html>