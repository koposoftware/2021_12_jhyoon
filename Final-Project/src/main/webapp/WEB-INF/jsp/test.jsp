<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Head 구성  -->
<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>
	<script
		src="${ pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<!-- Load jQuery require for isotope -->
	<script
		src="${ pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<!-- Isotope -->
	<script
		src="${ pageContext.request.contextPath}/resources/js/isotope.pkgd.js"></script>
	<!-- Page Script -->

	<!-- Templatemo -->
	<script
		src="${ pageContext.request.contextPath}/resources/js/templatemo.js"></script>
	<!-- Custom -->
	<script
		src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>
<!-- Head 구성 끝 -->

 <!-- 차트 링크 --> 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>
<div style="width:60%">
	<div>
		<canvas id="myChart"  width="100%"></canvas>
	</div>
</div>
	<script>
	var chartLabels = [];
	var chartData = [];
	var chartData2 = [];
	var chartData3 = [];
	
	var data = ${accList}
	$.each(data, function(inx, obj){
		chartLabels.push(obj.stockDate);
		chartData.push(obj.stockFluc);
		chartData2.push(obj.kospiFluc)
		chartData3.push(obj.kosdaqFluc)
	});
	console.log(chartLabels)
	console.log(chartData)

	var ctx = document.getElementById('myChart').getContext('2d');
	var chart = new Chart(ctx, { 
		// 챠트 종류를 선택 
		type: 'line', 
		// 챠트를 그릴 데이타 
		data: { labels: chartLabels, 
		datasets: [{ 
			label: '수익률', 
			backgroundColor: 'transparent',
			borderColor: 'red', 
			data: chartData
		},		{ 
			label: '코스피', 
			backgroundColor: 'transparent',
			borderColor: 'orange', 
			data: chartData2 
		},	{ 
			label: '코스닥', 
			backgroundColor: 'transparent',
			borderColor: 'blue', 
			data: chartData3 
		},
		
		
		
		
		] 
		}, 
		// 옵션 
		options: {} 
		});
	

	
	</script>
</body>
</html>