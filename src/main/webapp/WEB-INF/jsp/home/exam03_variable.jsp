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
			//전역 변수 선언
			var var1 = 10;
			var var2 = '자바스크립트';
			var var3 = true;
			
			//함수 -> 변수는 함수 네임스페이스에서 사용하므로 중괄호에 있는 변수 사용 가능
			function fun1() {
				//로컬 변수 선언
				var var4 = 3.14;
				if(true) {
					//로컬 변수 선언
					var var5 = "나는 로컬입니다.";
					//전역 변수를 선언 가능(var 빼기)
					var6 = "나는 전역 변수입니다.";
				}
				//변수 사용 
				console.log("var1:" + var1);
				console.log("var4:" + var4);
				console.log("var5:" + var5);
			}
			//함수 호출
			fun1();
			//변수 사용
			console.log("var6:" + var6);
		</script>
		
		
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam03_variable.jsp</h5>
		
		<div>
			<a href="javascript:fun1()" class="btn btn-success btn-sm"> fun1() 호출</a>
		</div>
			
	</body>
</html>