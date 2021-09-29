<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하나 OneClub > OneClub 내 포트폴리오 상담</title>
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
    font-weight :500;
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

.fullDetail_tabBox{
	width: 1600px;
    margin: auto;
}
.tbl_wrap table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0 5px;
    border: 1px solid #ccc;
}
.jtbl_frm01 table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    border: 0;
}
.jtbl_frm01 th {
    width: 350px;
    padding: 7px 5px 7px 15px;
    border: 1px solid #e9e9e9;
    border-left: 0;
    text-align: center;
    font-size: 20px;
    color: #333;
    font-weight: 550;
    background: #f8f8f8;
}
.jtbl_frm01 td {
    padding: 7px 10px 7px 10px;
    border-top: 1px solid #e9e9e9;
    border-bottom: 1px solid #e9e9e9;
    background: transparent;
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
.frm_input {
    height: 24px;
    border-radius: 0;
    padding: 0 5px;
}
.jtbl_frm01 textarea {
    width: 98%;
    height: 100px;
}
.jbutton {
    height: 23px;
    padding: 0;
    vertical-align: middle;
    margin-right: 2px;
    background-position: left top;
}
.jbutton.black, .jbutton.black a, .jbutton.black button, .jbutton.black input {
    background-image: url(${pageContext.request.contextPath}/resources/img/buttonBlack.gif);
    color: #fff!important;
}
.jbutton {
    height: 23px;
    padding: 0;
    vertical-align: middle;
    margin-right: 2px;
    background-position: left top;
}
.jbutton.large {
    height: 30px;
    background-position: left -30px;
    margin-top: -1px;
}
.jbutton.large a, .jbutton.large button, .jbutton.large input {
    height: 30px;
    padding: 0 12px 0 10px;
    font-family: "나눔고딕", "Nanum Gothic", "맑은 고딕", "Malgun Gothic";
    font-size: 13px;
    line-height: 30px;
    background-position: right -30px;
}
.input_title{
	
}
.txt_input{
	font-weight: 400;
    font-size: 20px;
    color: #666;
}
.frm_input_content{
	font-size:20px;
}
.frm_input_title{
	width: 100%;

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
/* pagenation */
.pagenation {
	padding: 0;
	text-align: center;
	margin: 30px 0;
}

.pagenation li {
	display: inline;
	padding: 7px 0;
	border: 1px solid #b6b6b6;
	margin: 0 3px;
}

.pagenation li a {
	color: #424242;
	padding: 0px 10px;
}

.pagenation li a img {
	vertical-align: middle;
}

.pagenation li:hover {
	background: #f8f8f8;
}

.pagenation li.on {
	background: #777777;
	border: 1px solid #777777;
}

.pagenation li.on a {
	color: #ffffff;
}
/* 기본테이블 */
.jtbl_wrap table {width:100%;border-collapse:collapse;border-spacing:0;}

.jtbl_head01 {margin:0 0 10px}
.jtbl_head01 thead th {padding:15px 0;border-top:1px solid #2c2c2c;border-bottom:1px solid #d7d7d7;background:#f9f9f9;color:#555; font-weight:normal;font-size:25px;text-align:center;font-weight: 600}
.jtbl_head01 tfoot th, .tbl_head01 tfoot td {padding:10px 0;border-top:1px solid #c1d1d5;border-bottom:1px solid #c1d1d5;background:#d7e0e2;text-align:center}
.jtbl_head01 tbody th {padding:8px 0;border-top:1px solid #e9e9e9;border-bottom:1px solid #e9e9e9}
.jtbl_head01 td {text-align:center; padding:12px 30px;border-top:0px solid #d7d7d7;border-bottom:1px solid #d7d7d7;line-height:1.5em;word-break:break-all;font-size: 25px;color: #555; font-weight: 400;}

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


</style>
<script type="text/javascript">
	$(document).ready(function() {
		$('#resultTabMenu0').click(function() {
			changeResultTab(0)
		})
		$('#resultTabMenu1').click(function() {
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
		if (selected == 'portfolio'){
			$('.slct_port').css('display','')
		}else{
			$('.slct_port').css('display','none')
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
				<p class="fl title">One Club 내 포트폴리오 상담</p>
				<p class="fl info">One Club에서 여러분의 포트폴리오로 투자상담 받으세요</p>
			</li>
			<li class="fr">
				<p class="crumbs">
					One클럽<span>></span>내 포트폴리오 상담
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
					<li class="subtitle_50px bold">OneClub 포트폴리오 상담</li>
				</ul>
			</div>
			<div class="row vertical-tab">
				<div class="inner-tab bg-light">
					<div class="col-md-7 pb_tab3">
						<div class="second_dec">
							<ul>
								<li><span class="subtitle_40px"><span
										class="pb_area">하나 OneClub PB</span>와 함께하는 포트폴리오 상담</span></li>
							</ul>
							<ul>
								<li><span class="pb_desCribe">내가 생각한 가치투자방식에 대해
										백테스팅으로 수익률을 검증하시고,<br> 검증된 포트폴리오로 전문 PB 상담서비스까지 누려보세요!
								</span></li>
							</ul>
						</div>
					</div>
					<div class="col-md-5 pb_tab2">
						<img class="rounded-circle councel_img"
							src="${pageContext.request.contextPath}/resources/img/consultant.png"
							style="border: 3px solid #fff;" alt="Card image">
					</div>
				</div>
			</div>
			<div class="row vertical-tab">
				<ul style="padding-left: 0;">
					<li class="subtitle_40px">전담 PB 상담</li>
				</ul>
			</div>
			<div class="fullDetail_tabBox">
				<ul style="padding-left: 0px; margin-bottom: 0px;">
					<li id="resultTabMenu0" class="on">상담 신청</li>
					<li id="resultTabMenu1" class="">상담 내역</li>
				</ul>
			</div>
			<div id="PortResultSection0" class="result_section" style="height: 1000px; border: 0px">
					<!-- 게시물 작성/수정 시작 { -->
					<form name="fwrite" id="fwrite" action="${pageContext.request.contextPath}/counsel/writeCounsel"  method="post" style="width: 100%">
						<div class="jtbl_frm01 tbl_wrap">
							<table>
								<tbody>
									<tr>
										<th scope="row" style="width:25%"><label for="userName" class="input_title" >이름</label></th>
										<td style="width:25%"><span class="txt_input">${userVO.userName}</span>
										<input type="hidden" name="userId" value="${userVO.userId}" >
										</td>
										<th scope="row" style="width:20%"><label for="empName" class="input_title">전담 PB</label></th>
										<td style="width:30%"><span class="txt_input" style="width:25%">${myPB.empName} PB</span>
										<input type="hidden" name="empNo" value="${myPB.empNo}"></td>
									</tr>
									<tr>
										<th scope="row"><label for="userTel" class="input_title" style="width:25%">휴대전화</label></th>
										<td style="width:25%"><span class="txt_input" >${userVO.userTel}</span>
										
										</td>
										<th scope="row"><label for="userEmail" class="input_title" style="width:25%">E-mail</label></th>
										<td style="width:25%"><span class="txt_input">${userVO.userEmail }</span>
										</td>
									</tr>
									<tr>
										<th scope="row" style="width:25%"><label for="userTel" class="input_title">상담구분</label></th>
										<td style="width:25%">
										<select	name="counselCate" id="slct_cate" class="frm_input_content" onchange="Change()">
											<option value="portfolio" selected="selected">내 포트폴리오 상담</option>
											<option value="invest">투자 상담</option>
											<option value="userOneClub">OneClub 이용상담</option>
										</select>
										</td>
										<th scope="row" class="slct_port" style="width:25%"><label for="consultport" class="input_title">내 포트폴리오 불러오기</label></th>
										<td class="slct_port" style="width:25%">
										<select name="counselPort" class="frm_input_content">
											<c:choose>
												<c:when test="${not empty backTestList}">
													<c:forEach items="${backTestList}" var="portList"
														varStatus="loop">
														<option value="${portList.portNum}">(${loop.count})
															${portList.backTitle}(수익률
															<c:choose>
																<c:when test="${portList.earningRate lt 0}">
																	<span class="txt_minus">${portList.earningRate}</span>)
																</c:when>
																<c:otherwise>
																	<span class="txt_plus">+${portList.earningRate}</span>%)
																</c:otherwise>
															</c:choose>
														</option>
													</c:forEach>
												</c:when>
												<c:otherwise>
													<option value="${backTest.portNum}">${backTest.backTitle}(수익률
														<c:choose>
															<c:when test="${backTest.earningRate lt 0}">
																<span class="txt_minus">${backTest.earningRate}</span>)
															</c:when>
															<c:otherwise>
																<span class="txt_plus">+${backTest.earningRate}</span>%)
															</c:otherwise>
														</c:choose>
												</c:otherwise>
											</c:choose>

									</select>

									</td>
									</tr>
									<tr>
										<th scope="row"><label for="counselTitle" class="input_title">제목</label></th>
										<td colspan="3">
										<input type="text" name="counselTitle" class="frm_input_content frm_input_title" >
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="wr_content" class="input_title">내용</label></th>
										<td class="wr_content" colspan="3"><textarea id="wr_content" name="counselContent" class="frm_input_content " maxlength="65536" style="width: 100%; height: 300px"></textarea>
									</tr>
								</tbody>
							</table>
						</div>

				<div class="btn-div">
							<input type="submit" class="btn btn_hana" value="내용 등록">
						</div>
					</form>
			</div>
			<div id="PortResultSection1" class="result_section" style="height: 1000px; border: 0px; display: none;">
				<div class="jtbl_head01 jtbl_wrap">
						<table>
							<thead>
								<tr>
									<th scope="col" class="th_bg01"style="width: 10%">NO</th>
									<th scope="col" class="th_bg01" style="width: 50%">제목</th>
									<th scope="col" class="th_bg01" style="width: 20%">작성일</th>
									<th scope="col" style="width: 20%">처리상태</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${counselList}" var="counsel" varStatus="loop">
									<tr>
										<td class="td_num">${loop.count}</td>
										<td class="td_subject" style="text-align: left;">
												<c:if test="${counsel.answerNo != 0}">
												<img src="${pageContext.request.contextPath}/resources/img/icon_reply.gif"
													class="icon_reply" alt="답변글">
												</c:if>
											<a href="${pageContext.request.contextPath}/">
											${counsel.counselTitle}</a></td>
										<td class="td_date">${counsel.counselRegDate}</td>
										<td class="td_hit">답변완료</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				<!-- 페이지 -->
				<ul class='pagenation'>
				<c:forEach begin="${page.beginPage}" var="i" end="${page.endPage}"  >
					<c:choose>
						<c:when test="${page.currentPage eq i}">
							<li class='on'><a href="#"><b></b></a></li>
						</c:when>
						<c:otherwise>
							<li><a href="#"><b></b></a></li>
						</c:otherwise>
					</c:choose>
					</c:forEach>
					<li><a href='#' class='btn2'><img
							src='${pageContext.request.contextPath}/resources/img/btn_lastly.gif'
							alt='마지막으로' /></a></li>
				</ul>
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	</footer>

</body>
</html>