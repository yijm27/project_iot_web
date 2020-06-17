<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- 외부 라이브러리이용, UI꾸미기, 위에서 아래로 내려오면서 실행, src로 .js실행 시키기 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/popper/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.js"></script>
		
		<script>
			console.log("1")
			
			function fun1() {
				console.log("fun1 실행");
			}
		</script>
		<script src="${pageContext.request.contextPath}/resource/js/exam01_where_to.js"></script>	
	
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam01_where_to.jsp</h5>
		<script>
			console.log("2")
			fun1()
		</script>	
			
		
		<script>
			console.log("3")
			fun1()
		</script>		
	</body>
</html>