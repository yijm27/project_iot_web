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
		<c:if test="${sessionMid == null}">
			<%--서버에서 실행하는 것 --%>
			<script>
				loginStatus = false;
			</script>
		</c:if>
		<c:if test="${sessionMid != null}">
			<script>
				loginStatus = true;
			</script>
		</c:if>
		<script>
			$(function() {
				if(loginStatus){
					$("#loginForm").hide()
					$("#logoutDiv").show()
				} else {
					$("#loginForm").show()
					$("#logoutDiv").hide()
				}
				
			});
			function fun1() {
				//1)
				$.ajax({
					//2) 비동기 요청 경로
					url:"ajaxContent1.do",
					//4) Callback: 응답이 도착했을 때 자동 실행 
					//data 는 요청 결로에서 forward 해준 jsp에서 div에 있는 데이타를 콜백으로 가져와서 실행한다!
					success:function(data, textStatus,jqXHR) {
						console.log("비동기 결과가 왔습니다.")
						$("#div1").html(data);
					} 
								
				});
				//3)
				console.log("나 실행이 먼저되요~");		
			}
			function fun2() {
				$.ajax({
					url: "ajaxContent2.do",
					//원하는 매개변수만 사용 가능 
					success: function(data) {
						$("#img2").attr("src","${pageContext.request.contextPath}/resource/img/" + data.img)
						
					}
				});
			}
			function fun3() {
				//다음번 실행 할 때 글씨를 대치해 버리기 위해
				$("#errorMid").html("");
				$("#errorMpassword").html("");
				
				var mid = $("#loginForm #mid").val();
				var mpassword = $("#loginForm #mpassword").val();
				if(mid == "" || mpassword =="") return;
				
				//data 는 파라메타이름: 값
				$.ajax({
					url: "ajaxLogin.do",
					//요청해서 서버쪽으로 주는 데이터 (서버쪽에서 사용할 이름: 값을 )
					data: {mid:mid, mpassword:mpassword},
					//요청 되면 응답 준 데이터 이용
					success: function(data) {
							
						if(data.result == "success"){
							$("#loginForm").hide()
							$("#logoutDiv").show()
						} else if(data.result == "wrongMid") {
							$("#errorMid").html(" * ID가 존재하지 않습니다.");
						} else if(data.result == "wrongMpassword") {
							$("#errorMpassword").html(" * 비밀번호가 존재하지 다릅니다.");
						}
					}
				}); 
			}
			function fun4() {
				
				//data 는 파라메타이름: 값
				$.ajax({
					url: "ajaxLogout.do",
					success: function(data) {
							
						if(data.result == "ok"){
							$("#loginForm").show()
							$("#logoutDiv").hide()
						} 
					}
				}); 
			}
		</script>
		
	</head>
	<body>
		<h5 class="alert alert-info">/exam16_ajax.jsp</h5>
		<div style="margin-top: 20px; padding:10px; border: 1px solid black;">
			<button onclick="fun1()" style="margin-bottom: 10px;">AJAX로 HTML 조각 받기</button>
			<%--동적 내용 생성 + ajax --%>
			<div id="div1" style="margin: 10px; padding: 10px; border: 1px solid black;">
			</div>
		</div>
		<div style="margin-top: 20px; padding:10px; border: 1px solid black;">
			<button onclick="fun2()" style="margin-bottom: 10px;">AJAX로 Data(JSON) 받기</button>
			
			<div id="div2" style="margin: 10px; padding: 10px; border: 1px solid black;">
				<img id="img2" width="100px" height="100px" src="${pageContext.request.contextPath}/resource/img/bg1.jpg"/>
			</div>
		</div>
		<div style="margin-top: 20px; padding:10px; border: 1px solid black;">
			<button onclick="fun2()" style="margin-bottom: 10px;">AJAX로 로그인 받기</button>
			
			<div id="div3" style="margin: 10px; padding: 10px; border: 1px solid black;">
				<form id="loginForm" name="loginForm">
					<%--spantag는 짦은 메시지 띄울때  // 내용 넣을 때 append, html 이용--%>
					ID: <input id="mid" name="mid" type="text"/><span id="errorMid" style="color: red;"></span><br/>
					PW: <input id="mpassword" name="mpassword" type="password"/><span id="errorMpassword" style="color: red;"></span> <br/>
					<br/>
					<%--submit 기능이 없는 버튼  --%>
					<input onclick="fun3()" type="button" value="AJAX로 로그인 처리" />
					<a href="javascript:fun3()" class="btn btn-outline-primary btn-sm">AJAX로 로그인</a>
				</form>
				<div id="logoutDiv" style="color: red;">
					<a href="javascript:fun4()" class="btn btn-outline-success btn-sm">AJAX로 로그아웃</a>
				</div>
			</div>
		</div>
	</body>
</html>