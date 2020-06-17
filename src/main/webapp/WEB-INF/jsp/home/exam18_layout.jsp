<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- 외부 라이브러리이용, UI꾸미기 -->
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
		<script
			src="${pageContext.request.contextPath}/resource/jquery/jquery.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resource/popper/popper.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.css">
		<script
			src="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.js"></script>
		
		<style>
			
			* {
				box-sizing: border-box;
			}
			
			body {
				font-family: Arial, Helvetica, sans-serif;
			}
			
			/* Style the header(모두 블록 요소 검색엔진 + 가독성을 위해 구분) */
			header {
				background-color: #666;
				padding: 30px;
				text-align: center;
				font-size: 35px;
				color: white;
			}
			
			/* Create two columns/boxes that floats next to each other */
			nav {
				float: left;
				width: 30%;
				height: 300px; /* only for demonstration, should be removed */
				background: #ccc;
				padding: 20px;
			}
			
			/* Style the list inside the menu (nva 안에 ul태그)*/
			nav ul {
				list-style-type: none;
				padding: 0;
			}
			
			article {
				float: left;
				padding: 20px;
				width: 70%;
				background-color: #f1f1f1;
				height: 300px; /* only for demonstration, should be removed */
			}
			
			/* Clear floats after the columns */
			section:after {
				content: "";
				display: table;
				clear: both;
			}
			
			/* Style the footer */
			footer {
				background-color: #777;
				padding: 10px;
				text-align: center;
				color: white;
			}
			
			
		</style>
	</head>
	<body>
		<header>
			<h2>Cities</h2>
		</header>
	
		<section>
			<nav>
				<ul>
					<li><a href="#">London</a></li>
					<li><a href="#">Paris</a></li>
					<li><a href="#">Tokyo</a></li>
				</ul>
			</nav>
	
			<article>
				<h1>London</h1>
				<p>London is the capital city of England. It is the most populous
					city in the United Kingdom, with a metropolitan area of over 13
					million inhabitants.</p>
				<p>Standing on the River Thames, London has been a major
					settlement for two millennia, its history going back to its founding
					by the Romans, who named it Londinium.</p>
			</article>
		</section>
	
		<footer>
			<p>Footer</p>
		</footer>

	</body>
</html>
