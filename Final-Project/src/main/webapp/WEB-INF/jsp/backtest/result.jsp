<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Head 구성  -->
<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>
<title></title>
<style type="text/css">
ul, ol, dl, dd, dt, li {
	list-style-type: none;
}

.container-lg {
	max-width: 95%
}

.area_content {
	position: relative;
	width: 95%;
	margin: 0 auto;
	padding-top: 40px;
	padding-bottom: 150px;
}

.area_content ul {
	padding-left: 0;
}

.area_location {
	width: 100%;
	height: 70px;
	background: #f5f7f9;
	margin: 0 auto;
	border-bottom: 1px solid #e5e7e9;
}

.area_location ul {
	width: 100%;
	margin: 0 auto;
	overflow: hidden;
	padding-left: 40px;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

p {
	display: block;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

.area_location p.title {
	font-size: 25px;
	font-weight: bold;
	color: #333;
	letter-spacing: -1px;
	margin-right: 20px;
	margin-top: 17px;
}

.fl {
	float: left;
}

.area_location p.info {
	font-size: 18px;
	color: #666;
	letter-spacing: -0.5px;
	margin-top: 25px;
}

.area_location p.crumbs {
	font-size: 15px;
	color: #777;
	float: left;
	margin-right: 25px;
	margin-top: 25px;
}

.fr {
	float: right;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

.section_flowTab li.on {
	background: #008485;
	color: #fff;
}

.section_flowTab li:first-child {
	border-radius: 6px 0 0 6px;
}

.section_flowTab li {
	position: relative;
	float: left;
	width: 25%;
	color: #333;
	background: #f1f3f5;
	border-right: 1px solid #d2d2d2;
	cursor: pointer;
	padding: 20px;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.section_flowTab li p {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 25px;
	letter-spacing: -1px;
	font-weight: bold;
	margin-bottom: 5px;
}

.section_flowTab li:last-child {
	border-right: none;
	border-radius: 0 6px 6px 0;
	cursor: auto;
}

.content-by-step {
	width: 90%;
	border: 1px solid #888;
	margin: auto;
	margin-bottom: 40px;
	overflow-x: auto;
	padding: 30px;
	padding-bottom: 60px;
	box-sizing: border-box;
	border-radius: 5px;
}

input[type=text].text_extrasmall {
	width: 100px;
	height: 33px;
	padding: 5px 10px;
	border: 1px solid #bbb;
	color: #333;
	box-sizing: border-box;
	border-radius: 3px;
	margin-right: 5px;
	vertical-align: middle;
}

.vertical-tab {
	margin-bottom: 50px;
	padding-top: 30px;
}

.font_20px {
	font-size: 25px;
	font-weight: 600;
	line-height: 30px;
	color: #333;
}

.font_16px {
	font-size: 20px;
	font-weight: 300;
	line-height: 30px;
	color: #666;
	margin-top: 10px;
	margin-bottom: 10px;
}

.card-body {
	text-align: center;
	font-size: 18px;
	font-weight: 600;
	color: #424242;
	height: 100px;
	padding-top: 33px;
	vertical-align: middle;
}

.card-header {
	text-align: center;
	background: #e1f1f8;
	border-bottom: 1px solid #ddd;
	font-size: 20px;
	font-weight: 600;
	color: #424242;
	padding: 10px;
}

.tip-img {
	border: 0 none;
	max-width: 100%;
}

select.slct_newport {
	display: inline-block;
	border: 1px solid #bbb;
	padding: 5px 10px;
	color: #333;
	vertical-align: top;
	border-radius: 3px;
	height: 33px;
}

.btn_hana {
	background: #008485;
	border: 1px solid #198754;
	font-weight: 600;
	color: #fff;
	box-shadow: inset 0px -2px 1px #198754;
}

.btn {
	margin: 10px;
	outline: 0;
	outline-style: none;
	font-size: 20px;
	width: 140px;
	transition: 0.1s;
	padding: 15px 0;
	text-align: center;
}

.btn_white {
	vertical-align: middle;
	background: #fff;
	border: 1px solid #aaa;
	font-weight: 600;
	color: #888;
	box-shadow: inset 0px -1.5px 1px #e0e0e0;
}

.btn-div {
	text-align: center;
}

.top {
	vertical-align: middle;
	color: #666;
}

.box_temp {
	width: 100%;
	border: 1px solid #ddd;
	padding: 20px;
	box-sizing: border-box;
}

.btn_refresh {
	display: inline-block;
	width: 33px;
	height: 33px;
	background: #ddd;
	border: 1px solid #ccc;
	transition: 0.2s;
	border-radius: 4px;
}

input[type=text].text_small {
	width: 70px;
	padding: 8px 10px;
	border: 1px solid #bbb;
	color: #333;
	box-sizing: border-box;
	border-radius: 3px;
}

.tbl_horizon th.buy {
	background: #e1f1f8;
}

.tbl_horizon th {
	background: #f1f3f5;
	font-size: 13px;
	font-weight: 600;
	color: #424242;
	padding: 20px 10px;
}

th {
	display: table-cell;
	vertical-align: inherit;
	font-weight: bold;
	text-align: -internal-center;
}

.tbl_horizon {
	width: 100%;
	border-collapse: collapse;
	border: 1px solid #ddd;
}

select.slct_condi {
	width: 100px;
	margin-right: 10px;
	margin-left: 10px;
	cursor: pointer;
	border: 1px solid #bbb;
	color: #333;
	border-radius: 3px;
	height: 33px;
}

.tbl_horizon td {
	padding: 14px 14px;
	color: #333;
	letter-spacing: 0;
	border: 1px solid #ddd;
}

.top1 {
	padding-left: 10px;
	color: #666;
	text-align: center;
	font-size: 15px;
	font-weight: 600;
	color: #424242;
}

.btn_add {
	outline: 0;
	outline-style: none;
	font-size: 15px;
	width: 120px;
	transition: 0.1s;
	padding: 10px 0;
	text-align: center;
	cursor: pointer;
	border-radius: 0.25rem;
	vertical-align: middle;
	line-height: 1.5;
	margin-left: 50px;
}

.box_sec {
	box-sizing: border-box;
	height: 33px;
	float: left;
}

input[type=text].condi {
	width: 75px;
	text-align: center;
	font-size: 15px;
	font-weight: 400;
	border: #fff;
	background-color: #ffe8e8;
	border-radius: 1rem;
}

.cancel_img {
	width: 15px;
	height: 15px;
}

.addConBtn {
	background-color: #fff;
	border: #fff;
}

.card-selection {
	padding-top: 15px
}

.titleInput {
	margin-top: 20px;
	font-size: 20px;
	margin-bottom: 20px;
}	
input:focus{
  outline:none;
}	
input{
border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;
}


</style>
<script src="${ pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${ pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
	<script
		src="${ pageContext.request.contextPath}/resources/js/templatemo.js"></script>
	<!-- Custom -->
	<script
		src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#tabMenu0').click(function() {
			changeTab(0)
		})
		$('#tabMenu1').click(function() {
			changeTab(1)
		})
		$('#tabMenu2').click(function() {
			changeTab(2)
		})
		$('#tabMenu3').click(function() {
			changeTab(3)
		})

	})
	function changeTab(num) {
		for (var i = 0; i < 4; i++) {

			document.getElementById("tabMenu" + i.toString()).className = "";
			document.getElementById("selection" + i.toString()).style.display = "none";
		}
		document.getElementById("tabMenu" + num).className = "on";
		document.getElementById("selection" + num.toString()).style.display = "";
	}
	function numberWithCommas(x, id) {
		x = x.replace(/(^0+)/g, '')
		x = x.replace(/[^0-9]/g, ''); // 입력값이 숫자가 아니면 공백
		x = x.replace(/,/g, ''); // ,값 공백처리
		$("#" + id).val(x.replace(/\B(?=(\d{3})+(?!\d))/g, ",")); // 정규식을 이용해서 3자리 마다 , 추가 
	}

</script>
<script> 
	$(document).ready(function(){
		var chartLabels = [];
		var chartData = [];
		var chartData2 = [];
		var chartData3 = [];

		var data = ${accList}
		$.each(data, function(inx, obj) {
			chartLabels.push(obj.stockDate);
			chartData.push(obj.stockFluc);
			chartData2.push(obj.kospiFluc)
			chartData3.push(obj.kosdaqFluc)
		});
		console.log(chartData);
		console.log(chartData2);
		console.log(chartData3);
		var ctx = document.getElementById('myChart').getContext('2d');
		var chart = new Chart(ctx, {
			// 챠트 종류를 선택 
			type : 'line',
			// 챠트를 그릴 데이타 
			data : {
				labels : chartLabels,
				datasets : [ {
					label : '수익률',
					backgroundColor : 'transparent',
					borderColor : 'red',
					data : chartData
				}, {
					label : '코스피',
					backgroundColor : 'transparent',
					borderColor : 'orange',
					data : chartData2
				}, {
					label : '코스닥',
					backgroundColor : 'transparent',
					borderColor : 'blue',
					data : chartData3
				},

				]
			},
			// 옵션 
			options : {}
		});
	})

</script>

<!-- Head 구성 끝 -->
</head>
<body>
	<!-- header  -->
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>
	<div class="area_location" id="locNewPort" style="display: block">
		<ul>
			<li class="fl">
				<p class="fl title">내 백테스팅 포트 만들기</p>
				<p class="fl info">다양한 조건을 넣어 나만의 주식투자 전략을 검증해보세요</p>
			</li>
			<li class="fr">
				<p class="crumbs">
					One클럽<span>></span>백테스팅 포트 만들기
				</p>
			</li>
		</ul>
	</div>
	<!-- header 끝 -->
	<!-- section 시작 -->
	<section>
		<div class="area_content">
			<div class="section_flowTab">
				<ul>
					<li id="tabMenu0" class="">
						<p>Step 1. 기본 설정</p> <span>기본 조건들을 설정하세요.</span>
					</li>
					<li id="tabMenu1" class="">
						<p>Step 2. 매매조건 설정</p> <span>매수/매도조건을 설정하세요.</span>
					</li>

					<li id="tabMenu2" class="">
						<p>Step 3. 가치측정 조건 설정</p> <span>기업 가치를 판단할 조건을 설정하세요</span>
					</li>

					<li id="tabMenu3" style="cursor: pointer;" class="on">
						<p>Step 4. 포트 완성!</p> <span>백테스팅 포트가 완성되었습니다.</span>
					</li>
				</ul>
			</div>
		</div>

		<div class="selection_Tab">
			<div class="content-by-step">
				<form >
					<input type="hidden" name="userId" value="${userVO.userId}"  disabled="disabled">
					<div id="selection0" class="container"
						style="display: none; align-content: center;">
						<!-- 첫번째 페이지 -->
						<div class="row vertical-tab">
							<div class="col-md-6" style="width: 50%">
								<span class="font_20px" style="display: inline;"><b>내
										포트폴리오명</b></span><br> <input  disabled="disabled"   name="backTitle" type="text"
									style="width: 80%" class="titleInput"
									value="${compVO.backTitle}" />
							</div>
							<div class="col-md-6" style="width: 50%">
								<span class="font_20px"><b>포트폴리오 설명</b></span><br> <input
									name="backDescript" type="text" style="width: 80%"
									class="titleInput" value="${compVO.backDescript}"/>
							</div>
						</div>
						<!-- 두번째, 기존 조건 설정  -->
						<hr>
						<div class="row vertical-tab">
							<span class="font_20px"><b>기본 조건</b></span><br> <span
								class="font_16px">백테스팅을 위한 기본적인 조건을 입력하세요!</span><br>
							<div class="col-md-3">
								<div class="card">
									<div class="card-header">
										운용 자금 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="백테스트에 사용할 초기 운용자금을 입력">
									</div>
									<div class="card-body">
										<input  disabled="disabled"   name="backStartAsset" id="backStartAsset"
											class="text_extrasmall" type="text" value="${compVO.backStartAsset}"
											onkeyup="numberWithCommas(this.value, this.id)"><span
											class="top">만원</span>
									</div>
								</div>
							</div>
							<div class="col-md-5">
								<div class="card">
									<div class="card-header">
										백테스팅 기간 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="백테스트를 실행할 기간을 선택">
									</div>
									<div class="card-body" style="padding-top: 15px;">
										<input disabled="disabled" name="backStartDate" type="date" id="backStartDate"
											style="width: 35%" value='${backStartDate}' ><span class="top"
											style="margin-right: 10px;">부터</span> <input disabled="disabled"
											name="backEndDate" type="date" id="backEndDate" value="${compVO.backEndDate}"
											style="width: 35%"><span class="top">까지</span>
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="card">
									<div class="card-header">
										수수료율 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="증권사 매매 수수료 입력 (예 : A증권사 매매시 수수료가 0.1이면 매수, 매도 합산 0.2가 아닌 0.1을 입력)">
									</div>
									<div class="card-body">
										<input disabled="disabled" name="backFeeRate" class="text_extrasmall" type="text"
											value="${compVO.backFeeRate}"><span class="top">%</span>
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="card">
									<div class="card-header">
										거래세금 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="증권 거래세금 0.0015%, 미설정시 백테스팅 신뢰성이 떨어집니다.">

									</div>
									<div class="card-body">
										<input disabled="disabled" name="backTaxRate" class="text_extrasmall" type="text"
											value="${compVO.backTaxRate}"><span class="top">%</span>
									</div>
								</div>
							</div>
						</div>
						<!-- 세번째, 자산 운용 조건  -->
						<hr>
						<div class="row vertical-tab">
							<span class="font_20px"><b>자산 운용 조건</b></span><br> <span
								class="font_16px">투자 하기 위한 자산 운용 조건을 입력하세요!</span><br>
							<div class="col-md-3">
								<div class="card">
									<div class="card-header">
										분산투자 종목 수 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="백테스트에 사용할 초기 운용자금을 입력">
									</div>
									<div class="card-body">
										<select name="backStockCnt" id="slct_stockCnt" disabled="disabled"
											class="slct_newport">
											<option selected="selected" value="${compVO.backStockCnt}">${compVO.backStockCnt}</option>
										</select> <span class="top">개</span>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="card">
									<div class="card-header">
										리밸런싱 주기 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="백테스팅 조건의 재선정 주기를 선택해">
									</div>
									<div class="card-body">
										<select name="backRebalCycle" id="AARebalCycle" disabled="disabled"
											class="slct_newport">
											<option value="${compVO.backRebalCycle}" selected="selected">${compVO.backRebalCycle}</option>

										</select> <span class="top">개월</span>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="card">
									<div class="card-header">
										투자 비중 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="운용 자금의 몇 %까지 투자할 것인지 선택">
									</div>
									<div class="card-body">
										<select name="backInvestRate" id="slct_investRate" disabled="disabled"
											class="slct_newport">
											<option value="${compVO.backInvestRate}" selected="selected">${compVO.backInvestRate}</option>
										</select> <span class="top">%</span>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="card">
									<div class="card-header">
										슬리피지 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="실제 금액과의 괴리율을 의미하며 설정시 백테스팅의 신뢰도가 높아집니다.">
									</div>
									<div class="card-body">
										<input disabled="disabled" name="backSlippage" class="text_extrasmall" type="text"
											value="${compVO.backSlippage }"><span class="top">%</span>
									</div>
								</div>
							</div>
						</div>

						<div class="btn-div">

							<button class="btn btn_white" type="button">취소</button>
							<button class="btn btn_hana" type="button"
								onclick="changeTab(1);$('html,body').scrollTop(0);">다음
								단계로</button>
						</div>
					</div>

					<div id="selection1" style="display: none">
						<!-- 두번째 페이지 -->
						<div class="row vertical-tab">
							<span class="font_20px"><b>종목 조건 설정</b></span><br> <span
								class="font_16px">종목 조건을 설정해주세요 </span><br>
							<div class="col-md-2">
								<div class="card">
									<div class="card-header">
										거래시장 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="KOSPI / KOSDAQ / KONEX / 전체시장 을 선택할 수 있습니다. ">
									</div>
									<div class="card-body">
										<select name="backMarket" id="slct_market" disabled="disabled"
											class="slct_newport">
											<option value="${compVO.backMarket }" selected="selected">${compVO.backMarket }</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-10">
								<div class="card">
									<div class="card-header">
										필터링 조건 선택 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="매수/매도시 제외할 종목 선택">
									</div>
									<div class="card-body container card-selection">
										<div class="col-md-3"
											style="border-right: 1px solid rgba(0, 0, 0, 0.125); float: left">
											<span class="top">관리종목</span><br> <input type="radio"
												name="backCare" id="careOff" class="css-radiobtn" onclick="return false;"
												checked="checked" value="0"> <label for="careOff"
												style="margin-right: 20px">제외</label> <input type="radio" onclick="return false;"
												name="backCare" id="careOn" class="css-radiobtn" value="1">
											<label for="careOn" style="margin-right: 0">포함</label>
										</div>
										<div class="col-md-3"
											style="border-right: 1px solid rgba(0, 0, 0, 0.125); float: left">
											<span class="top">감리종목</span><br> <input type="radio" onclick="return false;"
												name="backManage" id="manageOff" class="css-radiobtn"
												value="0" checked="checked"> <label for="manageOff"
												style="margin-right: 20px">제외</label> <input type="radio" onclick="return false;"
												name="backManage" id="manageOn" class="css-radiobtn"
												value="1"> <label for="manageOn"
												style="margin-right: 0">포함</label>
										</div>
										<div class="col-md-3"
											style="border-right: 1px solid rgba(0, 0, 0, 0.125); float: left;">
											<span class="top">우선주 종목</span><br> <input type="radio" onclick="return false;"
												name="backPreferred" id="preferredOff" class="css-radiobtn"
												checked="checked" value="0"> <label
												for="preferredOff" style="margin-right: 20px">제외</label> <input
												type="radio" name="backPreferred" id="preferredOn" onclick="return false;"
												class="css-radiobtn" value="1"> <label
												for="preferredOn" style="margin-right: 0">포함</label>
										</div>
										<div class="col-md-3" style="float: left;">
											<span class="top">ETF 종목</span><br> <input type="radio"
												name="backEtf" id="etfOff" class="css-radiobtn" onclick="return false;"
												checked="checked" value="0"> <label for="etfOff"
												style="margin-right: 20px">제외</label> <input type="radio" onclick="return false;"
												name="backEtf" id="etfOn" class="css-radiobtn" value="1">
											<label for="etfOn" style="margin-right: 0">포함</label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 세번째, 자산 운용 조건  -->

						<hr>
						<div class="row vertical-tab">
							<span class="font_20px"><b>거래 조건 설정</b></span><br> <span
								class="font_16px">매수 / 매도를 위한 거래조건을 설정하세요 </span><br>
							<div class="col-md-4">
								<div class="card">
									<div class="card-header">
										재무 조건 설정 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="재무 조건을 설정하세요">
									</div>
									<div class="card-body container card-selection">
										<div class="col-md-6"
											style="border-right: 1px solid rgba(0, 0, 0, 0.125); float: left">
											<span class="top">영업 현금 흐름(+)</span><br> <input
												type="radio" name="backCashFlow" id="cashFlowOn" onclick="return false;"
												class="css-radiobtn" checked="checked" value="1"> <label
												for="cashFlowOn" style="margin-right: 20px">포함</label> <input
												type="radio" name="backCashFlow" id="cashFlowOff" value="0" onclick="return false;"
												class="css-radiobtn"> <label for="cashFlowOff"
												style="margin-right: 0">미포함</label>
										</div>
										<div class="col-md-6" style="float: left">
											<span class="top">당기 순이익(+)</span><br> <input
												type="radio" name="backProfit" id="profitOn" value="1" onclick="return false;"
												class="css-radiobtn" checked="checked"> <label
												for="profitOn" style="margin-right: 20px">포함</label> <input
												type="radio" name="backProfit" id="profitOff" value="0" onclick="return false;"
												class="css-radiobtn"> <label for="profitOff"
												style="margin-right: 0">제외</label>
										</div>
									</div>
								</div>
							</div>
							<!-- 두번째 조건  -->
							<div class="col-md-4">
								<div class="card">
									<div class="card-header">
										현금 유동성 설정 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="일일 거래되는 금액의 범위를 설정할 수 있습니다.">
									</div>
									<div class="card-body">
										<span class="top" style="margin-right: 10px;">1일 거래대금</span> <select
											name="backAmt" id="slct_amount" class="slct_newport" disabled="disabled">
											<option value="${compVO.backAmt }" selected="selected">${compVO.backAmt }</option>
										</select> <input disabled="disabled" name="backTransAmt" class="text_extrasmall"
											type="text" id="stockVolume" value="${compVO.backTransAmt }"
											onkeyup="numberWithCommas(this.value, this.id)"><span
											class="top">만원</span>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="card">
									<div class="card-header">
										사이즈 팩터(시가 총액) 설정 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="회사 시가총액으로 투자 회사의 규모를 설정할 수 있습니다.">
									</div>
									<div class="card-body">
										<span class="top" style="margin-right: 10px;">시가 총액</span> <select
											name="backCap" id="slct_cap" class="slct_newport">
											<option value="${compVO.backCap}" selected="selected">${compVO.backCap}</option>
										</select> <input disabled="disabled" name="backMarketCap" class="text_extrasmall"
											id="stockSize" type="text" value="${compVO.backMarketCap}"
											onkeyup="numberWithCommas(this.value, this.id)"><span
											class="top">만원</span><br>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<div class="row vertical-tab">
							<span class="font_20px"><b>매매 조건 설정</b></span><br> <span
								class="font_16px">매수 / 매도를 기준을 설정하세요 </span><br>
							<!-- 두번째 조건  -->
							<div class="col-md-6">
								<div class="card">
									<div class="card-header">
										매매 조건 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="매매 금액 조건을 선택하세요">
									</div>
									<div class="card-body container">
										<div class="col-md-6"
											style="border-right: 1px solid rgba(0, 0, 0, 0.125); float: left;">
											<span class="top" style="background-color: #ffe8e8">매수
												금액 : </span> <select name="backBuyPrice" id="slct_prcie" disabled="disabled"
												class="slct_newport" style="padding: 5px">
												<option value="${compVO.backBuyPrice}" selected="selected">${compVO.backBuyPrice}</option>
											</select>
										</div>
										<div class="col-md-6" style="float: left">
											<span class="top" style="background-color: #e1f1f8">매도
												금액 : </span> <select name="backSellPrice" id="AARebalCycle" disabled="disabled"
												class="slct_newport">
												<option value="${compVO.backSellPrice}" selected="selected">당일 시초가</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="card">
									<div class="card-header">
										매매 최소 가격 <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="매매할 주식의 최소가격을 설정합니다. ">
									</div>
									<div class="card-body">
										<select id="slct_minPrice" name="backMinPriceV" disabled="disabled"
											class="slct_newport" style="width: 76px;">
											<option value="${compoVO.backMinPriceV }" selected="selected">시가</option>
										</select> <select name="backMinPriceS" id="slct_minSign"
											class="slct_newport">
											<option  value="${compoVO.backMinPriceS}" selected="selected">&gt;</option>
										</select> <input disabled="disabled" name="backMinPrice" class="text_extrasmall"
											type="text" style="width: 85px;" id="min_price" value="${compoVO.backMinPrice}"
											onkeyup="numberWithCommas(this.value, this.id)"> <span
											class="top">원</span>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="card">
									<div class="card-header">
										시가 총액(%) <img class="tip_img"
											src="${pageContext.request.contextPath }/resources/img/icn_tip.png"
											style="cursor: help; position: relative;"
											title="회사 시가총액으로 투자 회사의 규모를 설정할 수 있습니다. ">
									</div>
									<div class="card-body">
										<span class="top">시가 총액(%)</span> <select name="backCapUpDown"
											id="slct_capUpDown" class="slct_newport" style="width: 76px;">
											<option value="${compVO.backCapUpDown}" selected="selected">상위</option>
										</select> <input disabled="disabled" name="backCapRate" class="text_extrasmall" type="text" value="${compVO.backCapRate}"
											style="width: 50px;"> <span class="top">%</span>
									</div>
								</div>
							</div>
						</div>


						<div class="btn-div">
							<button class="btn btn_white" type="button"
								onclick="changeTab(0);$('html,body').scrollTop(0);">이전
								단계로</button>
							<button class="btn btn_hana" type="button"
								onclick="changeTab(2);$('html,body').scrollTop(0);">다음
								단계로</button>
						</div>

					</div>
					<!--3번째 메뉴  -->
					<div id="selection2" style="display: none">

						<div class="row vertical-tab">
							<span class="font_20px"><b>가치측정 조건식 설정</b></span><br> <span
								class="font_16px">기업가치를 판단할 조건식을 선택해주세요. 선택하신 조건식으로
								매수/매도가 진행됩니다.</span><br>
							<div class="box_temp">
								<div class="container">
									<div class="col-md-1"
										style="text-align: center; vertical-align: middle;">
										<span class="top1" style="float: left; margin-right: 10px"><b>조건식
												:</b></span>
									</div>
									<div class="col-md-8 box_sec" id="input_condi">
									<input disabled="disabled" type="text" class='condi' readonly value="${compVO.backPBR}">
									<input type="text" class='condi' readonly value="${compVO.backPER}">
									<input type="text" class='condi' readonly value="${compVO.backPCR}">
									<input type="text" class='condi' readonly value="${compVO.backPSR}">
									<input type="text" class='condi' readonly value="${compVO.backROA}">
									<input type="text" class='condi' readonly value="${compVO.backROE}">
									<input type="text" class='condi' readonly value="${compVO.backROS}">
									<input type="text" class='condi' readonly value="${compVO.backEBITDA}">
									<input type="text" class='condi' readonly value="${compVO.backCFPS}">
									</div>
									<div class="col-md-3" style="float: left">
									</div>
								</div>
							</div>
							<table class="tbl_horizon" style="margin-top: 10px;">
								<colgroup>
									<col style="width: 160px">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th class="buy">매수 조건식 선택 <img
											src="${pageContext.request.contextPath}/resources/img/icn_tip.png"
											style="cursor: help; top: 3px; position: relative"
											title="조건식을 통해 선정된 종목의 매수 우선순위를 정할 수 있습니다."></th>
										<td>
											<div class="container">

												<div class="col-md-3" style="float: left">
													<span class="top1">밸류 팩터</span> <select id="valueFactor" disabled="disabled"
														class="slct_condi">
														<option value="PER" selected="selected">PER</option>
														<option value="PBR" selected="selected">PBR</option>
														<option value="PCR" selected="selected">PCR</option>
														<option value="PSR" selected="selected">PSR</option>
													</select>
												</div>
												<div class="col-md-3"
													style="border-right: 1px solid rgba(0, 0, 0, 0.125); float: left">
													<button type="button" class="btn_hana btn_add"
														style="line-height: 15px; width: 100px;" disabled="disabled"
														onclick="addCondition($('#valueFactor').val())">조건식 
														추가</button>
												</div>
												<div class="col-md-3" style="float: left">
													<span class="top1">수익성 팩터</span> <select id="QuailtyFactor" disabled="disabled"
														class="slct_condi">
														<option value="ROA" selected="selected">ROA</option>
														<option value="ROE" selected="selected">ROE</option>
														<option value="ROS" selected="selected">ROS</option>
														<option value="CFPS" selected="selected">CFPS</option>
														<option value="EBITDA" selected="selected">EBITDA</option>
													</select>
												</div>
												<div class="col-md-3" style="float: left">
												
													<button type="button" class="btn_hana btn_add" disabled="disabled"
														style="line-height: 15px; width: 100px;" 
														onclick="addCondition($('#QuailtyFactor').val())">조건식
														추가</button>
												</div>


											</div>
										</td>
									</tr>
								</tbody>
							</table>




						</div>



						<div class="btn-div">
							<button class="btn btn_white"
								onclick="changeTab(1);$('html,body').scrollTop(0);">이전 조건 보기</button>
						<button class="btn btn_hana" type="button"
								onclick="changeTab(3);$('html,body').scrollTop(0);">백테스팅 결과보기</button>
							
						</div>

					</div>
				</form>
				
				<div id="selection3" style="display:block">
					수익률 데이터
				<div>
		<canvas id="myChart"  width="100%"></canvas>
	</div>



				</div>

			</div>

		</div>

	</section>
	<!-- section 끝 -->
	<!-- Start Footer -->
	<footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	</footer>
	<!-- End Footer -->


</body>
</html>