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
<script src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>
<!-- Head 구성 끝 -->

<!-- 차트 링크 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script
	src="https://cdn.anychart.com/releases/8.10.0/js/anychart-base.min.js"></script>
<style type="text/css">
html, body, #container {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}
</style>

</head>
<body>
	<div style="width: 60%">
		<div id="container"></div>


	</div>
	<script>
		var chartLabels = [];
		var chartData = [];
		var chartData2 = [];
		var chartData3 = [];

		var data = $
		{
			accList
		}
		$.each(data, function(inx, obj) {
			chartLabels.push(obj.stockDate);
			chartData.push(obj.stockFluc);
			chartData2.push(obj.kospiFluc)
			chartData3.push(obj.kosdaqFluc)
		});
		console.log(chartLabels)
		console.log(chartData)
		console.log(chartData2)
		console.log(chartData3)
	</script>
	<script>
		// All the code for the JS line chart will come here
		// create a data set on our data
		var dataSet = anychart.data.set(getData());
		// map data for the line chart,
		// take x from the zero column and value from the first column
		var seriesData = dataSet.mapAs({
			x : 0,
			value : 1
		});
		// create a line chart
		var chart = anychart.line();
		//configure the chart title text settings
		chart
				.title('Acceptance of same-sex relationships in the US over the last 2 decades');
		// set the y axis title
		chart.yAxis().title('% of people who accept same-sex relationships');
		//create a line series with the mapped data
		var lineChart = chart.line(seriesData);
		// set the container id for the line chart
		chart.container('container');
		// draw the line chart
		chart.draw();
	</script>
	<script
		src="${ pageContext.request.contextPath}/resources/chart/js/vendor/jquery-1.12.4.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/chart/js/charts/Chart.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/chart/js/charts/line-chart.js"></script>
</body>
</html>