<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Header -->
<style>
.mx-xl-5 {
	margin: auto 30px;
}
nav{
font-family: 'Hana', sans-serif;
}
.drop_txt li a{
	font-size:20px;
	font-weight: 700
}

</style>

<nav id="main_nav"
	class="navbar navbar-expand-lg navbar-light bg-white shadow">
	<div
		class="container d-flex justify-content-between align-items-center">
		<a href="${ pageContext.request.contextPath}/"><img
			src="${ pageContext.request.contextPath}/resources/img/logo_01.png"></a>
		<button class="navbar-toggler border-0" type="button"
			data-bs-toggle="collapse" data-bs-target="#navbar-toggler-success"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div
			class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
			id="navbar-toggler-success">
			<div class="flex-fill mx-xl-5 mb-2" >
				<ul
					class="nav navbar-nav d-flex justify-content-between mx-xl-5 text-center text-dark">
					<li class="nav-item"><a
						class="nav-link btn-outline-primary rounded-pill px-3"
						href="${ pageContext.request.contextPath}/">Home</a></li>
					<li class="nav-item"><a
						class="nav-link btn-outline-primary rounded-pill px-3"
						href="${ pageContext.request.contextPath}/">서비스 소개</a></li>
					<li class="nav-item dropdown">
					<a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">OneClub</a>
						 <ul class="dropdown-menu dropdown-menu-dark drop_txt" aria-labelledby="navbarDarkDropdownMenuLink">
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item" href="#">일일 투자정보</a></li>
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item" href="${ pageContext.request.contextPath}/backtest/compo">나만의 투자조건 설정하기</a></li>
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item" href="${ pageContext.request.contextPath}/counsel/viewPB">전문가 상담</a></li>
            				
          				</ul>
					</li>
					<li class="nav-item dropdown"><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-toggle"
						href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">내 OneClub 관리</a>
					 <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item" href="${ pageContext.request.contextPath}/subscribe">내 OneClub관리</a></li>
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item" href="${ pageContext.request.contextPath}/backtest/myportfolioList">내 포트폴리오 관리</a></li>
          				</ul>						
						</li>
					<li class="nav-item"><a
						class="nav-link btn-outline-primary rounded-pill px-3"
						href="${ pageContext.request.contextPath}/">고객센터</a></li>
				</ul>
			</div>
			<div class="navbar align-self-center d-flex">
				<c:choose>
					<c:when test="${not empty uesrVO }">
						<a class="nav-link" href="${ pageContext.request.contextPath}/" title="내 정보"><i class='bx bx-user-circle bx-sm bx-tada-hover text-primary'>${userVO.userName} 님 환영합니다.</i></a>
					</c:when>
					<c:otherwise>
					<a class="nav-link" href="${ pageContext.request.contextPath}/member/registagree" title='회원가입 하러가기'><i class='bx bx-user-plus bx-sm bx-tada-hover text-primary'></i></a> <a
					class="nav-link" href="${ pageContext.request.contextPath}/member/login" title="로그인"><i class='bx bx-user-circle bx-sm bx-tada-hover text-primary'></i></a>
					
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</nav>
<!-- Close Header -->