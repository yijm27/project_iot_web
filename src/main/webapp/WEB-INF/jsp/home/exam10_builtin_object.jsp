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
				var arr1 = ["Bentz", "Volvo", "BMW"];
				var arr2 = new Array("Bentz", "Volvo", "BMW");
				
				for(var i=0; i<arr1.length; i++) {
					console.log(arr1[i]);
				}
				arr1[0] = "벤츠";
				arr1[1] = "볼보";
				arr1[2] = "비엠터블ㄹ유";
				console.log(arr1);//객체의 내용을 보여준다
				
				//[]는 배열(list 가변길이) , {}객체
				var arr3 = [
					{mid:"summer", mname:"하여름"},
					{mid:"fall", mname:"김가을"},
					{mid:"winter", mname:"이겨율"}];
				console.log(arr3);
				console.log(arr3[1].mname);
				//console.log(arr3[1][0]); 안됨
				
				//요소추가 push
				var arr4 = [];
				arr4[0] = "파이썬";
				arr4[1] = "자바스크립트";
				//리스트 마지막에 
				arr4.push("ㄴㅇㄹㄴㄴㅇㄹ");
				console.log(arr4);
				
				//반복처리
				var arr5 = ["Banana", "Orange", "Apple", "Mango"];
				//how1
				var length = arr5.length;
				for(var i=0; i<length; i++) {
					console.log(arr5.pop());
				}
				//how2 ->
				arr5 = ["Banana", "Orange", "Apple", "Mango"];
				arr5.forEach(function (value, index) {
					console.log("value:" + value + ", index:"+ index );
				})
				/* arr5.forEach(handle);
				function handle(value, index) {
					이것과 위에 익명으로 함수 대입하는 것은 동일
				} */
				
				//요소 교체
				var arr6 = ["Banana", "Orange", "Apple", "Mango"];
							//index위치, 삭제할 개수, 대입할 객체;
				arr6.splice(2, 0, "Lemon", "Kiwi");// 삽입
				console.log(arr6);
				arr6.splice(1, 1, "오렌지");// 교체
				console.log(arr6);
			}
			function fun2() {
				var now = new Date();
				console.log(now.getFullYear() + "-" + (now.getMonth()+1) + "-" + now.getDate());
			}
			function fun3() {
				var obj = {
						mid:"summer",
						mname:"홍길동",
						mage:30,
						hobby: ["movie", "gaming", "trip"],
						adult:true
				};
				//object -> JSON
				var strJson = JSON.stringify(obj);
				console.log(strJson);
				//JSON to Object
				var obj2 = JSON.parse(strJson);
				console.log(obj2);
				console.log(obj2.mname);
				console.log(obj2.hobby);
			}
				
			
		</script>
		
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam10_builtin_object.jsp</h5>
		
		<div>
			<button onclick="fun1()" class="btn btn-outline-primary btn-sm">배열_array</button>
			<button onclick="fun2()" class="btn btn-outline-primary btn-sm">Date</button>
			<button onclick="fun3()" class="btn btn-outline-primary btn-sm">Json 문자열 처리</button>
		</div>
					
	</body>
</html>