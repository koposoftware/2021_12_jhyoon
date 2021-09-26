<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하나 OneClub > 내 포트폴리오 관리</title>
<script
	src="${ pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


<style type="text/css">
.subtitle_50px {
	font-size: 35px;
	font-weight: 700;
	margin-top: 20px;
}

.vertical-tab {
	width: 1600px;
	margin: auto;
}

.inner-tab {
	height: 400px;
	width: 1600px;
	margin: auto;
}

.subtitle_30px {
	margin-top: 30px;
	font-size: 30px;
	font-weight: 700;
}

.pb_tab {
	padding: 15px;
	border: 1px solid #ddd;
	height: 350px;
	width: 512px;
	float: left;
	margin-right: 15px;
}

.fl {
	float: left;
}

.rl {
	float: right;
}

.pb_img {
	margin-top: 30px;
	margin-left: 10px;
}

.pb_name {
	font-weight: 600;
	font-size: 20px;
}

.pb_explain {
	margin-top: 35px;
	width: 180px;
	height: 200px;
	text-align: left;
	margin-left: 55px;
}

ul {
	padding-left: 0;
}

.pb_area {
	color: #008485;
}

.btn_popSide {
	border-radius: 5px;
	float: left;
	margin-left: 50px;
	font-size: 20px;
	color: #fff;
	padding: 5px 15px;
	margin-bottom: 1px;
	border-radius: 5px 5px 5px 5px;
	border: 1px solid #198754;
	box-shadow: inset 0px -2px 1px #198754;
	font-weight: 600;
	margin-top: 10px;
}

.sidebg_new {
	background: #008485;
}

.pb_tab2 {
	height: 350px;
	float: left;
	text-align: center;
}

.pb_tab3 {
	float: left;
	height: 400px;
}

.second_dec {
	margin-top: 130px;
	margin-left: 100px;
}

.pb_title {
	font-size: 25px;
	font-weight: 600;
}

.pb_desCribe {
	color: #777;
	font-size: 22px;
}

.councel_img {
	width: 360px;
	margin-top: 20px;
}

.subtitle_40px {
	margin-top: 30px;
	font-size: 33px;
	font-weight: 700;
}

.txt_input {
	font-weight: 400;
	font-size: 20px;
	color: #666;
}

.btn {
	margin: 10px;
	outline: 0;
	outline-style: none;
	font-size: 20px;
	width: 200px;
	transition: 0.1s;
	padding: 15px 0;
	text-align: center;
}

.btn_hana {
	background: #008485;
	border: 1px solid #198754;
	font-weight: 600;
	color: #fff;
	box-shadow: inset 0px -2px 1px #198754;
}

.btn-div {
	text-align: center;
}

a.btn2, .btn2 {
	line-height: 35px;
	height: 35px;
	padding: 0 10px;
	text-align: center;
	font-weight: bold;
	border: 0;
	-webkit-transition: background-color 0.3s ease-out;
	-moz-transition: background-color 0.3s ease-out;
	-o-transition: background-color 0.3s ease-out;
	transition: background-color 0.3s ease-out;
}

.txt_minus {
	color: #177cd2;
}

.txt_plus {
	color: #f83838;
}

.bg_port {
	background-color: #ffd6dd;
}

.txt-ali {
	text-align: center;
}

.search-area {
	width: 60%;
	margin: auto;
	height: 50px;
}

.search {
	float: left;
	height: 100%;
	font-size: 20px;
}

.search-area select {
	width: 20%;
}

.search-area input {
	width: 60%
}

.search-area button {
	width: 10%;
}

.port_list {
	margin-top: 50px;
	height: 450px;
}

.card-condi {
	height: 450px;
	float: left;
	padding: 20px;
}

.card-inner {
	border: 1px solid #ddd;
	height: 100%;
	width: 100%;
	padding: 10px;
	overflow: hidden;
}

.card-inner:hover {
 transform: scale(1.1);
  -webkit-transform: scale(1.1);
  -moz-transform: scale(1.1);
  -ms-transform: scale(1.1);
  -o-transform: scale(1.1);
}

.portDate_large {
	background: #666;
	color: #fff;
	font-family: 'Hana';
	font-size: 15px;
	border-radius: 3px;
	  padding: 5px 10px;
}

.portNum_small {
	background: #ff6600;
	color: #fff;
	font-family: 'Hana';
	font-size: 15px;
	border-radius: 3px;
	padding: 5px;
}

.port_title {
	font-size: 18px;
	font-weight: 600;
	color: #333;
	padding: 3px 0;
	cursor: pointer;
	width: 98%;
	overflow: hidden;
	margin: 0;
}

.small_des {
	font-size: 15px;
	color: #888;
}

.small_result {
	float: left;
	width: 50%;
	height: 200px;
	padng: 10px;
	text-align: center;
	margin-top: 20px;
}

.port_result {
	font-size: 18px;
	font-weight: 600;
}

.main_tbl {
	font-size: 40px;

}

.small_chart {
	height: 158px;
}

.small_chart2 {
	weight: 169px;
	height: 75px;''
}

.posi_t{
	margin-top : -100px;
		font-size: 25px;
	font-weight: 600;
}
.graph_tab{
    width: 100%;
    height: 230px;
    border: 1px solid #ddd;
}
.small_des2{
	margin-top:10px;
	font-size: 18px;
	color: #888;
}
.section_portCompare {
    position: fixed;
    bottom: 0px;
    left: 50%;
    z-index: 100;
    margin: -437px 0 0 -437px;
    width: 874px;
    height: 180px;
    border: 1px solid #b2b2b2;
    border-bottom: none;
    background: #fff;
    border-radius: 6px 6px 0 0;
    -webkit-border-radius: 6px 6px 0 0;
    -moz-border-radius: 6px 6px 0 0;
    -ms-border-radius: 6px 6px 0 0;
    -o-border-radius: 6px 6px 0 0;
}
.compare_titlebar {
    position: absolute;
    top: -1px;
    left: -1px;
    background: #008485;
    width: 100%;
    height: 40px;
    line-height: 40px;
    border: 1px solid #008485;
    overflow: hidden;
    border-radius: 6px 6px 0 0;
    -webkit-border-radius: 6px 6px 0 0;
    -moz-border-radius: 6px 6px 0 0;
    -ms-border-radius: 6px 6px 0 0;
    -o-border-radius: 6px 6px 0 0;
}
.compare_titlebar .title {
    font-size: 15px;
    font-weight: 600;
    color: #fff;
    margin-left: 15px;
}
.compare_titlebar .title span {
    padding-left: 10px;
    font-size: 13px;
}
.fl {
    float: left;
}
.compare_titlebar .lyrCtrl {
    margin-right: 15px;
    font-size: 13px;
    color: #fff;
    cursor: pointer;
}
.compare_cont {
    height: 140px;
    margin-top: 41px;
    background: #fff;
}
.box_portCompare {
    width: 704px;
    height: 150px;
    padding: 14px 20px 0 20px;
    overflow-y: hidden;
    overflow-x: auto;
}
.compareBox .box {
    width: 100%;
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 6px;
    -webkit-border-radius: 6px;
    -moz-border-radius: 6px;
    -ms-border-radius: 6px;
    -o-border-radius: 6px;
    padding: 10px;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -ms-box-sizing: border-box;
    -o-box-sizing: border-box;
}
.box_portCompare ul {
    width: 900px;
}
.compare_cont .box_btns {
    width: 130px;
    height: 140px;
    background: #f1f3f5;
    text-align: center;
}
.compare_cont .box_btns button {
    margin-bottom: 6px;
}
.btn_red {
    vertical-align: middle;
}
.btn_red {
    background: #008485;
    border: 1px solid #008485;
    font-weight: 600;
    color: #fff;
    box-shadow: inset 0px -2px 1px #008485;
}
.btn_medium {
    font-size: 13px;
    transition: 0.1s;
    text-align: center;
    padding: 8px 12px;
    vertical-align: middle;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    -ms-border-radius: 3px;
    -o-border-radius: 3px;
}
.compareBox .box span.title {
    display: inline-block;
    width: 140px;
    max-width: 140px;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
.infotxt_13px33 {
    font-size: 13px;
    color: #333;
}

.ratetxt_20px {
    font-family: 'HanaB';
    font-size: 18px;
    font-weight: 500;
}
.compareBox {
    width: 160px;
    margin-right : 20px;
}
.btn_white {
	vertical-align: middle;
	background: #fff;
	border: 1px solid #aaa;
	font-weight: 600;
	color: #888;
	box-shadow: inset 0px -1.5px 1px #e0e0e0;
}
input[type=checkbox].checkbox + label.chkbx-label {
    padding-left: 10px;
    height: 15px;
    display: inline-block;
    line-height: 15px;
    background-repeat: no-repeat;
    background-position: 0 0;
    font-size: 13px;
    vertical-align: middle;
    cursor: pointer;
    margin-bottom: -13px;
}
.btn_extrasmall {
    font-size: 12px;
    transition: 0.1s;
    text-align: center;
    padding: 2px 8px;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    -ms-border-radius: 3px;
    -o-border-radius: 3px;
}
</style>
<script type="text/javascript">
var cnt = 0;
function DisplayCompareBox(){
	if($('#btnClose_Compare').css('display') == 'none'){
		$('#divPortCompare').css('height','200px');
		$('#btnClose_Compare').show();
		$('#btnOpen_Compare').hide();
	}else{
		$('#divPortCompare').css('height','40px');
		$('#btnClose_Compare').hide();
		$('#btnOpen_Compare').show();
	}
}

function ChangeSelectedState(num, title, earn){
	cnt = cnt+1;
	$('#cntComparePort').text(cnt);
	$('#divPortCompare').css('height','200px');
	$('#btnClose_Compare').show();
	$('#btnOpen_Compare').hide();
	var content ='<li class="fl compareBox" id="campareBox_'+num+'"><label for="campareBox_'+num +'" ><p class="box">' 
	 + '<span class="title infotxt_13px33 bold">'+title+'</span> <span class="ratetxt_20px txt_plus">'+earn+'%</span>'
     + '</p></label><p style="overflow: hidden">'
     + '<input type="checkbox" name="campareBox_'+num+'" id="campareBox_'+num+'" class="fl checkbox" onchange="javascript:ChangeSelected('+num+', this.checked)"'
	+ 'checked="true"><label for="campoareBox_'+num+'" class="chkbx-label" style="margin-bottom: 0">선택</label>'
    + '<button type="button" class="fr btn_extrasmall btn_white"	id="campoareBox_delect_'+num+'" onclick="RemovePortFromBox('+num+')">삭제</button></p></li>'

	$('#divTemplate_compareBottomBox').append(content);

}

function RemovePortFromBox(num){
	$('#campareBox_'+num).remove();
	$('#check_'+num).prop("checked",false);
	cnt = cnt-1;
	$('#cntComparePort').text(cnt);
}
function ChangeSelected(num, checked){
	$('#check_'+num).prop("checked",checked);
}

function ChangeAllSelectedState() {
	if($('#divTemplate_compareBottomBox input[type="checkbox"]').prop("checked")){
	$('#divTemplate_compareBottomBox input[type="checkbox"]').prop("checked",false)
	}else{
	$('#divTemplate_compareBottomBox input[type="checkbox"]').prop("checked",true)
		
	}
}

function OpenComparePopup(){
	
	
}


</script>
</head>
<body>
	<!-- Header -->
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>
	<div class="area_location" id="locNewPort" style="display: block">
		<ul>
			<li class="fl">
				<p class="fl title">One Club 내 포트폴리오 관리</p>
				<p class="fl info">지금까지 만든 내 전략을 비교해보세요</p>
			</li>
			<li class="fr">
				<p class="crumbs">
					One클럽<span>></span>내 포트폴리오 관리
				</p>
			</li>
		</ul>
	</div>
	<!-- Close Header -->


	<!-- Start Banner Hero -->
	<section class="w-100">
		<div class="container main">
			<div class="row vertical-tab">
				<ul style="padding-left: 0;">
					<li class="subtitle_50px bold">OneClub 내 포트폴리오 관리</li>
				</ul>
			</div>
			<div class="row vertical-tab">
				<div class="inner-tab bg_port">
					<div class="col-md-7 pb_tab3">
						<div class="second_dec">
							<ul>
								<li><span class="subtitle_40px"><span
										class="pb_area">하나 OneClub </span>내 포트폴리오 관리</span></li>
							</ul>
							<ul>
								<li><span class="pb_desCribe">지금까지 만드신 내 투자전략를
										포트폴리오를 통해 <br> 비교해서 더 나은 수익률에 도전하세요!
								</span></li>
							</ul>
						</div>
					</div>
					<div class="col-md-5 pb_tab2">
						<img class="councel_img"
							src="${pageContext.request.contextPath}/resources/img/reportMain.png"
							alt="Card image">
					</div>
				</div>
			</div>
			<div class="row vertical-tab txt-ali">
				<ul style="padding-left: 0;">
					<li class="subtitle_40px">내 포트폴리오</li>
				</ul>
			</div>
			<div class="row vertical-tab txt-ali">
				<div class="search-area">
					<select name="searchCondi" class="search">
						<option value="condi">조건식</option>
						<option value="backDate">일자</option>
					</select> <input type="text" placeholder="검색어를 입력하세요" class="search">
					<button class="btn_hana search" onclick="searchCondi()">검색</button>
				</div>
			</div>
			
			<c:forEach items="${totalList}" var="list" varStatus="loop">
				<c:if test="${loop.count%4 eq 1}"><div class="vertical-tab port_list"></c:if>
				<div class="col-md-3 card-condi">
					<div class="card-inner">
						<p class="fl portDate_large" >${list.backTestCompoVO.backtestDate}</p>
						<p class="rl portNum_small">no. ${list.backTestCompoVO.backtestCnt}</p>
						<p class="port_title" onclick="location.href='${pageContext.request.contextPath}/backtest/result/${list.backTestCompoVO.portNum}'" id="title_${list.backTestCompoVO.portNum}">${list.backTestCompoVO.backTitle}</p>
						<div class="small_des">
							<span>백테스트 기간 : ${list.backTestCompoVO.backStartDate}~${list.backTestCompoVO.backEndDate}(${list.backTestCompoVO.backStockCnt}개월)</span>
						</div>
						<div  class="graph_tab">
						<div class="col-md-6 small_result">
							<p class="port_result">수익률</p>
							<div class="small_chart2">								
							<c:choose>
									<c:when test="${list.backTestResultSetVO.earningRate lt 0 }">
										<div class="txt_minus main_tbl">${list.backTestResultSetVO.earningRate}%</div>
									</c:when>
									<c:otherwise>
										<div class="txt_plus main_tbl" >${list.backTestResultSetVO.earningRate}%</div>
									</c:otherwise>
								</c:choose>
								<canvas id="g${list.backTestCompoVO.portNum}"></canvas>

							</div>
						</div>
						<div class="col-md-6 small_result">
							<p class="port_result">승률(수익vs손실)</p>
							<div class="small_chart">
								<canvas id="${list.backTestCompoVO.portNum}"></canvas>
								<div class="posi_t">${list.backTestResultSetVO.winningRate}%</div>
							</div>
						</div>
						</div>
					<div class="small_des2">
						<input type="checkbox" value="portNum" id="check_${list.backTestCompoVO.portNum}" onchange="javascript:ChangeSelectedState('${list.backTestCompoVO.portNum}', '${list.backTestCompoVO.backTitle}','${list.backTestResultSetVO.earningRate}')">
						<span style="margin-left:8px;">다른
							포트폴리오와 비교</span>
					</div>
					</div>
	
				</div>
			<c:if test="${loop.count%4 eq 0}"></div></c:if>
			</c:forEach>
		</div>
	</section>




	<div id="divPortCompare" class="section_portCompare" style="height: 40px;">
		<ul>
			<li class="compare_titlebar">
				<p class="fl title">
					포트폴리오 비교하기<span>(<span class="bold" id="cntComparePort">0</span>&nbsp;)
					</span>
				</p>
				<p id="btnClose_Compare" class="fr lyrCtrl" style="display: none;"
					onclick="DisplayCompareBox()">
					접기<img src="${pageContext.request.contextPath}/resources/img/btn_compare_on.png">
				</p>
				<p id="btnOpen_Compare" class="fr lyrCtrl"
					onclick="DisplayCompareBox()"
					style="">
					열기<img src="${pageContext.request.contextPath}/resources/img/btn_compare_off.png">
				</p>
			</li>
			<div class="compare_cont" style="height: 0px !important;">
				<ul>
					<div class="fl box_portCompare">
						<ul id="divTemplate_compareBottomBox">
							
						</ul>
					</div>
					<li class="fr box_btns">
						<button type="button" class="btn_medium btn_white"
							style="margin-top: 32px"
							onclick="ChangeAllSelectedState()">전체선택/해제</button>
						<button type="button" class="btn_medium btn_red"
							style="padding: 8px 15px"
							onclick="OpenComparePopup()">비교하기</button>
					</li>
				</ul>
			</div>
		</ul>
	</div>




	<footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	</footer>
	<script type="text/javascript">
	<c:forEach items="${getAccTotal}" var="list" varStatus="loop">
			 	var chartLabels = [];
				var earningRate = [];

				var dataSet = ${list.value}
				$.each(dataSet, function(inx, obj) {
					chartLabels.push(obj.backDate);
					earningRate.push(obj.earningRate);
				});
				
				
					var config${loop.count} = {
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
										unit : 'year'
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
									display : false,
									scaleLabel : {
										display : false,
										labelString : '(%)',
										fontColor : '#999'
									},
									ticks :{
										display:false
									}
								} ]
							}
						}
					}; 
					
					
					
				var Chart${loop.count} = new Chart(document.getElementById('g${list.key}'),config${loop.count});
				</c:forEach>
				</script>
<script type="text/javascript">
<c:forEach items="${totalList}" var="list" varStatus="loop">
	var data = {
			  labels: ['Winning', 'Lose'],
			  datasets: [
			    {
			      label: 'Dataset 1',
			      data: [${list.backTestResultSetVO.winningRate}, ${100-list.backTestResultSetVO.winningRate}],
			      backgroundColor:[
			    	  '#ffc107',
			    	  '#ddd',
			      ],
			    }
			  ]
			};
	var myconfig${loop.count} = {
			  type: 'doughnut',
			  data: data,
			  options: {
				maintainAspectRatio : false,
			    plugins: {
			      legend: {
			    	display:false
			      },
			      title: {
			        display: false
			      }
			    },
			    elements: {
			        center: {
			          text: '45',
			          color: '#FF6384', // Default is #000000
			          fontStyle: 'Arial', // Default is Arial
			          sidePadding: 20, // Default is 20 (as a percentage)
			          minFontSize: 25, // Default is 20 (in px), set to false and text will not wrap.
			          lineHeight: 25 // Default is 25 (in px), used for when text wraps
			        }
			      }
			  },
			};
	var myChart${loop.count} = new Chart(document.getElementById('${list.backTestCompoVO.portNum}'),myconfig${loop.count});
	</c:forEach>
</script>
</body>
</html>