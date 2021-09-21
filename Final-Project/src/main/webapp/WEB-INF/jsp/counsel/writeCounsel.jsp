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
<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>
<style type="text/css">
</style>
<script
	src="${ pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>


<style type="text/css">
.subtitle_50px {
	font-size: 45px;
	font-weight: 700;
	margin-top: 20px;
}

.vertical-tab {
	width: 90%;
	margin: auto;
}

.inner-tab {
	height: 400px;
	width: 2000px;
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
	font-size: 20px;
}

.councel_img {
	width: 360px;
	margin-top: 20px;
}

.subtitle_40px {
	margin-top: 30px;
	font-size: 38px;
	font-weight: 700;
}
.result_section {
    display: block;
    border: 1px solid #bbb;
    height: auto;
    width: 2000px;
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
    font-size: 25px;
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
	width: 2000px;
    margin: auto;
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
					<li class="subtitle_30px bold">OneClub PB 소개</li>
				</ul>
			</div>
			<div class="fullDetail_tabBox">
				<ul style="padding-left: 0px; margin-bottom: 0px;">
					<li id="resultTabMenu0" class="on">상담 신청</li>
					<li id="resultTabMenu1" class="">상담 내역</li>
				</ul>
			</div>
			<div id="PortResultSection0" class="result_section" style="height: 1000px; border: 0px">
			<section id="bo_w">
<style>
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
    width: 110px;
    padding: 7px 5px 7px 15px;
    border: 1px solid #e9e9e9;
    border-left: 0;
    text-align: left;
    font-size: 14px;
    color: #333;
    font-weight: 500;
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
</style>


					<!-- 게시물 작성/수정 시작 { -->
					<form name="fwrite" id="fwrite" action="#" onsubmit="return fwrite_submit(this);" method="post" style="width: 100%">
						<div class="jtbl_frm01 tbl_wrap">
							<table>
								<tbody>
									<tr>
										<th scope="row"><label for="wr_name">이름<strong class="sound_only">필수</strong></label></th>
										<td><input type="text" name="wr_name" value="윤정환" id="wr_name" required="" class="frm_input" size="10" maxlength="20" readonley=""></td>
										<th scope="row"><label for="wr_name">이름<strong class="sound_only">필수</strong></label></th>
										<td><input type="text" name="wr_name" value="윤정환" id="wr_name" required="" class="frm_input" size="10" maxlength="20" readonley=""></td>
									</tr>

									<tr>
										<th scope="row"><label for="wr_name">이름<strong class="sound_only">필수</strong></label></th>
										<td><input type="text" name="wr_name" value="윤정환" id="wr_name" required="" class="frm_input" size="10" maxlength="20" readonley=""></td>
										<th scope="row"><label for="wr_name">이름<strong class="sound_only">필수</strong></label></th>
										<td><input type="text" name="wr_name" value="윤정환" id="wr_name" required="" class="frm_input" size="10" maxlength="20" readonley=""></td>
									</tr>
									<tr>
										<th scope="row"><label for="wr_name">이름<strong class="sound_only">필수</strong></label></th>
										<td><input type="text" name="wr_name" value="윤정환" id="wr_name" required="" class="frm_input" size="10" maxlength="20" readonley=""></td>
									</tr>
									<tr>
										<th scope="row"><label for="wr_subject">제목<strong class="sound_only">필수</strong></label></th>
										<td>
											<div id="autosave_wrapper">
												<input type="text" name="wr_subject" value="" id="wr_subject" required="" class="frm_input" size="50" maxlength="255">
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="wr_content">내용<strong class="sound_only">필수</strong></label></th>
										<td class="wr_content"><span class="sound_only">웹에디터
												시작</span> <textarea id="wr_content" name="wr_content" class="" maxlength="65536" style="width: 100%; height: 300px"></textarea>
											<span class="sound_only">웹 에디터 끝</span></td>
									</tr>


								</tbody>
							</table>
						</div>

						<div class="btn_confirm">
							<span class="jbutton large black"><input type="submit" value="작성완료" id="btn_submit"></span> <span class="jbutton large black"><a href="/Web-YB-Bank/boardlist.do">취소</a></span>
						</div>
					</form>
					
				</section>
			</div>
			<div id="PortResultSection1" class="result_section" style="height: 1000px; border: 0px">
			
			</div>
		</div>
	</section>

	<!-- End Banner Hero -->


	<!-- Bootstrap -->


</body>
</html>