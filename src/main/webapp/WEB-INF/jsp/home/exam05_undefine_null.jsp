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
				var var1;
				var var2 = null;
				console.log("var1:" + var1); // undefined
				console.log("var2:" + var2);// null
				console.log(var1 == var2);// 동등 비교 true
				if(var1) console.log("실행1");//false로 실행 안함
				if(var2) console.log("실행2");//false로 실행 안함
			}
		</script>
		
		
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam05_undefine_null.jsp</h5>
		
		<div>
			<a href="javascript:fun1()" class="btn btn-success btn-sm"> fun1() 호출</a>
		</div>
			
	</body>
</html>