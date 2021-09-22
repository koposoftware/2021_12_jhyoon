<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하나 OneClub > OneClub 구독하기</title>
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
	font-size: 20px;
}

.councel_img {
	width: 360px;
	margin-top: 20px;
}

.subtitle_40px {
	margin-top: 30px;
	font-size: 30px;
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
					<li class="subtitle_50px bold">OneClub 서비스 가입</li>
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
					<li class="subtitle_40px">구독 서비스</li>
				</ul>
			</div>
			 <div class="container py-5">


            <!-- Start Pricing Horizontal -->
            <div class="pricing-horizontal row col-10 m-auto d-flex shadow-sm rounded overflow-hidden bg-white">
                <div class="pricing-horizontal-icon col-md-3 text-center bg-secondary text-light py-4">
                    <i class="display-1 bx bx-package pt-4"></i>
                    <h5 class="h5 semi-bold-600 pb-4 light-300">family</h5>
                </div>
                <div class="pricing-horizontal-body offset-lg-1 col-md-5 col-lg-4 d-flex align-items-center pl-5 pt-lg-0 pt-4">
                    <ul class="text-left px-4 list-unstyled mb-0 light-300">
                        <li><i class="bx bxs-circle me-2"></i>5 Users</li>
                        <li><i class="bx bxs-circle me-2"></i>2 TB space</li>
                        <li><i class="bx bxs-circle me-2"></i>Community Forums</li>
                    </ul>
                </div>
                <div class="pricing-horizontal-tag col-md-4 text-center pt-3 d-flex align-items-center">
                    <div class="w-100 light-300">
                        <p>$0</p>
                        <a href="#" class="btn rounded-pill px-4 btn-outline-primary mb-3">Get Now</a>
                    </div>
                </div>
            </div>
            <!-- End Pricing Horizontal -->

            <!-- Start Pricing Horizontal -->
            <div class="pricing-horizontal row col-10 m-auto d-flex shadow-sm rounded overflow-hidden my-5 bg-white">
                <div class="pricing-horizontal-icon col-md-3 text-center bg-secondary text-light py-4">
                    <i class="display-1 bx bx-package pt-4"></i>
                    <h5 class="h5 semi-bold-600 pb-4 light-300">Standard</h5>
                </div>
                <div class="pricing-horizontal-body offset-lg-1 col-md-5 col-lg-4 d-flex align-items-center pl-5 pt-lg-0 pt-4">
                    <ul class="text-left px-4 list-unstyled mb-0 light-300">
                        <li><i class="bx bxs-circle me-2"></i>25 to 99 Users</li>
                        <li><i class="bx bxs-circle me-2"></i>10 TB space</li>
                        <li><i class="bx bxs-circle me-2"></i>Live Chat</li>
                    </ul>
                </div>
                <div class="pricing-horizontal-tag col-md-4 text-center pt-3 d-flex align-items-center">
                    <div class="w-100 light-300">
                        <p>$120/Year</p>
                        <a href="#" class="btn rounded-pill px-4 btn-outline-primary mb-3">Get Now</a>
                    </div>
                </div>
            </div>
            <!-- End Pricing Horizontal -->

            <!-- Start Pricing Horizontal -->
            <div class="pricing-horizontal row col-10 m-auto d-flex shadow-sm rounded overflow-hidden bg-white">
                <div class="pricing-horizontal-icon col-md-3 text-center bg-secondary text-light py-4">
                    <i class="display-1 bx bx-package pt-4"></i>
                    <h5 class="h5 semi-bold-600 pb-4 light-300">Enterprise</h5>
                </div>
                <div class="pricing-horizontal-body offset-lg-1 col-md-5 col-lg-4 d-flex align-items-center pl-5 pt-lg-0 pt-4">
                    <ul class="text-left px-4 list-unstyled mb-0 light-300">
                        <li><i class="bx bxs-circle me-2"></i>100 users or more</li>
                        <li><i class="bx bxs-circle me-2"></i>80 TB space</li>
                        <li><i class="bx bxs-circle me-2"></i>Full Access</li>
                        <li><i class="bx bxs-circle me-2"></i>Customizations</li>
                    </ul>
                </div>
                <div class="pricing-horizontal-tag col-md-4 text-center pt-3 d-flex align-items-center">
                    <div class="w-100 light-300">
                        <p>$840/Year</p>
                        <a href="#" class="btn rounded-pill px-4 btn-outline-primary mb-3">Get Now</a>
                    </div>
                </div>
            </div>
            <!-- End Pricing Horizontal -->

        </div>
			
		</div>
	</section>


</body>
</html>