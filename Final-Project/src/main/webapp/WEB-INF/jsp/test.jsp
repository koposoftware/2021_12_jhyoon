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
<style type="text/css">
html, body, #container {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}
div{
width:1200px;
height:1000px;

}
</style>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
   <div>
  												<canvas id="myChart"></canvas>
											</div>
											

<script type="text/javascript">
	var chartLabels = [];
	var data = [];
	var data2 = [];
	//var chartData3 = [];

	var dataSet = ${stockDayList}
	$.each(dataSet, function(inx, obj) {
		chartLabels.push(obj.stockDate);
		data.push(obj.stockFluc);
		data2.push(obj.kospiFluc);
	});
	console.log(data);
	console.log(data2);
	//console.log(chartData3);
	
	var config = {
			  type: 'line',
			  data: {
				labels : chartLabels,
			    datasets: [{
			      borderColor: '#00c292',
			      borderWidth: 1,
			      radius: 0,
			      data: data,
			    },
			    {
			      borderColor: '#fb9678',
			      borderWidth: 1,
			      radius: 0,
			      data: data2,
			    }]
			  },
			  options: {
			    interaction: {
			      intersect: false
			    },
			    plugins: {
			      legend: false
			    },
			    scales: {
			    	xAxes: [{
						display: true,
						scaleLabel: {
							display: true,
							labelString: 'Month'
						}
					}],
					yAxes: [{
						display: true,
						scaleLabel: {
							display: true,
							labelString: 'Value'
						}
					}]
			    }
			  }
			};
	
	var totalDuration = 10000;
	var delayBetweenPoints = totalDuration / data.length;
	var previousY = (ctx) => ctx.index === 0 ? ctx.chart.scales.y.getPixelForValue(100) : ctx.chart.getDatasetMeta(ctx.datasetIndex).data[ctx.index - 1].getProps(['y'], true).y;
	var animation = {
	  x: {
	    type: 'number',
	    easing: 'linear',
	    duration: delayBetweenPoints,
	    from: NaN, // the point is initially skipped
	    delay(ctx) {
	      if (ctx.type !== 'data' || ctx.xStarted) {
	        return 0;
	      }
	      ctx.xStarted = true;
	      return ctx.index * delayBetweenPoints;
	    }
	  },
	  y: {
	    type: 'number',
	    easing: 'linear',
	    duration: delayBetweenPoints,
	    from: previousY,
	    delay(ctx) {
	      if (ctx.type !== 'data' || ctx.yStarted) {
	        return 0;
	      }
	      ctx.yStarted = true;
	      return ctx.index * delayBetweenPoints;
	    }
	  }
	};
	
	var myChart = new Chart(document.getElementById('myChart'),config);


</script>
</body>
</html>