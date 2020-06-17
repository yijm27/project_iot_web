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
			function click_handler() {
				console.log("클릭됨");
			}
			function mouseover_handler() {
				console.log("마우스가 올라가 있음");
				div1 = document.getElementById("div1");
				div1.style.backgroundColor="yellow";
			}
			function mouseout_handler() {
				console.log("마우스가 빠져나왔습니다.");
				//객체 찾기
				div1 = document.getElementById("div1");
				//div1는 객체
				div1.style.backgroundColor="red";
			}
		</script>
	</head>
	
	
	<body>
		<h5 class="alert alert-info">/home/exam08_event.jsp</h5>
			
		<div>
			<button onclick="click_handler()"
					onmouseover="mouseover_handler()"
					onmouseout="mouseout_handler()">버튼</button>
			<%-- div에는 내용 없이 영역만 줄 ㅅ ㅜ있다 --%>
			<div id="div1" onclick="click_handler()" style="width: 200px; height: 200px; background-color: red; margin-top: 20px;"
				 onmouseover="mouseover_handler()"
				 onmouseout="mouseout_handler()">div</div>
		</div>	
			
	</body>
</html>