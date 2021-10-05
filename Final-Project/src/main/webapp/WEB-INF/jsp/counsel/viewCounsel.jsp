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
			location.href="${pageContext.request.contextPath}/counsel/writeCounsel"
		})
		$('#resultTabMenu1').click(function() {
			location.href="${pageContext.request.contextPath}/counsel/writeCounsel"
		})
		
	})
	

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
					<li id="resultTabMenu0" >상담 신청</li>
					<li id="resultTabMenu1" class="on">상담 내역</li>
				</ul>
			</div>
			
			<style type="text/css">
.online_view_ct {
	font-size: 15px;
	margin-bottom: 15px;
}
#bo_vc{
    margin: 0 0 20px;
    padding: 20px 20px 10px;
    border: 1px solid #e5e8ec;
    min-height:400px
}
.answer-span{
	font-size: 20px;
	font-weight: 600;
}
#c_3{
    padding: 10px 0 10px;
    border-top: 1px dotted #ccc;
    height: 140px;

}
.answer-date{
display: inline-block;
    margin: 0 15px 0 5px;
 	font-size: 20px;
}
.bo_vc_act {
    float: right;
    margin: 0;
    list-style: none;
    zoom: 1;
}
.bo_vc_act li {
    float: left;
    margin-left: 5px;
}
.btn_answer{
    outline: 0;
    outline-style: none;
    font-size: 20px;
    padding: 5px 15px;
    text-align: center;
    background: #008485;
    font-weight: 600;
    color: #fff;
    box-shadow: inset 0px -2px 1px #008485;
}

.btn_white{
    outline: 0;
    outline-style: none;
    font-size: 20px;
    padding: 5px 15px;
    text-align: center;
    background: #fff;
    font-weight: 600;
    color: #888;
    box-shadow: inset 0px -2px 1px #fff;
}


.jtbl_frm01 table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    border: 0px !important;
}
.jtbl_frm01 th {
    width: 150px;
    padding: 7px 5px 7px 5px;
    border: 1px solid #e9e9e9;
    border-left: 0;
    text-align: left;
    font-size: 20px;
    font-weight: normal;
    padding-left: 10px;
}
.jtbl_frm01 td {
    padding: 7px 10px 7px 10px;
    border-top: 1px solid #e9e9e9;
    border-bottom: 1px solid #e9e9e9;
    background: transparent;
    font-size: 14px;
}
.jtbl_frm01 textarea {
    width: 98%;
    height: 100px;
}
</style>
			
			
			<div id="PortResultSection1" class="result_section" style="height: 1000px; border: 0px;">
				<div class="jtbl_head01 jtbl_wrap">
						<table>
							<thead>
								<tr>
									<th scope="col" class="th_bg01" style="width: 25%">제목</th>
									<td style="width: 25%; border-top:1px solid; ">${counselVO.counselTitle}</td>
									<th scope="col" class="th_bg01" style="width: 20%">작성일</th>
									<td style="width: 25%; border-top:1px solid;">${counselVO.counselRegDate}</td>
								</tr>
								<tr>
									<th scope="col" style="width: 25%">작성자</th>
									<td>${userVO.userName}</td>
									<th scope="col" style="width: 25%">상담 카테고리</th>
									<td>
									<c:choose>
									<c:when test="${counselVO.counselCate eq 'portfolio'}">
										포트폴리오 상담
										<button class="btn btn_hana" style="width: 120px;  height: 60px;" 
										onclick="location.href='${pageContext.request.contextPath}/backtest/result/${counselVO.counselPort}'">
											포트폴리오
										</button>
									</c:when>
									<c:when test="${counselVO.counselCate eq 'invest'}">
										투자 상담
									</c:when>
									<c:when test="${counselVO.counselCate eq 'userOneClub'}">
										OneClub 이용상담
									</c:when>
									</c:choose>
									</td>
								</tr>
							</thead>
							<tbody>
							<tr>
							<td colspan="4" style="text-align:left; ">
							<div style="min-height:200px; height:auto;">
							<p>${counselVO.counselContent}</p>
							</div>
							
					<div id="bo_vc">
    					<span class="answer-span">답변목록</span>
					 <div id="c_3">
       				<div style="z-index:2">
           				 <span class="answer-span">정찬용 PB</span><span class="answer-date">&nbsp;&nbsp;작성일
           				 <time datetime="2021-09-30T15:29:00+09:00">21-09-30 15:29</time></span>
                  	</div>
				        <!-- 답변 출력 -->
       					 <p>   안녕하세요  정찬용 PB 입니다. 
       					 	조이 그린블란트의 마법의 공식을 사용 해주셨는데, 마법의 공식은<br>
       					 	총자산이익률(ROA)이 높고, 주가 수익비율이 낮은 종목을 골라 투자하는 방식입니다. <br>
       						올려주신 포트폴리오 잘봤습니다. 수익률이 낮게 나온 이유는, 국내 시장흐름의 영향도 있는 것으로 보이나,<br>
       						궁극적으로 마법의 공식의 효과를 보실려면, 분산투자를 늘이고 리밸런싱 기간을 1개월로 해보세요.<br>
       						추가로 주당 현금흐름(cfps) 조건도 넣어 기업 이익 창출능력도 넣어보심을 추천드립니다.
       					   </p>
							<span class=""><b>PB 추천 조건 : </b></span>
							<span class="top" ><b>분산종목 20개, 리밸런싱 기간 조정 6개월 → 1개월, CFPS 추가</b></span>
              			  <div>	
            			<ul class="bo_vc_act">
               			 <li><span class="btn_answer" href="" onclick="">답변</span></li>                                           
               			 <li><span class="btn_white" href="" onclick="">삭제</span></li>                                           
               			  </ul>
      					  </div>
         			 </div>
					</div>
						</td>
							</tr>
						</tbody>
						</table>
					</div>
				<!-- 페이지 -->
				<div class="jtbl_frm01 tbl_wrap">
					<form>
				<table>
					<tbody>
						<tr>
							<th scope="row"><label for="wr_name">이름</label></th>
							<td><input type="text" name="wr_name" value="" id="wr_name"
								required="" class="frm_input" size="5" style="width: 122px;"
								maxlength="20"></td>
						</tr>
						<tr>
							<th scope="row">내용</th>
							<td><textarea id="wr_content" name="wr_content"
									maxlength="10000" required="" class="" title="내용"></textarea> <script>
									</script></td>
						</tr>
					</tbody>
				</table>
						<input type="submit" class="btn_answer" style="float:right;margin-top:20px" value="답변등록">   
					</form>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	</footer>

</body>
</html>