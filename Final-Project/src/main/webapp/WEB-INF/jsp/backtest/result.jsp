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
	padding: 20px;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.section_flowTab li p {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 30px;
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
}

.font_20px {
	font-size: 30px;
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
	font-size: 23px;
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
	font-size: 25px;
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
	color: #333;
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
	width: 200px;
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
	width: 45px;
	height: 45px;
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
	width: 20%;
	text-align: center;
}

.tbl_horizon th {
	background: #f1f3f5;
	font-size: 25px;
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
	width: 150px;
	margin-right: 10px;
	margin-left: 10px;
	cursor: pointer;
	border: 1px solid #bbb;
	color: #333;
	border-radius: 3px;
	height: 33px;
	font-size: 20px;
	padding-left: 10px;
}

.tbl_horizon td {
	padding: 14px 14px;
	color: #333;
	letter-spacing: 0;
	border: 1px solid #ddd;
}

.top1 {
	margin-top: 5px;
	padding-left: 10px;
	color: #666;
	text-align: center;
	font-size: 25px;
	font-weight: 600;
	color: #424242;
}

.btn_add {
	outline: 0;
	outline-style: none;
	transition: 0.1s;
	padding: 10px 0;
	text-align: center;
	cursor: pointer;
	border-radius: 0.25rem;
	vertical-align: middle;
	line-height: 30px;
	width: 150px;
	font-size: 23px;
}

.box_sec {
	box-sizing: border-box;
	height: 33px;
	float: left;
}

input[type=text].condi {
	width: 100px;
	text-align: center;
	font-size: 23px;
	font-weight: 400;
	border: #fff;
	background-color: #ffe8e8;
	border-radius: 1rem;
	font-weight: 600;
	margin-top: 10px;
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

.daybtn {
	background-color: #ddd;
	font-weight: 550;
	border-radius: calc(0.25rem - 1px);
	border: 0px solid #ddd;
}

.titleInput {
	margin: 10px 10px;
	font-size: 20px;
}

.off_flow p, .off_flow span {
	color: #9999;
}
</style>
<script
	src="${ pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script
	src="${ pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script
	src="${ pageContext.request.contextPath}/resources/js/templatemo.js"></script>
<!-- Custom -->
<script src="${ pageContext.request.contextPath}/resources/js/custom.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#resultTabMenu0').click(function() {
			changeResultTab(0)
		})
		$('#resultTabMenu1').click(function() {
			changeResultTab(1)
		})
		$('#resultTabMenu2').click(function() {
			changeResultTab(2)
		})
		$('#resultTabMenu3').click(function() {
			changeResultTab(3)
		})
		$('#resultTabMenu4').click(function() {
			changeResultTab(4)
		})

	})
	function changeResultTab(num) {
		for (var i = 0; i < 5; i++) {
			document.getElementById("resultTabMenu" + i.toString()).className = "";
			document.getElementById("PortResultSection" + i.toString()).style.display = "none";
		}
		document.getElementById("resultTabMenu" + num).className = "on";
		document.getElementById("PortResultSection" + num.toString()).style.display = "";
	}
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
				<p class="fl title">내 백테스팅 포트폴리오 만들기</p>
				<p class="fl info">다양한 조건을 넣어 나만의 주식투자 전략을 검증해보세요</p>
			</li>
			<li class="fr">
				<p class="crumbs">
					One클럽<span>></span>백테스팅 포트폴리오 만들기
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
					<li id="tabMenu0" class="off_flow">
						<p>Step 1. 기본 설정</p> <span>기본 조건들을 설정하세요.</span>
					</li>
					<li id="tabMenu1" class="off_flow">
						<p>Step 2. 매매조건 설정</p> <span>매수/매도조건을 설정하세요.</span>
					</li>

					<li id="tabMenu2" class="off_flow">
						<p>Step 3. 가치측정 조건 설정</p> <span>기업 가치를 판단할 조건을 설정하세요</span>
					</li>

					<li id="tabMenu3" style="cursor: pointer;" class="on">
						<p>Step 4. 백테스팅 결과</p> <span>백테스팅 포트폴리오가 완성되었습니다.</span>
					</li>
				</ul>
			</div>
		</div>

		<div class="selection_Tab">
			<div class="content-by-step">
				<input type="hidden" name="userId" value="${userVO.userId}"
					disabled="disabled">
				<style>
.fullDetail_tabBox {
	width: 100%;
	overflow: hidden;
	margin-top: 40px;
}

.fullDetail_tabBox ul {
	position: relative;
	border-bottom: 1px solid #f83838;
}

.fullDetail_tabBox li.on {
	background: #fff;
	border: 1px solid #f83838;
	border-bottom-color: #fff;
	color: #f83838;
	font-weight: 600;
}

.fullDetail_tabBox li {
	float: left;
	text-align: center;
	margin-bottom: -1px;
	width: 200px;
	padding: 16px 0;
	position: relative;
	border: 1px solid #ddd;
	border-right: none;
	border-bottom-color: #f83838;
	background: #f6f6f6;
	font-size: 25px;
	color: #888;
}

.fullDetail_tabBox ul:after {
	display: block;
	clear: both;
	content: "";
}

.box_fullDetail_rates .rate_leftBox {
	width: 530px;
	background: #f5f7f9;
	padding: 14px 20px;
}

.fl {
	float: left;
}

.fr {
	float: right;
}

.box_fullDetail_rates .rate {
	width: 24%;
	display: inline-block;
	text-align: center;
}

.box_fullDetail_rates .rate span {
	display: block;
	margin-bottom: 10px;
	color: #424242;
}

.box_fullDetail_rates .rate em {
	font-family: 'Roboto', sans-serif;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 0;
}

.box_fullDetail_rates .rate_rightBox {
	width: 700px;
	background: #f5f7f9;
	padding: 14px 20px;
}

.box_fullDetail_rates .rate_right span {
	display: block;
	margin-bottom: 10px;
	color: #424242;
}

.box_fullDetail_rates .rate_right {
	width: 32%;
	display: inline-block;
	text-align: center;
}

.box_fullDetail_rates .rate_right em {
	font-family: 'Roboto', sans-serif;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 0;
}

.box_fullDetail_rates .rate_right em {
	font-family: 'Roboto', sans-serif;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 0;
}

.txt_plus {
	color: #f83838;
}

em {
	font-style: normal;
	font-weight: normal;
}

.vertical-tab2 {
	margin-bottom: 20px;
	padding-top: 30px;
}

.result_section {
	display: block;
	border: 1px solid #bbb;
	height: 500px;
	width: 100%;
	border-top: #fff;
}

.portNum_large {
	margin-bottom: 5px;
	width: 250px;
	padding-left: 33px;
	padding-top: 2px;
	height: 43px;
	background: #666;
	color: #fff;
	font-family: 'Roboto', sans-serif;
	font-weight: 600;
	font-size: 25px;
	border-radius: 3px;
}

.portName_large img {
	width: 25px;
	margin-top: 10px;
	margin-left: 10px;
}

.portInfo_full {
	width: 100%;
	background: #f5f7f9;
	overflow: hidden;
	padding: 12px 10px;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.infotxt_13px66 {
	font-size: 20px;
	color: #666;
	margin: 0px;
}

.edit_title, .edit_desc {
	display: none;
	float: left;
	margin: 10px 10px;
}

.edit_bnt {
	font-size: 20px;
}

.box_ctrlBtns.type-2 .btn_popSide {
	border-radius: 5px;
	float: left;
	margin-left: 5px;
}

.box_ctrlBtns .btn_popSide {
	color: #fff;
	padding: 13px 10px;
	margin-bottom: 1px;
	border-radius: 0 5px 5px 0;
}

.sidebg_del {
	background: #424242;
}

.sidebg_modify {
	background: #777;
}

.sidebg_new {
	background: #f83838;
	
}
.sidebg_copy {
    background: #555;
}
</style>
				<script type="text/javascript">
					function editMode(f) {
						if (f) {
							$('.edit_title').css('display', 'block')
							$('.view_title').css('display', 'none')
						} else {
							$('.edit_title').css('display', 'none')
							$('.view_title').css('display', 'block')
						}
					}
					function editDescMode(f) {
						if (f) {
							$('.edit_desc').css('display', 'block')
							$('.view_desc').css('display', 'none')
						} else {
							$('.edit_desc').css('display', 'none')
							$('.view_desc').css('display', 'block')
						}
					}

					function sendEditContent(v, data) {
						if (v == 1) {
							var title = $('#viewTitle').text()
							if (title != data) {
								$('#viewTitle').text(data)
								$
										.ajax({
											'type' : 'POST',
											'url' : "${ pageContext.request.contextPath }/backtest/edit",
											'data' : {
												"portNum" : '${compo.portNum}',
												"backTitle" : encodeURIComponent(data),
												"backDescript" : '${compo.backDescript}'
											}
										})
							}
						}
						if (v == 2) {
							var title = $('#viewDesc').text()
							if (title != data) {
								$('#viewDesc').text(data)
								$
										.ajax({
											'type' : 'POST',
											'url' : "${ pageContext.request.contextPath }/backtest/edit",
											'data' : {
												"portNum" : '${compo.portNum}',
												"backTitle" : '${compo.backTitle}',
												"backDescript" : encodeURIComponent(data)
											}
										})
							}
						}
					}
				</script>

				<div id="selection3" style="display: block">
					<div class="row vertical-tab">
						<div class="col-md-8">
							<p class="fl portNum_large" id="PortID" style="margin-top: 4px">백테스트
								리포트</p>
							<p class="fl font_20px view_title" id="viewTitle"
								style="margin-top: 4px; line-height: 40px; margin-left: 5px">${compo.backTitle}여기에
								설명이 담길 거고, 수정시 input태그</p>
							<p class="fl portName_large view_title" id="pPortNameEdit">
								<img
									src="${pageContext.request.contextPath}/resources/img/icn_editPortname.png"
									style="cursor: pointer" class="nameInputArea"
									onclick="editMode(true);">
							</p>
							<input name="backTitle" type="text" id="editTitle"
								style="width: 44%; margin-left: 10px"
								class="titleInput edit_title" value="${compo.backTitle}" />
							<button class="btn_white edit_title edit_bnt" type="button"
								onclick="editMode(false);sendEditContent(1,$('#editTitle').val())">수정</button>
							<br>
							<div class="fl portInfo_full view_desc" id="divPortDesc">
								<p class="fl infotxt_13px66" id="viewDesc">수정할 내용임!
									${compo.backDescript}</p>
								<p class="fl infotxt_13px66 ml8px " id="pPortDescEdit">
									<img
										src="${pageContext.request.contextPath}/resources/img/icn_editPortname.png"
										style="cursor: pointer" class="descInputArea"
										onclick="editDescMode(true);">
								</p>
							</div>
							<input name="backDescript" id="editDesc" type="text"
								style="width: 80%; margin-left: 0px;"
								class="titleInput edit_desc" value="${compo.backDescript}" />
							<button class="btn_white edit_desc edit_bnt" type="button"
								onclick="editDescMode(false);sendEditContent(2, $('#editDesc').val())">수정</button>





						</div>
						<div class="col-md-4">
							<div class="box_ctrlBtns type-2">
								<ul>
									<!-- 새포트만들기 -->
									<li class="btn_popSide sidebg_new"
										onclick="location.href='/GenPro/Port.aspx';"><img
										src="${pageContext.request.contextPath}/resources/img/icn_portNew_white.png"><span>새로 하기</span></li>
									<!-- //새포트만들기 -->
									<!-- 포트수정 -->
									<li class="btn_popSide sidebg_modify" id="btnPortEdit" style="">
										<img
										src="${pageContext.request.contextPath}/resources/img/icn_portModify_white.png"><span>수정 하기
									</li>
									<!-- //포트수정 -->
									<!-- 포트복사 : 새포트 버튼이 있을 경우 -->
									<li class="btn_popSide sidebg_copy" id="btnPortCopy"><img
										src="${pageContext.request.contextPath}/resources/img/icn_portCopy_white.png"><span>조건 복사</span></li>
									<!-- //포트복사 -->
									<!-- 포트삭제 -->
									<li class="btn_popSide sidebg_del" id="btnPortDelete"><img
										src="${pageContext.request.contextPath}/resources/img/icn_delete_white.png"><span>삭제 하기</span></li>
									<!-- //포트삭제 -->
								</ul>
							</div>
						</div>
					</div>
					<div class="fullDetail_tabBox">
						<ul style="padding-left: 0px; margin-bottom: 0px;">
							<li id="resultTabMenu0" class="on">종합결과</li>
							<li id="resultTabMenu1" class="">매매결과</li>
							<li id="resultTabMenu2" class="">수익률</li>
							<li id="resultTabMenu3" class="">매매종목 정보</li>
							<li id="resultTabMenu4" class=""
								style="border-right: 1px solid rgb(221, 221, 221);">거래내역</li>
						</ul>
					</div>
					<div id="PortResultSection0" class="result_section">
						첫번재 페이지
						<div class="box_fullDetail_rates">
							<ul>
								<li class="fl rate_leftBox">
									<p class="rate" id="PortRTLeft1">
										<span title="일일수익률의 평균을 의미합니다.">일평균 수익률</span><em
											class="txt_plus">0.05%</em>
									</p>
									<p class="rate" id="PortRTLeft2">
										<span
											title="((실현 손익+미실현 손익)/투자원금(총투자평잔))*100<br></span>투자평균자산 대비 순수익으로 계산합니다.">누적
											수익률</span><em class="txt_plus">11.8%</em>
									</p>
									<p class="rate" id="PortRTLeft3">
										<span
											title="(누적수익률(%)+1)^(365/기간)-1<br></span>투자기간 대비 누적수익률를 연율화한 연평균 수익률을 의미합니다.">CAGR</span><em><em
											class="txt_plus">11.83%</em></em>
									</p>
									<p class="rate" id="PortRTLeft4">
										<span
											title="역사적 ((저점자산-고점자산)/고점자산)*100<br></span>Maximum Drawdown, 최대낙폭이라고 하며,<br/>포트폴리오 운영기간 중 고점에서 저점까지 최대 누적 손실률을 의미합니다.">MDD</span><em>18.58%</em>
									</p>
								</li>
								<li class="fr rate_rightBox">
									<p class="rate_right" id="PortRTRight1">
										<span title="일별 투자원금의 평균입니다.">투자원금 (총투자평잔)</span><em>50,000,000</em>원
									</p>
									<p class="rate_right" id="PortRTRight2">
										<span title="매도 종목의 손익률을 통해 실현 손익금을 계산합니다.">총 손익</span><em
											class="txt_plus">5,899,864</em>원
									</p>
									<p class="rate_right" id="PortRTRight3">
										<span title="마지막 거래일의 최종 자산(예수금 + 잔고 가치)">현재 총 자산</span><em>55,899,864</em>원
									</p>
								</li>
							</ul>
						</div>
					</div>
					<div id="PortResultSection1" style="display: none;"
						class="result_section">
						<!-- 가상매매 수익률 박스 -->
						두번재 페이지
					</div>
					<div id="PortResultSection2" style="display: none;"
						class="result_section">
						<!-- 가상매매 수익률 박스 -->
						세번재 페이지
					</div>
					<div id="PortResultSection3" style="display: none;"
						class="result_section">
						<!-- 가상매매 수익률 박스 -->
						네번재 페이지
					</div>
					<div id="PortResultSection4" style="display: none;"
						class="result_section">
						<!-- 가상매매 수익률 박스 -->
						다섯번재 페이지
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
			chartLabels.push(obj.backDate);
			chartData.push(obj.totalBal);
			chartData2.push(obj.EarningRate);
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
					label : '내 계좌 평가액',
					backgroundColor : 'transparent',
					borderColor : 'red',
					data : chartData
				} ]
			},
			// 옵션 
			options : {}
		});
	</script>

</body>
</html>