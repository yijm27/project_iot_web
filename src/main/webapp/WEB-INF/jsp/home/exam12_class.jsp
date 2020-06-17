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
			class Car {
				constructor(model, year) {
					console.log("constructor()실행");
					//필드 선언 생성자 내부에서 파이썬 처럼
					this.model = model;
					this.year = year;
					this.speed = 0;
					this._meters = 30;
				}
				//인스턴스 메소드
				setSpeed(speed) {
					this.speed = speed;
				}
				getSpeed() {
					return this.speed;
				}
				//스테틱 메소드
				static getModel() {
					return "ㅎㅇㄶㄶㄴ"; 	
				}
				//겟터 셋터
				get meters(){
					console.log("get methers()");
					return this._meters;
				}
				set meters(value) {
					console.log("set methers()");
					this._meters = value;
				}
			}	
			
			function fun1() {
				//객체 생성
				var myCar = new Car("bentz", "2020");
				//인스턴스 필드 읽기
				console.log(myCar.model);
				console.log(myCar.year)
				//인스턴스 메소드 호출
				myCar.setSpeed(60);
				console.log(myCar.getSpeed());  
				//정적메소드 호출
				
				console.log(Car.getModel());
				//private 필드 접근
				console.log(myCar._meters);
				// setter
				myCar.meters = 60;
				//getter
				console.log(myCar.meters);
				
			}
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/exam12_class.jsp</h5>
		<button onclick="fun1()" class="btn btn-outline-primary btn-sm">객체생성</button>
			
	</body>
</html>