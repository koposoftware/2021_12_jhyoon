<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하나 OneClub > OneClub PB 소개</title>
<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>
<style type="text/css">


</style>
 <script
	src="${ pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
	
	
<style type="text/css">
.subtitle_50px {
 	font-size: 35px;
    font-weight: 700;
    margin-top: 20px;
}
.vertical-tab{
	width: 1600px;
	margin: auto;
}
.inner-tab{
	height: 400px;
	width: 1600px;
	margin: auto;
}
.subtitle_30px{
	margin-top :30px;
	font-size: 40px;
    font-weight: 700;
}
.pb_tab{
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

.pb_img{
	margin-top : 30px;
	margin-left: 10px;
}
.pb_name{
    font-weight: 600;
    font-size: 20px;
}

.pb_explain{
    margin-top: 35px;
    width: 180px;
    height:200px;
    text-align: left;
    margin-left: 55px;
}
ul{
padding-left: 0;
}
.pb_area{
	color:#008485;
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
	background:#008485;
}

.pb_tab2{
    height: 350px;
    float: left;
    text-align: center;
          display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
}
.pb_tab3{
	float:left;
	height:400px;

}
.second_dec{
    margin-top: 70px;
    margin-left: 80px;

}
.pb_title{
	font-size: 33px;
    font-weight: 600;
}
.pb_desCribe{
	color:#777;
	font-size: 20px
}
</style>
<script type="text/javascript">
		function writeConsult(){
			location.href = "${pageContext.request.contextPath}/counsel/writeCounsel"		
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
				<p class="fl title">One Club 전문 PB 소개</p>
				<p class="fl info">One Club 회원님들을 도와드릴 전문 PB를 소개합니다.</p>
			</li>
			<li class="fr">
				<p class="crumbs">
					One클럽<span>></span>전문가 소개
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
						<li class="subtitle_50px bold">OneClub 내 전담 PB </li>
					</ul>
			</div>
			<div class="row vertical-tab">
				<div class="inner-tab bg-light">
					<div class="col-md-4 pb_tab2">
						<img class="team-member-img img-fluid rounded-circle"
						
						
								src="${pageContext.request.contextPath}/resources/img/pbtable/${mypb.empImg}.jpg" style="border: 3px solid #fff;"
								alt="Card image">
					</div>
					<div class="col-md-8 pb_tab3">
						<div class="second_dec">
						<ul>
								<li><span class="subtitle_30px">내 전담 전문가</span></li>
								<li ><span class="pb_title pb_area">OneClub PB </span><span  class="pb_title">${mypb.empName}</span></li>
							</ul>
						<ul>
							<li><span class="pb_desCribe">${mypb.empDescri}</span></li>
						</ul>
						<ul>
							<li class="btn_popSide sidebg_new" style="margin-left:0px; cursor: pointer;" onclick="writeConsult()">
							<span>내 포트폴리오 상담하러가기</span></li>
						</ul>
						</div>
					</div>
				
				</div>
			</div>
			<div class="row vertical-tab">
					<ul style="padding-left: 0;">
						<li class="subtitle_30px bold">OneClub PB 소개</li>
					</ul>
				<div class="col-md-6" style="width: 50%"></div>
			</div>
			<div class="row vertical-tab">
				<c:forEach items="${pbList}" var = "pb" varStatus="loop">
				<c:if test="${loop.count%3 eq 1}"><div class="inner-tab"></c:if>
					<div class="team-member col-md-4 pb_tab">
						<div class="fl col-md-4 pb_img">
							<img class="team-member-img img-fluid rounded-circle"
								src="${pageContext.request.contextPath}/resources/img/pbtable/${pb.empImg}.jpg"
								alt="Card image">
							<ul
								class="team-member-caption list-unstyled text-center pt-4 text-muted light-300">
								<li><span class="pb_name">${pb.empName} PB</span></li>
							</ul>
						</div>
						<div class="fl col-md-4 pb_explain">
						<ul>
								<li><span class="pb_name pb_area">상담 분야</span></li>
								<li>${pb.empField}</li>
							</ul>
						<ul>
							<li><span class="pb_name pb_area">업종</span></li>
							<li>${pb.empSectors}</li>
						</ul>

						</div>
						<ul>
							<li class="btn_popSide sidebg_new"  onclick="">
							<span>전문가로 지정</span></li>
						</ul>
				  </div>
				<c:if test="${loop.count%3 eq 0 }"></div></c:if>
			</c:forEach>
		</div>
	</section>

    <!-- End Banner Hero -->


    <!-- Bootstrap -->


</body>
</html>