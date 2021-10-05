<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- Head 구성  -->

    <!-- Bootstrap -->
    <script src="${ pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    <!-- Isotope -->
    <script src="${ pageContext.request.contextPath}/resources/js/isotope.pkgd.js"></script>
    <!-- Page Script -->
 
    <link href="${pageContext.request.contextPath}/resources/css/modals.css" rel="stylesheet">
<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>
<!-- Head 구성 끝 -->
</head>
<body>
<!-- header  -->
<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
<!-- header 끝 -->
<!-- section 시작 -->
<section>
 <div class="modal modal-signin position-static d-block bg-forth py-5"
		tabindex="-1" role="dialog" id="modalSignin">
		<div class="modal-dialog" role="document">
			<div class="modal-content rounded-5 shadow">
				<div class="modal-header p-5 pb-4 border-bottom-0">
					<!-- <h5 class="modal-title">Modal title</h5> -->
					<h2 class="fw-bold mb-0">로그인</h2>
					<button type="button" class="btn-close" aria-label="Close"></button>
				</div>

				<div class="modal-body p-5 pt-0">
					<form action="${pageContext.request.contextPath }/member/login" method="post">
						<div class="form-floating mb-3">
							<input type="text" class="form-control rounded-4" name="userId"
								id="floatingInput" placeholder="아이디"> <label
								for="floatingInput">아이디</label>
						</div>
						<div class="form-floating mb-3">
							<input type="password" class="form-control rounded-4" name="userPwd"
								id="floatingPassword" placeholder="비밀번호"> <label
								for="floatingPassword" >비밀번호</label>
						</div>
						<input class="w-100 mb-2 btn btn-lg rounded-4 btn-primary"
							type="submit" value="로그인 하기">
						<a href="#"><small class="text-muted">비밀번호를 잊으셨나요?</small></a>
						<a href="#"><small class="text-muted">회원가입 하러가기</small></a>
						<hr class="my-4">
						<h2 class="fs-5 fw-bold mb-3">SNS 로그인 하러가기</h2>
						<button class="w-100 py-2 mb-2 btn btn-outline-dark rounded-4" style="margin-bottom:20px"
							type="submit">
							네이버로 로그인
						</button>
						<button class="w-100 py-2 mb-2 btn btn-outline-primary rounded-4"
							type="submit">
							카카오톡으로 로그인
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
 </section>
 <!-- section 끝 -->
<!-- Start Footer -->
<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
<!-- End Footer -->


</body>
</html>