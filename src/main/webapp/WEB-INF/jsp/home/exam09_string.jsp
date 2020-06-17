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
				var str = "123-456-1456";
				console.log(str.substr(0,3));//시작점, 길이 -> sub str
				console.log(str.substring(4,7));//시작점, 끝점-1 -> substring
				var lastIndex = str.lastIndexOf("-");
				console.log(str.slice(lastIndex+1));
			}
			function fun2() {
				var str1 = "010-232-3224";
				var str2 = str1.replace("010","011");
				console.log(str1);
				console.log(str2);
			}
			function fun3() {
				var str1 = "123456-4567890";
				console.log(str1.charAt(7));
			}
			function fun4() {
				var str1 = "010-2323-2322";
				var nums = str1.split("-");
				console.log("nums.length: "+nums.length);
				for(var i=0; i<nums.length; i++){
					console.log(nums[i]);
				}
			}
			function fun5() {
				var var1 ="10";
				var var2 = 5;
				var result = parseInt(var1) + var2;
				console.log(result);
				
				var var1 = "10.3";
				result = parseFloat(var1) + var2;
				console.log(result);
				
			}
		</script>
		
	</head>
	<body>
		<h5 class="alert alert-info">/home/string.jsp</h5>
		
		<div>
			<button onclick="fun1()" class="btn btn-outline-primary btn-sm">문자열 substr_substring_slice</button>
			<button onclick="fun2()" class="btn btn-outline-success btn-sm">문자열 replace</button>
			<button onclick="fun3()" class="btn btn-outline-info btn-sm">문자열 charAt</button>
			<button onclick="fun4()" class="btn btn-outline-danger btn-sm">문자열 split</button>
			<button onclick="fun5()" class="btn btn-outline-primary btn-sm">number methode</button>
		</div>			
	</body>
</html>