<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Head 구성  -->
<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>
	<!-- Load jQuery require for isotope -->
	<!-- Page Script -->
	<script>
		$(window).load(function() {
			// init Isotope
			var $projects = $('.projects').isotope({
				itemSelector : '.project',
				layoutMode : 'fitRows'
			});
			$(".filter-btn").click(function() {
				var data_filter = $(this).attr("data-filter");
				$projects.isotope({
					filter : data_filter
				});
				$(".filter-btn").removeClass("active");
				$(".filter-btn").removeClass("shadow");
				$(this).addClass("active");
				$(this).addClass("shadow");
				return false;
			});
		});
	</script>
	<!-- Templatemo -->
<!-- Head 구성 끝 -->
<style type="text/css">
.img_div{
text-align:center;

}
.img_div img{
	width:574px;
}
.text-start2{
text-align: left;
padding-left:120px;
}
.main-txt{
font-size: 53px;
font-family: 'HanaB';
}
.main-explain-txt{
    font-size: 23px;
    font-family: 'HanaUL';
}
.main-back{
width: 96%;
background-color:#C6DEE2; 
 margin: auto; 
 height: 500px;
}
.contain{
 height: 1000px;
}
.second-tab{
	width:85%;
	height:150px;
	border:1px solid #ddd;
	background-color: #666;
	margin : -40px auto;
	text-align: center;
	padding : 0 250px;
}
.second-tab ul li{
	display: list-item;
	position: relative;
    float: left;
    width: 20%;
    height:140px;
    color: #fff;
    background: #666;
    cursor: pointer;
    padding: 20px;
  	overflow:hidden;
	font-size: 18px;
    font-family: 'HanaL'
	
}
.second-tab ul li img{
	width: 70px;
	height: 70px;
	margin-bottom: 15px;
	  	overflow:hidden;
	
}
.second-tab ul{
	width:100%;
}
.second-tab ul li:hover{
 transform: scale(1.2);
  -webkit-transform: scale(1.2);
  -moz-transform: scale(1.2);
  -ms-transform: scale(1.2);
  -o-transform: scale(1.2);
}

</style>
</head>
<body>
 
	<!-- header  -->
	<header>
	<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>
	<!-- header 끝 -->
	<!-- Start Banner Hero -->
	<section class="w-100" >
        <div class="container contain"  >
            <div class="row d-flex align-items-center main-back" >
                <div class="col-lg-6 text-start2">
                    <h1 class="text-primary main-txt">나만의 로보어드바이저 OneClub</h1>
					<p class="main-explain-txt">
                       주린이도 쉽게 할 수 있는 가치투자, 나만의 투자전략을 만들어보세요 <br>
                       하나 OneClub에서 당신 투자를 도와드립니다.                      
                       
                                           </p>
                </div>
                <div class="col-lg-6 img_div">
                    <img src="${pageContext.request.contextPath }/resources/img/banner_bg.jpg">
                </div>
            </div>
            <div class="second-tab">
            	<ul>
					<li id="intruduce"><img src="${pageContext.request.contextPath}/resources/img/svg/hanabual.png" style="width: 80px;"><br>처음 오셨나요?</li>            	
					<li id="subscribe"><img src="${pageContext.request.contextPath}/resources/img/svg/subscribe.png" ><br>OneClub 구독</li>            	
					<li id="backtest"><img src="${pageContext.request.contextPath}/resources/img/svg/trading.png" ><br>투자전략 검증</li>            	
					<li id="consulting"><img src="${pageContext.request.contextPath}/resources/img/svg/consult.png" ><br>투자 상담</li>            	
					<li id="myport"><img src="${pageContext.request.contextPath}/resources/img/svg/report.png" ><br>내 포트폴리오</li>            	
            	</ul>
            </div>
            
        </div>
    </section>
<script type="text/javascript">
$(document).ready(function() {
	$('#intruduce').click(function(){
		location.href="#"
	})
	$('#subscribe').click(function(){
		location.href="#"
	})
	$('#backtest').click(function(){
		location.href="${pageContext.request.contextPath}/backtest/compo"
	})
	$('#consulting').click(function(){
		location.href="${pageContext.request.contextPath}/counsel/viewPB"
	})
	$('#myport').click(function(){
		location.href="#"
	})
})

</script>

	
	

	<!-- Start Footer -->
	<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	<!-- End Footer -->

	<!-- Bootstrap -->


</body>
</html>