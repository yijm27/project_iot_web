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
				//객체 생성 (클래스 없이 객체 생성)
				car = {
					//속성
					name:"Bentz",
					model:"세단",
					weight:850,
					color:"흰색",
					speed:0,
					//메소드
					start: function() {
						console.log("시동을 겁니다.");
					},
					drive: function() {
						console.log(this.speed + "로 달립니다.");
					},
					setSpeed: function(speed) {
						this.speed = speed;
					},
					brake: function() {
						console.log("자동차를 멉춥니다.");
						this.stop();
					},
					stop: function() {
						console.log("시동을 끕니다.");
					}
				};
			}
			function fun2() {
				console.log(car.name);
				console.log(car.model);
				console.log(car.weight);
				console.log(car.color);
				console.log(car.speed);
				
				car.start();
				car.speed = 60;
				car.drive();
				car.brake();
				car.stop();
			}
			
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam07_object.jsp</h5>
		<button onclick="fun1()">객체 생성</button>
		<button onclick="fun2()">객체 사용</button>	
	</body>
</html>