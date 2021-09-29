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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.sparkline.js"></script>


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
     + '<input type="checkbox" name="campareBox_'+num+'" value="'+num+'" id="campareBox_'+num+'" class="fl checkbox" onchange="javascript:ChangeSelected('+num+', this.checked)"'
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
function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}
function OpenComparePopup(v){
	if(v){
	$('#divGenTemplate_popupPortCompare').show()
	var cnt = 1
	var compo='';
	var result = '';
	$('#divTemplate_compareBottomBox input[type="checkbox"]').each(function(){
		
		var chk = $(this).val();
		$.ajax({
			'type' : 'POST',
			'url' : "${ pageContext.request.contextPath }/backtest/compare/",
			'data' : {
				"portNum" : chk},
			'success' : function(msg) {
				compo = JSON.parse(msg.compVO)
				result = JSON.parse(msg.totalResult)
				acc = JSON.parse(msg.accList)
				var condi = ''
				if(compo.backPBR != undefined)  condi += compo.backPBR + ' ';
				if(compo.backPER != undefined)  condi += compo.backPER + ' ';
				if(compo.backPSR != undefined)  condi += compo.backPSR + ' ';
				if(compo.backPCR != undefined)  condi += compo.backPCR + ' ';
				if(compo.backROA != undefined)  condi += compo.backROA + ' ';
				if(compo.backROE != undefined)  condi += compo.backROE + ' ';
				if(compo.backROS != undefined)  condi += compo.backROS + ' ';
				if(compo.backEBITDA != undefined)  condi += compo.backEBITDA + ' ';
				if(compo.backCFPS != undefined)  condi += compo.backCFPS + ' ';
			    var ar1 = compo.backStartDate.split('-');
			    var ar2 = compo.backEndDate.split('-');
			    var da1 = new Date(ar1[0], ar1[1], ar1[2]);
			    var da2 = new Date(ar2[0], ar2[1], ar2[2]);
			    var dif = da2 - da1;
			    var cMont = parseInt(dif/(24 * 60 * 60 * 1000*30));
			    
 				$(".backTitle").append("<td>"+compo.backTitle+"</td>");
				$('.backDescript').append("<td>"+compo.backDescript+"</td>") ;
				$(".backDate").append("<td>"+compo.backStartDate+"~"+compo.backEndDate+"("+cMont+"개월)</td>");
				$(".backCondi").append("<td>"+condi+"</td>");
				$('.earningRate').append("<td>"+result.earningRate+"%  <br>"
				+"<span class=compareLine"+compo.portNum+">Loading..</span></td>") ;
				$('.totalCagr').append("<td>"+result.totalCagr+" % </td>") ;
				$('.avgDayFluc').append("<td>"+result.avgDayFluc+" % </td>") ;
				$('.avgFluc').append("<td>"+result.avgFluc+" %</td>") ;
				$('.winningRate').append("<td>"+result.winningRate+"%<br>"
				+"<span class=comparePie"+compo.portNum+">Loading..</span></td>");
				$('.startAsset').append("<td>"+comma(result.startAsset)+" 원 </td>") ;
				$('.profitLoss').append("<td>"+comma(result.profitLoss)+" 원 </td>") ;
				$('.finalBal').append("<td>"+comma(result.finalBal)+" 원 </td>") ;
				
				var earningRate = [];
				var dataSet = acc
				$.each(dataSet, function(inx, obj) {
					earningRate.push(obj.earningRate);
				});
				 $('.compareLine'+compo.portNum).sparkline(earningRate,  {type: 'line',  width: '120',  height: '40'})
				 $(".comparePie"+compo.portNum).sparkline([result.winningRate,(100-Number(result.winningRate))], { type: 'pie',  width: '80',  height: '80', sliceColors: ['#dc3912',' #ddd']});
	
				 
			}
				})
		cnt = cnt+1;
	})


	
	}else{
	$('#divGenTemplate_popupPortCompare').hide();
	$(".backTitle td").remove();
	$('.backDescript td').remove();
	$(".backDate td").remove();
	$(".backCondi td").remove();
	$('.earningRate td').remove();
	$('.totalCagr td').remove();
	$('.avgDayFluc td').remove();
	$('.avgFluc td').remove();
	$('.winningRate td').remove();
	$('.startAsset td').remove();
	$('.profitLoss td').remove();
	$('.finalBal td').remove();
	
	}
	
}


</script>
</head>
<body>
	<!-- Header -->
	<style>
#loading {
   width: 100vw;
   height: 150vw;
   top: 0;
   left: 0;
   position: fixed;
   display: block;
   opacity: 0.7;
   background-color: #fff;
   z-index: 99;
   text-align: center;
}

#loading-image {
  position: absolute;
  z-index: 100;
  margin-left:-5vw;
   margin-top: 200pt;
    height: 100pt;
   width: 100pt;
}
</style>
<script type="text/javascript">
window.onbeforeunload = function () { $('#loading').show(); }  //현재 페이지에서 다른 페이지로 넘어갈 때 표시해주는 기능
$(window).load(function () {          //페이지가 로드 되면 로딩 화면을 없애주는 것
    $('#loading').hide();
});		 
</script>

	<!-- header  -->
	 <div id="loading">
        <img id="loading-image" src="${pageContext.request.contextPath}/resources/img/loading/loading.gif" alt="Loading..." />
    </div>
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
						<p class="rl portNum_small">no. ${loop.count}</p>
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
								<span class="g${list.backTestCompoVO.portNum}">Loading..</span>
								<%-- <canvas id=""></canvas> --%>

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
							onclick="OpenComparePopup(true)">비교하기</button>
					</li>
				</ul>
			</div>
		</ul>
	</div>




<style>
#divGenTemplate_popupPortCompare{
    position: fixed;
    padding: 0;
    /* margin: 0; */
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    margin: 0 auto;
    z-index: 20000;
}
#wrap_genPop {
    position: relative;
    background: #fff;
    width: 900px;
    padding: 30px;
    margin: 30px auto;
    /* margin: auto; */
    margin-bottom: 140px;
}
.box_popCtrlBtns {
    width: 105px;
    position: absolute;
    left: 959px;
    top: 0px;
    z-index: -1000;
}
.portName_large {
    font-size: 22px;
    font-weight: 600;
    color: #333;
    letter-spacing: -1px;
    padding-left: 8px;
}

.fullDetail_tabBox {
	width: 100%;
	overflow: hidden;
	margin-top:20px;
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

.fullDetail_tabBox li {
	float: left;
	text-align: center;
	margin-bottom: -1px;
	width: 150px;
	padding: 10px 0;
	position: relative;
	border: 1px solid #ddd;
	border-bottom-color: #008485;
	background: #f6f6f6;
	font-size: 20px;
	color: #888;
	cursor: pointer;
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
.compare_table{
	border : 1px solid #ddd;
	width:100%;
	
}
.compare_table th{
text-align: center;
    background: #f1f3f5;
    border-bottom: 1px solid #ddd;
    border-right: 1px solid #ddd;
    font-size: 17px;
    font-weight: 600;
    color: #424242;
    padding: 10px;
}
.compare_table td{
	text-align: center;
    padding: 10px 14px;
    line-height: 18px;
    color: #333;
    background: #fff;
    border-bottom: 1px solid #ddd;
    border-right: 1px solid #ddd;
}



</style>

	<div style="background: rgba(0, 0, 0, 0.7); padding-bottom: 100px !important; display:none;"	id="divGenTemplate_popupPortCompare" >
		<!-- 포트비교 팝업 시작 -->
		<div id="wrap_genPop">
				<!-- 컨트롤버튼 -->
				<div class="box_popCtrlBtns">
					<div style="position: fixed">
						<ul>

							<!-- 팝업닫기 -->
							<li class="clsPop" style="cursor: pointer"><img	src="${pageContext.request.contextPath}/resources/img/btn_clsPopup.png"
								id="btnComparePopupClose" onclick="javascript:OpenComparePopup(false)"></li>
						</ul>
					</div>
				</div>
				<!-- //컨트롤버튼 -->
				<!-- 타이틀 시작 -->
				<span class="portName_large" style="padding-left: 0">포트폴리오 비교하기</span>
				<!-- //타이틀 시작 -->
				<!-- TAB -->
				<div class="fullDetail_tabBox" style="margin-top: 16px">
					<ul>
						<li class="on" id="tabPortInfo"><a>비교결과</a></li>
					</ul>
				</div>
				<!-- //TAB -->
				<!-- 포트정보 컨텐츠 시작 -->
				<div id="divContent_aboutPort">
					<div class="fd_subBox">
					<table class="compare_table">
						<colgroup>
						<col width="20%">
						<col width="40%">
						<col width="40%">
						</colgroup>
						<tbody>
							<tr>
								<th>포트폴리오 비교</th>
								<th>1번</th>
								<th>2번</th>
							</tr>
							<tr class="backTitle">
								<th>포트폴리오 제목</th>
							</tr>
							<tr class="backDescript">
								<th>포트폴리오 설명</th>
							</tr>
							<tr class="backDate">
								<th>운용 기간</th>
							</tr>											
							<tr class="backCondi">
								<th>설정 가치 지표</th>
							</tr>											
							<tr class="earningRate">
								<th>총 수익률</th>
							</tr>											
							<tr class="totalCagr">
								<th>연 환산 수익률</th>
							</tr>											
							<tr class="avgDayFluc">
								<th>일 평균 수익률</th>
							</tr>											
							<tr class="avgFluc">
								<th>일 누적 수익률</th>
							</tr>											
							<tr class="winningRate">
								<th>수익률 vs 손실률</th>
							</tr>											
							<tr class="startAsset">
								<th>투자 원금</th>
							</tr>											
							<tr class="profitLoss">
								<th>총 손익</th>
							</tr>											
							<tr class="finalBal">
								<th>현재 총 자산</th>
							</tr>											
						</tbody>
					</table>
					</div>
				</div>
				<!-- // 포트정보 컨텐츠 끝 -->
		</div>
		<!-- //포트비교 팝업 끝 -->
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
				 $('.g'+${list.key}).sparkline(earningRate,  {type: 'line',
						    width: '100',
						    height: '40'})
				 
			
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