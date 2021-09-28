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
.btn_hana{
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
.btn_modal {
    outline: 0;
    outline-style: none;
    font-size: 15px;
    width: 100px;
    transition: 0.1s;
    text-align: center;
    height: 36px;
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
						href="${ pageContext.request.contextPath}/subscribe">서비스 소개</a></li>
					<li class="nav-item dropdown">
					<a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">OneClub</a>
						 <ul class="dropdown-menu dropdown-menu-dark drop_txt" aria-labelledby="navbarDarkDropdownMenuLink">
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item" href="#">일일 투자정보</a></li>
            				<c:choose>
            				<c:when test="${empty userVO}">
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item" href="${ pageContext.request.contextPath}/backtest/compo" >나만의 투자조건 설정하기</a></li>
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item" href="${ pageContext.request.contextPath}/counsel/viewPB">전문가 상담</a></li>
            				</c:when>
            				<c:when test="${userVO.subscribeGrade eq 'FAMILY' }">
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item"  data-bs-toggle="modal" data-bs-target="#OneClubModal">나만의 투자조건 설정하기</a></li>
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item"  data-bs-toggle="modal" data-bs-target="#VIPModal">전문가 상담</a></li>
            				</c:when>
            				<c:when test="${userVO.subscribeGrade eq 'HANA FAMILY' }">
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item" href="${ pageContext.request.contextPath}/backtest/compo" >나만의 투자조건 설정하기</a></li>
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item" data-bs-toggle="modal" data-bs-target="#VIPModal">전문가 상담</a></li>
            				</c:when>
            				<c:otherwise>
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item" href="${ pageContext.request.contextPath}/backtest/compo" >나만의 투자조건 설정하기</a></li>
            				<li><a class="nav-link btn-outline-primary rounded-pill px-3 dropdown-item" href="${ pageContext.request.contextPath}/counsel/viewPB" >전문가 상담</a></li>
            				</c:otherwise>
            				</c:choose>
            				
            				
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
					<c:when test="${not empty userVO }">
						<a class="nav-link" href="${ pageContext.request.contextPath}/" title="내 정보"><i class='bx bx-user-circle bx-sm bx-tada-hover text-primary'><span style="font-size:15px; color:#000; font-family:'HanaL'"></span></i></a>
						<a class="nav-link" href="${ pageContext.request.contextPath}/member/logout" title="로그아웃" data-bs-toggle="modal" data-bs-target="#logOut"><i class='bx bx-log-out bx-sm bx-tada-hover text-primary' ></i></a>
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








				<div class="modal fade" id="OneClubModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">OneClub 회원 이용 안내</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">OneClub 회원만 이용가능한 서비스입니다. 
														서비스 가입하러 가시겠습니까?</div>
								<div class="modal-footer">
									<button type="button" class="btn_white btn_modal" 
										data-bs-dismiss="modal">닫기</button>
									<button type="button" class="btn_hana btn_modal" 
									onclick="location.href='${pageContext.request.contextPath}/subscribe'">서비스 가입</button>
								</div>
							</div>
						</div>
					</div>
				<div class="modal fade" id="VIPModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">OneClub VIP 회원 이용 안내</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">OneClub VIP 회원만 이용가능한 서비스입니다. 
														서비스 가입 하러 가시겠습니까?</div>
								<div class="modal-footer">
									<button type="button" class="btn_white btn_modal" 
										data-bs-dismiss="modal">닫기</button>
									<button type="button" class="btn_hana btn_modal" 
									onclick="location.href='${pageContext.request.contextPath}/subscribe'">서비스 가입</button>
								</div>
							</div>
						</div>
					</div>
				<div class="modal fade" id="logOut" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">로그 아웃 확인</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">로그아웃 하시겠습니까?</div>
								<div class="modal-footer">
									<button type="button" class="btn_white btn_modal" 
										data-bs-dismiss="modal">닫기</button>
									<button type="button" class="btn_hana btn_modal" 
									onclick="location.href='${pageContext.request.contextPath}/member/logout'">로그아웃</button>
								</div>
							</div>
						</div>
					</div>
<!-- Close Header -->