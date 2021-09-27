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
<!-- Resources -->
<!-- <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.1/chart.min.js"></script>
</head>
<body>
<canvas id="Chart"></canvas>
<script type="text/javascript">
var chartLabels = [];
var earningRate = [];

var dataSet = ${accList}
$.each(dataSet, function(inx, obj) {
	chartLabels.push(obj.backDate);
	earningRate.push(obj.earningRate);
});


	var config = {
		type : 'line',
		data : {
			labels : chartLabels,
			datasets : [ {
				label : "수익률",
				borderColor : '#00c292',
				borderWidth : 2,
				radius : 0,
				data : earningRate
			} ]
		},
		options : {
			interaction : {
				intersect : false
			},
			plugins : {
				legend:false
			},
			legend : {
				display : false,
				position : 'bottom',
				labels : {
					fontSize : 32
				}
			},
			scales : {
				xAxes : [ {
					type : 'time',
					time : {
						unit : 'month'
					},
					display : false,
					scaleLabel : {
						display : false,
						labelString : '(년월)',
						fontColor : '#999'
					},
					ticks :{
						display:false
					}
				} ],
				yAxes : [ {
					ticks :{
						display:false
					}
				} ]
			}
		}
	}; 
var Chart = new Chart(document.getElementById('Chart'),config);
</script>

    <script type="text/javascript" src="jquery-1.7.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.sparkline.js"></script>

    <script type="text/javascript">

    $(function() {
        var chartLabels = [];
        var earningRate = [];

        var dataSet = ${accList}
        $.each(dataSet, function(inx, obj) {
        	chartLabels.push(obj.backDate);
        	earningRate.push(obj.earningRate);
        });
        /** This code runs when everything has been loaded on the page */
        /* Inline sparklines take their values from the contents of the tag */
        $('.inlinesparkline').sparkline(); 

        /* Sparklines can also take their values from the first argument 
        passed to the sparkline() function */
        var myvalues = [10,8,5,7,4,4,1];
        $('.dynamicsparkline').sparkline(earningRate);

        /* The second argument gives options such as chart type */
        $('.dynamicbar').sparkline(myvalues, {type: 'bar', barColor: 'green'} );

        /* Use 'html' instead of an array of values to pass options 
        to a sparkline with data in the tag */
        $('.inlinebar').sparkline('html', {type: 'bar', barColor: 'red'} );
    });
    </script>

<p>
Inline Sparkline: <span class="inlinesparkline">1,4,4,7,5,9,10</span>.
</p>
<p>
Sparkline with dynamic data: <span class="dynamicsparkline">Loading..</span>
</p>



<!--   <script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart
var chart = am4core.create("chartdiv", am4charts.XYChart);


var chartLabels = [];
var stockFluc = [];
var kospiFluc = [];
var kosdaqFluc = [];

var dataSet = ${stockDayList}
$.each(dataSet, function(inx, obj) {
	chartLabels.push(obj.stockDate);
	stockFluc.push(obj.stockFluc);
	kospiFluc.push(obj.kospiFluc);
	kosdaqFluc.push(obj.kosdaqFluc);
});

var newDate = [];
chartLabels.forEach( (d) => {
	var strArr = d.split('-');
	var date = new Date(('20'+strArr[0]), strArr[1]-1, strArr[2]);
	newDate.push(date)
})
console.log(newDate)

var data = [];

//my
for (var i = 0; i < newDate.length; i++) {
	  data.push({ date: newDate[i], stockFluc: stockFluc[i], kospiFluc : kospiFluc[i], kosdaqFluc:kosdaqFluc[i]  });
	}
//my


chart.data = data;

var dateAxis = chart.xAxes.push(new am4charts.DateAxis());
dateAxis.renderer.grid.template.location = 0;
dateAxis.renderer.labels.template.fill = am4core.color("#e59165");

var dateAxis2 = chart.xAxes.push(new am4charts.DateAxis());
dateAxis2.renderer.grid.template.location = 0;
dateAxis2.renderer.labels.template.fill = am4core.color("#dfcc64");

var dateAxis3 = chart.xAxes.push(new am4charts.DateAxis());
dateAxis3.renderer.grid.template.location = 0;
dateAxis3.renderer.labels.template.fill = am4core.color("#dfcc64");

var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis.tooltip.disabled = true;
valueAxis.renderer.labels.template.fill = am4core.color("#e59165");
valueAxis.renderer.minWidth = 60;

var valueAxis2 = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis2.tooltip.disabled = true;
valueAxis2.renderer.labels.template.fill = am4core.color("#FF0000");
valueAxis2.renderer.minWidth = 60;
valueAxis2.syncWithAxis = valueAxis;

var valueAxis3 = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis3.tooltip.disabled = true;
valueAxis3.renderer.labels.template.fill = am4core.color("#ff0000");
valueAxis3.renderer.minWidth = 60;
valueAxis3.syncWithAxis = valueAxis;

var series = chart.series.push(new am4charts.LineSeries());
series.name = "수익률";
series.dataFields.dateX = "date";
series.dataFields.valueY = "stockFluc";
series.tooltipText = "{valueY.value}";
series.fill = am4core.color("#e59165");
series.stroke = am4core.color("#e59165");
//series.strokeWidth = 3;

var series2 = chart.series.push(new am4charts.LineSeries());
series2.name = "코스피";
series2.dataFields.dateX = "date";
series2.dataFields.valueY = "kospiFluc";
series2.yAxis = valueAxis2;
series2.xAxis = dateAxis2;
series2.tooltipText = "{valueY.value}";
series2.fill = am4core.color("#dfcc64");
series2.stroke = am4core.color("#dfcc64");
//series2.strokeWidth = 3;

var series3 = chart.series.push(new am4charts.LineSeries());
series3.name = "코스닥";
series3.dataFields.dateX = "date";
series3.dataFields.valueY = "kosdaqFluc";
series3.yAxis = valueAxis3;
series3.xAxis = dateAxis3;
series3.tooltipText = "{valueY.value}";
series3.fill = am4core.color("#ff0000");
series3.stroke = am4core.color("#ff0000");


chart.cursor = new am4charts.XYCursor();
chart.cursor.xAxis = dateAxis2;

var scrollbarX = new am4charts.XYChartScrollbar();
scrollbarX.series.push(series);
chart.scrollbarX = scrollbarX;

chart.legend = new am4charts.Legend();
chart.legend.parent = chart.plotContainer;
chart.legend.zIndex = 100;

valueAxis2.renderer.grid.template.strokeOpacity = 0.07;
dateAxis2.renderer.grid.template.strokeOpacity = 0.07;
dateAxis.renderer.grid.template.strokeOpacity = 0.07;
valueAxis.renderer.grid.template.strokeOpacity = 0.07;

}); // end am4core.ready()
</script> -->

<!-- HTML -->
</body>
</html>