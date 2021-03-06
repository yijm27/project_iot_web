<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/popper/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/paho-mqtt/1.0.1/mqttws31.min.js" type="text/javascript"></script>
		
		<script src="${pageContext.request.contextPath}/resource/highcharts/code/highcharts.js"></script>
		<script src="${pageContext.request.contextPath}/resource/highcharts/code/themes/gray.js"></script>

	<style>
	html, body {
		height: "100%";
    	width: "100%";
	}
	</style>
		<script>
			speed = 0
			//센서 구독자
			$(function(){
				sensorClient = new Paho.MQTT.Client(location.hostname, 61614, new Date().getTime().toString());
				sensorClient.onMessageArrived = onMessageArrived;
				console.log("실행 센서 ")
				sensorClient.connect({onSuccess:onConnect});
			});
			function onConnect() {
				console.log("sensor mqtt broker connected");
				sensorClient.subscribe("/temperature_photo");
				sensorClient.subscribe("/gas_tracking_ultraSonic");
				//sensorClient.subscribe("/sensor3");
				sensorClient.subscribe("/camera");
				//sensorClient.subscribe("/actuator"); 
				
			}
			function onMessageArrived(message) {
				console.log(message.destinationName)
				if(message.destinationName == "/camera"){
					$("#cameraView").attr("src", "data:image/jpg;base64," +message.payloadString);
				}
				if(message.destinationName == "/temperature_photo"){
					//가정  {"temperature": 값, "gas":값}
					var obj = JSON.parse(message.payloadString);
					temperatureValue = obj.temperature;
					photoValue = obj.photo;
					$("#sensordata #temperature").attr("value", temperatureValue);
					$("#sensordata #photo").attr("value", photoValue);
					
					
					message = new Paho.MQTT.Message("value:photo");
					message.destinationName = "/sensor2";
					message.qos = 0;
					sensorClient.send(message);
					
				} 
				if (message.destinationName == "/gas_tracking_ultraSonic") {
					var obj = JSON.parse(message.payloadString);
					var ultraSonicValue = obj.ultraSonic;
					var gasValue = obj.gas
					var trackingValue = obj.tracking;
					$("#sensordata #ultraSonic").attr("value", ultraSonicValue);
					$("#sensordata #gas").attr("value", gasValue);
					$("#sensordata #tracking").attr("value", trackingValue);
				}
				if (message.destinationName == "/sensor3") {
					console.log("실행")
					var obj = JSON.parse(message.payloadString);
					var photoValue = obj.photo;
					$("#sensordata #photo").attr("value", photoValue);
				}
						
			}
		</script>
			
		<script>
			function publish() {
				
				speed = $("#speed").val();
								
				message = new Paho.MQTT.Message("value:"+ speed);
				message.destinationName = "/speed";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		
		<script>
			function laserOff() {
				
				var laserOff = "Off";
								
				message = new Paho.MQTT.Message("value:"+ laserOff);
				message.destinationName = "/laser";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function laserOn() {
				
				var laserOn = "On";
								
				message = new Paho.MQTT.Message("value:"+ laserOn);
				message.destinationName = "/laser";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function ledRedOn() {
				
				var ledOn = "red";
								
				message = new Paho.MQTT.Message("value:"+ ledOn);
				message.destinationName = "/led";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function ledRedOff() {
				
				var ledOff = "redOff";
								
				message = new Paho.MQTT.Message("value:"+ ledOff);
				message.destinationName = "/led";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function ledGreenOn() {
				
				var ledOn = "green";
								
				message = new Paho.MQTT.Message("value:"+ ledOn);
				message.destinationName = "/led";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function ledGreenOff() {
				
				var ledOff = "greenOff";
								
				message = new Paho.MQTT.Message("value:"+ ledOff);
				message.destinationName = "/led";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function ledBlueOn() {
				
				var ledOn = "blue";
								
				message = new Paho.MQTT.Message("value:"+ ledOn);
				message.destinationName = "/led";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function ledBlueOff() {
				
				var ledOff = "blueOff";
								
				message = new Paho.MQTT.Message("value:"+ ledOff);
				message.destinationName = "/led";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function ledOff() {
				
				var ledOff = "ledOff";
								
				message = new Paho.MQTT.Message("value:"+ ledOff);
				message.destinationName = "/led";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function buzzerOn() { 
				
				var buzzerOn = "On";
								
				message = new Paho.MQTT.Message("value:"+ buzzerOn);
				message.destinationName = "/buzzer";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function buzzerOff() {
				
				var buzzerOff = "Off";
								
				message = new Paho.MQTT.Message("value:"+ buzzerOff);
				message.destinationName = "/buzzer";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function servoCameraVertical() {
				
				var servo1 = $("#servoCameraVertical").val();
								
				message = new Paho.MQTT.Message("value:"+ servo1);
				message.destinationName = "/servo1";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function servoCameraHorigental() {
				
				var servo2 = $("#servoCameraHorigental").val();
								
				message = new Paho.MQTT.Message("value:"+ servo2);
				message.destinationName = "/servo2";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function servoUltra() {
				
				var servo3 = $("#servoUltra").val();
								
				message = new Paho.MQTT.Message("value:"+ servo3);
				message.destinationName = "/servo3";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		<script>
			function servoTire() {
				
				var servo4 = $("#servoTire").val();
								
				message = new Paho.MQTT.Message("value:"+ servo4);
				message.destinationName = "/servo4";
				message.qos = 0;
				sensorClient.send(message);
			}
		</script>
		
		<script>
		$(document).keydown(function(event) {
			  if (event.keyCode == '37') {
			    alert('좌측 화살키를 누르셨습니다.');
			  }
			  else if (event.keyCode == '39') {
				  	speed = 50
				  	message = new Paho.MQTT.Message("value:"+ speed);
					message.destinationName = "/speed";
					message.qos = 0;
					sensorClient.send(message);
				  }
			  else if (event.keyCode == '38') {
				    alert('위측 화살키를 누르셨습니다.');
				  }
			  else if (event.keyCode == '40') {
				    speed = 0
				  	message = new Paho.MQTT.Message("value:"+ speed);
					message.destinationName = "/speed";
					message.qos = 0;
					sensorClient.send(message);
			  }
			});
		
		
		
		
		</script> 
		<script> 
		// 실시간에 대한 내용이 나와있는 문서.
		var chart;
		function requestData() {
		    $.ajax({
		        url: 'exam04Data',
		        success: function(point) {
		        	point[1] = temperatureValue
		            var series = chart.series[0];
		            var shift = series.data.length > 20;
		            chart.series[0].addPoint(point, true, shift);
		            setTimeout(requestData, 1000);    
		        },
		        cache: false
		    });
		}
		$(function() {
		    chart = new Highcharts.Chart({
		        chart: {
		            renderTo: 'container',
		            defaultSeriesType: 'spline',
		            events: {
		                load: requestData
		            }
		        },
		        title: {
		            text: 'Live random data'
		        },
		        xAxis: {
		            type: 'datetime',
		            tickPixelInterval: 100,
		            maxZoom: 20 * 1000
		        },
		        yAxis: {
		            minPadding: 0.2,
		            maxPadding: 0.2,
		            title: {
		                text: 'Value',
		                margin: 80
		            }
		        },
		        series: [{
		            name: 'Random data',
		            data: []
		        }]
		    });
		});		
		
		var chart2;
		function requestData2() {
		    $.ajax({
		        url: 'exam04Data',
		        success: function(point) {
		            var series = chart.series[0];
		            var shift = series.data.length > 20;
		            chart2.series[0].addPoint(point, true, shift);
		            setTimeout(requestData2, 2000);    //매 1초 단위로 자기 자신을 다시 호출하는 함수.
		            //혹은 setInterval을 써도 됨.
		        },
		        cache: false
		    });
		}
		$(function() {
		    chart2 = new Highcharts.Chart({
		        chart: {
		            renderTo: 'container2',
		            defaultSeriesType: 'spline',
		            events: {
		                load: requestData2
		            }
		        },
		        title: {
		            text: 'Live random data'
		        },
		        xAxis: {
		            type: 'datetime',
		            tickPixelInterval: 100,
		            maxZoom: 20 * 1000
		        },
		        yAxis: {
		            minPadding: 0.2,
		            maxPadding: 0.2,
		            title: {
		                text: 'Value',
		                margin: 80
		            }
		        },
		        series: [{
		            name: 'Random data',
		            data: []
		        }]
		    });
		});			
	</script>
		
	
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam19_mqtt.jsp</h5>
	<div style="width: 100%;height: 100%;background-color: blue;">
			<img id="cameraView"/>
	
		<div id="what2" style="width:400px; height:400px;"></div>		
		<div id="what">
			<div id="sensordata" class="container">
				<div class="row">
					<div class="col-xs-2 col-sm-2" style="text-align:center">온도</div>
					<div class="col-xs-2 col-sm-2" style="text-align:center">포토</div>
					<div class="col-xs-2 col-sm-2" style="text-align:center">가스</div>
					<div class="col-xs-2 col-sm-2" style="text-align:center">초음파</div>
					<div class="col-xs-2 col-sm-2" style="text-align:center">트래킹</div>
				</div>
				<div class="row">
					<div class="col-xs-2 col-sm-2" style="text-align:center;"><input id="temperature" type="text" value=""/></div>
					<div class="col-xs-2 col-sm-2" style="text-align:center;"><input id="photo" type="text" value=""/></div>
					<div class="col-xs-2 col-sm-2" style="text-align:center;"><input id="gas" type="text" value=""/></div>
					<div class="col-xs-2 col-sm-2" style="text-align:center;"><input id="ultraSonic" type="text" value=""/></div>
					<div class="col-xs-2 col-sm-2" style="text-align:center;"><input id="tracking" type="text" value=""/></div>
				</div>
			</div>
		</div>
				
			
		
		<div>
	  		DC모터
	  		<input id="speed" name="speed" type="text" />
	  		<input class="togglebtn" onclick="publish()" type="button" value="speed" />
	  	</div>
	  	<div>
	  		servoCameraVertical()
	  		<input id="servoCameraVertical" name="servoCameraVertical" type="text" />
	  		<input class="togglebtn" onclick="servoCameraVertical()" type="button" value="servoCameraVertical" />
	  	</div>
	  	<div>
	  		servoCameraHorigental()
	  		<input id="servoCameraHorigental" name="servoCameraHorigental" type="text" />
	  		<input class="togglebtn" onclick="servoCameraHorigental()" type="button" value="servoCameraHorigental" />
	  	</div>
	  	<div>
	  		servoUltra()
	  		<input id="servoUltra" name="servoUltra" type="text" />
	  		<input class="togglebtn" onclick="servoUltra()" type="button" value="servoUltra" />
	  	</div>
	  	<div>
	  		servoTire()
	  		<input id="servoTire" name="servoTire" type="text" />
	  		<input class="togglebtn" onclick="servoTire()" type="button" value="servoTire" />
	  	</div>
		
		<div>
	  		빵빵
	  		<input class="togglebtn" onclick="buzzerOn()" type="button" value="buzzerOn" />
	  		<input class="togglebtn" onclick="buzzerOff()" type="button" value="buzzerOff" />
	  	</div>
	  	<div>
	  		레이져
	  		<input class="togglebtn" onclick="laserOn()" type="button" value="laserOn" />
	  		<input class="togglebtn" onclick="laserOff()" type="button" value="laserOff" />
	  	</div>
	  	<div>
	  		LedRed
	  		<input class="togglebtn" onclick="ledRedOn()" type="button" value="ledRedOn" />
	  		<input class="togglebtn" onclick="ledRedOff()" type="button" value="ledRedOff" />
			LedGreen	  		
	  		<input class="togglebtn" onclick="ledGreenOn()" type="button" value="ledGreenOn" />
	  		<input class="togglebtn" onclick="ledGreenOff()" type="button" value="ledGreenOff" />
	  		LedBlue
	  		<input class="togglebtn" onclick="ledBlueOn()" type="button" value="ledBlueOn" />
	  		<input class="togglebtn" onclick="ledBlueOff()" type="button" value="ledBlueOff" />
	  		LedOff
	  		<input class="togglebtn" onclick="ledOff()" type="button" value="ledOff" />
	  	</div>
	</div>
	</body>
</html>