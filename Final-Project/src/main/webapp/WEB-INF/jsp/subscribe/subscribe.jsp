<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하나 OneClub > OneClub 서비스 가입</title>
<script
	src="${ pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>



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
	height: 460px;
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
	font-weight: 700
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
	margin-top: 170px;
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
	width: 660px;
	margin-top: 40px;
}

.subtitle_40px {
	margin-top: 30px;
	font-size: 33px;
	font-weight: 700;
}

.result_section {
	display: block;
	border: 1px solid #bbb;
	height: auto;
	width: 1600px;
	border-top: #fff;
	padding: 20px;
	padding-bottom: 20px;
	margin: auto;
}

.fullDetail_tabBox li {
	float: left;
	text-align: center;
	margin-bottom: -1px;
	width: 200px;
	padding: 16px 0;
	position: relative;
	border: 1px solid #ddd;
	border-bottom-color: #008485;
	background: #f6f6f6;
	font-size: 23px;
	font-weight: 500;
	color: #888;
	cursor: pointer;
}

.fullDetail_tabBox ul {
	position: relative;
	border-bottom: 1px solid #008485;
}

.fullDetail_tabBox li.on {
	background: #fff;
	border: 1px solid #008485;
	border-bottom-color: #fff;
	color: #008485;
	font-weight: 600;
}

.fullDetail_tabBox ul:after {
	display: block;
	clear: both;
	content: "";
}

.fullDetail_tabBox {
	width: 1600px;
	margin: auto;
}

.msg_sound_only, .sound_only {
	display: inline-block !important;
	position: absolute;
	top: 0;
	left: 0;
	margin: 0 !important;
	padding: 0 !important;
	font-size: 0;
	line-height: 0;
	border: 0 !important;
	overflow: hidden !important;
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
	margin-top: 50px;
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

.bg_hana {
	background-color: #EAFCFC;
	border-top: 1.5px solid #000;
	border-bottom: 1px solid #ddd;
}

.result_section2 {
	display: block;
	border: 1px solid #bbb;
	height: auto;
	width: 1600px;
	border-top: #fff;
	padding-bottom: 20px;
	margin: auto;
}

.inner-tab2 {
	height: 500px;
	width: 1600px;
	margin: auto;
}

.bg_hana2 {
	background-color: #fff;
	border-top: 2px solid #000;
}

.pb_tab4 {
	height: 250px;
	float: left;
	text-align: center;
	padding: 30px;
}

.tab-child {
	height: 100%;
	border: 1px solid #fff;
	border-radius: 20px;
	background-color: rgb(240, 240, 240, 0.8);
}

.vertical-row2 {
	width: 1600px;
	height: 550px;
	margin-top: 30px
}

.pb_tab5 {
	height: 550px;
	float: left;
	text-align: center;
	padding: 50px;
}

.vertical-row2 {
	background-color: rgb(255, 247, 225, 0.5);;
}

.tab-child2 {
	height: 100%;
	border: 1px solid #fff;
	border-radius: 20px;
	background-color: rgb(240, 240, 240, 0.8);
	padding: 30px;
}

.subtitle_20px {
	font-size: 28px;
	font-weight: 600;
}

.pb_desCribe2 {
	font-size: 22px
}

.third_dec {
	text-align: left;
	margin-top: 33px;
	margin-left: 30px;
}

.tab-child2 img {
	width: 260px;
}

.third_dec2 {
	text-align: center;
	margin-top: 30px
}

.third_dec3 {
	text-align: center;
	margin-top: 45px;
}
.inner-tab3 {
	height: 250px;
	width: 1600px;
	margin: auto;
}
.vertical-row table{
    margin: auto;
    width: 80%;
    text-align: center;
    border-collapse: separate;
    border-spacing: 0 30px;
}
.vertical-row table th,td{
	border-bottom : 1px solid #ddd;
	
}
.vertical-row table th{
    font-size: 30px;
    width: 20%;
    text-align: left;
}
.vertical-row table td{
	font-family: 'HanaL';
	font-size : 25px;
}
.pb_tab6{
	height: 250px;
	float: left;
	text-align: center;
	padding: 30px 80px;
}
.tab-child3 {
	height: 100%;
	border: 1px solid #fff;
	border-radius: 20px;
	border-bottom: 2px solid #ddd;
	border-right:2px solid #ddd;
}
.pb_tab7{
	height: 850px;
	float: left;
	text-align: center;
    margin-top: -250px;
    overflow:hidden;
}
.btn_below{
	margin-top: 750px;
}
.pb_tab7:hover{
	border:4px solid #008485;
}


</style>
<script type="text/javascript">
	$(document).ready(function() {
		$('#resultTabMenu0').click(function() {
			changeResultTab(0)
		})
		$('#resultTabMenu1').click(function() {
			changeResultTab(1)
		})
		$('#resultTabMenu2').click(function() {
			changeResultTab(1)
		})

	})
	function changeResultTab(num) {
		for (var i = 0; i < 2; i++) {
			document.getElementById("resultTabMenu" + i.toString()).className = "";
			document.getElementById("PortResultSection" + i.toString()).style.display = "none";
		}
		document.getElementById("resultTabMenu" + num).className = "on";
		document.getElementById("PortResultSection" + num.toString()).style.display = "";
	}
	function Change() {
		var selectedIndex = document.fwrite.consultCate.options.selectedIndex;
		var selected = document.fwrite.consultCate.options[selectedIndex].value
		if (selected == 'portfolio') {
			$('.slct_port').css('display', '')
		} else {
			$('.slct_port').css('display', 'none')
		}
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
				<p class="fl title">One Club 서비스 가입</p>
				<p class="fl info">One Club에 가입해 여러가지 서비스를 누려보세요!</p>
			</li>
			<li class="fr">
				<p class="crumbs">
					One클럽<span>></span>서비스 가입
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
					<li class="subtitle_50px bold">OneClub 서비스 가입</li>
				</ul>
			</div>
			<div class="row vertical-tab">
				<div class="inner-tab bg_hana">
					<div class="col-md-7 pb_tab3">
						<div class="second_dec">
							<ul>
								<li><span class="subtitle_40px"><span
										class="pb_area">하나 OneClub</span>서비스 가입</span></li>
							</ul>
							<ul>
								<li><span class="pb_desCribe"> 나만의 가치투자 플랫폼, One
										Club <br> 투자정보, 나만의 로보어드바이저, 상담 모든 것을 OneClub에서!
								</span></li>
							</ul>
						</div>
					</div>
					<div class="col-md-5 pb_tab2">
						<img class="councel_img"
							src="${pageContext.request.contextPath}/resources/img/svg/submain.png"
							alt="Card image">
					</div>
				</div>
			</div>
			<div class="row vertical-tab">
				<ul style="padding-left: 0;">
					<li class="subtitle_40px">OneClub 서비스</li>
				</ul>
			</div>
			<div class="fullDetail_tabBox">
				<ul style="padding-left: 0px; margin-bottom: 0px;">
					<li id="resultTabMenu0" class="on">서비스 소개</li>
					<li id="resultTabMenu1" class="">서비스 가입</li>
				</ul>
			</div>
			<div id="PortResultSection0" class="result_section2"
				style="height: 1500px; border: 0px">
				<div class="row vertical-tab">
					<ul style="padding-left: 0;">
						<li class="subtitle_30px">OneClub 회원만의 특별한 서비스</li>
					</ul>
				</div>

				<div class="inner-tab2 bg_hana2">
					<div class="vertical-row">
						<div class="col-md-6 pb_tab4">
							<div class="tab-child">
								<div class="third_dec">
									<ul>
										<li><span class="subtitle_20px">관심종목 <span
												class="pb_area">일일 리포트</span></span></li>
									</ul>
									<ul>
										<li><span class="pb_desCribe2"> 투자는 하고 싶지만 정보가 없어
												어려운 주식! <br> 관심 있는 종목에 대한 투자정보를 제공합니다.
										</span></li>
									</ul>
								</div>

							</div>
						</div>
						<div class="col-md-6 pb_tab4">
							<div class="tab-child">
								<div class="third_dec">
									<ul>
										<li><span class="subtitle_20px"><span
												class="pb_area">나만의 투자전략</span> 설정</span></li>
									</ul>
									<ul>
										<li><span class="pb_desCribe2">여기저기 추천종목은 들리는데, 이게
												맞는건지 모르겠네! <br> OneClub에서 나만의 투자조건을 설정할 수 있도록 도와드립니다.
										</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="vertical-row">
						<div class="col-md-6 pb_tab4">
							<div class="tab-child">
								<div class="third_dec">
									<ul>
										<li><span class="subtitle_20px">내 투자전략 <span
												class="pb_area">검증</span></span></li>
									</ul>
									<ul>
										<li><span class="pb_desCribe2">나만의 투자전략이 과연 효과가
												있을까? <br> 과거 10년 주식데이터를 활용해서 내 투자전략을 검증할 수 있습니다.
										</span></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-6 pb_tab4">
							<div class="tab-child">
								<div class="third_dec">
									<ul>
										<li><span class="subtitle_20px">내 <span
												class="pb_area">포트폴리오</span> 비교
										</span></li>
									</ul>
									<ul>
										<li><span class="pb_desCribe2">내 투자전략과 검증결과를
												포트폴리오로! <br> 내 투자전략들을 비교해보세요!
										</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="vertical-row2">
					<div class="col-md-6 pb_tab5">
						<div class="tab-child2">
							<img
								src="${pageContext.request.contextPath}/resources/img/svg/robo.svg">
							<div class="third_dec2">
								<ul style="margin: 0">
									<li><span class="subtitle_30px">검증된 투자전략 기반<span
											class="pb_area">종목 추천</span>
									</span></li>
								</ul>
								<ul>
									<li><span class="pb_desCribe2">검증된 나만의 투자전략으로 <br>
											실제 투자에 적용할 수 있는 종목 추천 서비스를 제공합니다.
									</span></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 pb_tab5">
						<div class="tab-child2">
							<img
								src="${pageContext.request.contextPath}/resources/img/svg/advisor.svg">
							<div class="third_dec2">
								<ul style="margin: 0">
									<li><span class="subtitle_30px"><span
											class="pb_area">투자 전문가</span> 상담</span></li>
								</ul>
								<ul>
									<li><span class="pb_desCribe2">OneClub만의 특별한 맞춤상담 <br>내
											전략이 의심스러울때 전문가와 만나는 컨설팅 서비스입니다.
									</span></li>
								</ul>
							</div>
						</div>
					</div>

				</div>
				<div class="btn-div">
					<input type="button" id="resultTabMenu2" class="btn btn_hana"
						value="서비스 가입하기">
				</div>
			</div>
			<div id="PortResultSection1" class="result_section"	style="height: 1000px; border: 0px; display: none;">
				<div class="row vertical-tab">
					<ul style="padding-left: 0;">
						<li class="subtitle_30px">OneClub 회원만의 특별한 서비스</li>
					</ul>
				</div>
				<div class="inner-tab3 bg_hana2">
					<div class="vertical-row">
						<div class="col-md-3 pb_tab6">
							<div class="">
							</div>
						</div>
						<div class="col-md-4 pb_tab6">
							<div class="tab-child3 " >
								<div class="third_dec3">
									<ul>
										<li><span class="subtitle_30px"><span
												class="pb_area">HANA Family</span><br>요금제</span></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-4 pb_tab6">
							<div class="tab-child3">
								<div class="third_dec3">
									<ul>
										<li><span class="subtitle_30px"><span
												class="pb_area">HAVA VIP</span><br>요금제</span></li>
									</ul>
	
								</div>
							</div>
						</div>
					</div>
					<div class="vertical-row">
						<table>
						<tbody>
							<tr>
								<th>이용 요금</th>
								<td>5,900원 / 월</td>					
								<td>9,900원 / 월</td>					
							</tr>
							<tr>
								<th>첫달 무료이용</th>
								<td>○</td>					
								<td>○</td>					
							</tr>
							<tr>
								<th>투자전략 검증</th>
								<td>○</td>					
								<td>○</td>					
							</tr>
							<tr>
								<th>전략 검증기간</th>
								<td>3년</td>					
								<td>5년</td>					
							</tr>
							<tr>
								<th>종목 추천</th>
								<td>x</td>					
								<td>○</td>					
							</tr>
							<tr>
								<th>전문가 상담</th>
								<td>x</td>					
								<td>○</td>					
							</tr>
						</tbody>
						</table>
					</div>
				</div>
					<div class="vertical-row">
						<div class="col-md-3 pb_tab6" style="margin-right:20px">

						</div>
							<c:choose>
						<c:when test="${userVO.subscribeGrade eq 'HANA FAMILY'}">
							<div class="col-md-4 pb_tab7" style="margin-right: 20px; border:4px solid #008485; ">
								<div class="btn_below">
									<button type="button" id="resultTabMenu2" class="btn btn_white"
										onclick="location.href='${pageContext.request.contextPath}/subscribe/cancel'">서비스 취소</button>
								</div>
							</div>
							<div class="col-md-4 pb_tab7" style="margin-right: 20px">
								<div class="btn_below">
									<button type="button" id="resultTabMenu2" class="btn btn_hana"
										onclick="location.href='${pageContext.request.contextPath}/subscribe/2'">업그레이드 하기</button>
								</div>
							</div>
						</c:when>
						<c:when test="${userVO.subscribeGrade eq 'HANA VIP'}">
							<div class="col-md-4 pb_tab7" style="margin-right: 20px">
								<div class="btn_below">
									<button type="button" id="resultTabMenu2" class="btn btn_hana"
										onclick="location.href='${pageContext.request.contextPath}/subscribe/1'">서비스
										변경 하기</button>
								</div>
							</div>
							<div class="col-md-4 pb_tab7" style="margin-right: 20px; border:4px solid #008485;">
								<div class="btn_below">
									<button type="button" id="resultTabMenu2" class="btn btn_white"
										onclick="location.href='${pageContext.request.contextPath}/subscribe/cancel'">서비스 취소</button>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="col-md-4 pb_tab7" style="margin-right: 20px; ">
								<div class="btn_below">
									<button type="button" id="resultTabMenu2" class="btn btn_hana"
										onclick="location.href='${pageContext.request.contextPath}/subscribe/1'">서비스
										가입하기</button>
								</div>
							</div>
							<div class="col-md-4 pb_tab7" style="margin-right: 20px">
								<div class="btn_below">
									<button type="button" id="resultTabMenu2" class="btn btn_hana"
										onclick="location.href='${pageContext.request.contextPath}/subscribe/2'">서비스
										가입하기</button>

								</div>
							</div>
								</c:otherwise>
							</c:choose>

					</div>

		</div>
	</section>
	<footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	</footer>

</body>
</html>