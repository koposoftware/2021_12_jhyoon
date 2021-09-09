<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Head 구성  -->
<jsp:include page="/WEB-INF/jsp/include/head.jsp"></jsp:include>
<link href="${pageContext.request.contextPath}/resources/css/default.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/style2.css" rel="stylesheet">

<!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>회원가입</title>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	function openSearch() {
		new daum.Postcode({
			oncomplete : function(data) {
				$('[name=mb_zip]').val(data.zonecode); // 우편번호 (5자리)
				$('[name=mb_addr1]').val(data.address);
				$('[name=mb_addr2]').val(data.buildingName);
			}
		}).open();
	}
</script>
<script>
	$(document).ready(function() {
		let rootUrl = '/Web-YB-Bank'
		let result = '';
		$('#id_check').click(function() {
			$.ajax({
				'type' : 'POST',
				'url' : rootUrl + '/idcheck.do',
				'data' : {
					"reg_mb_id" : encodeURIComponent($('#reg_mb_id').val())
				},
				'success' : function(msg) {
					result = msg.trim()
				}
			})
			$('#msg_mb_id').text(result)
		})
	})

	// submit 최종 폼체크
	function fregisterform_submit(f) {
		if (f.w.value == "") {
			if (f.mb_password.value.length < 3) {
				alert("비밀번호를 3글자 이상 입력하십시오.");
				f.mb_password.focus();
				return false;
			}
		}

		if (f.mb_password.value != f.mb_password_re.value) {
			alert("비밀번호가 같지 않습니다.");
			f.mb_password_re.focus();
			return false;
		}

		if (f.mb_password.value.length > 0) {
			if (f.mb_password_re.value.length < 3) {
				alert("비밀번호를 3글자 이상 입력하십시오.");
				f.mb_password_re.focus();
				return false;
			}
		}

		// 이름 검사
		if (f.w.value == "") {
			if (f.mb_name.value.length < 1) {
				alert("이름을 입력하십시오.");
				f.mb_name.focus();
				return false;
			}

			var pattern = /([^가-힣\x20])/i;
			if (pattern.test(f.mb_name.value)) {
				alert("이름은 한글로 입력하십시오.");
				f.mb_name.select();
				return false;
			}
		}
		return true;
	}
</script>
<!-- Head 구성 끝 -->
</head>
<body>
	<!-- header  -->
	<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	<!-- header 끝 -->
	<!-- section 시작 -->
	<div class="container">
			<h2 class="regi_tt">Join Us</h2>

			<!-- 회원정보 입력/수정 시작 { -->
			<form id="fregisterform" name="fregisterform"
				action="<%=request.getContextPath()%>/signupprocess.do"
				onsubmit="return fregisterform_submit(this);" method="post">
				
				<div id="register_form" class="form_01">
					<h3>
						기본정보 <span class="req">필수입력사항</span>
					</h3>
					<div class="regi_table">
						<table>
							<caption>사이트 이용정보 입력</caption>
							<colgroup>
								<col width="130">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="reg_mb_id" class="req">아이디</label></th>
									<td><input type="text" name="mb_id" value=""
										id="reg_mb_id" class="reg_input" minlength="4" maxlength="20"
										placeholder="영문소문자/숫자, 3~20자." style="width: 180px">
										<button type="button" class="btn_frmline" id="id_check">중복체크</button>
										<br> <span id="msg_mb_id" class="reg_msg"></span></td>
								</tr>
								<tr>
									<th scope="row"><label for="reg_mb_password" class="req">비밀번호</label></th>
									<td><input type="password" name="mb_password"
										id="reg_mb_password" class="reg_input" minlength="3"
										maxlength="20"></td>
								</tr>
								<tr>
									<th scope="row"><label for="reg_mb_password_re"
										class="req">비밀번호 확인</label></th>
									<td><input type="password" name="mb_password_re"
										id="reg_mb_password_re" class="reg_input" minlength="3"
										maxlength="20"> <span id="msg_mb_pw" class="reg_msg"></span></td>
								</tr>
								<tr>
									<th scope="row"><label for="reg_mb_name" class="req">이름</label></th>
									<td><input type="text" id="reg_mb_name" name="mb_name"
										value="" class="reg_input"></td>
								</tr>
								<tr>
									<th scope="row"><label for="reg_mb_resist" class="req">주민등록번호</label></th>
									<td><input type="text" id="reg_mb_resist1"
										name="mb_resist1" value="" class="reg_input" maxlength="6">
										<b>-</b> <input type="text" id="reg_mb_resist2"
										name="mb_resist2" value="" class="reg_input" maxlength="7"></td>
								</tr>
								<tr>
									<th scope="row"><label for="reg_mb_zip" class="req">주소</label></th>
									<td><input type="text" name="mb_zip" value=""
										id="reg_mb_zip" class="reg_input" maxlength="6"
										placeholder="우편번호">
										<button type="button" class="btn_frmline"
											onclick="openSearch();">주소검색</button> <br> <input
										type="text" name="mb_addr1" value="" id="reg_mb_addr1"
										class="reg_input" placeholder="기본주소"><br> <input
										type="text" name="mb_addr2" value="" id="reg_mb_addr2"
										class="reg_input" placeholder="상세주소"><br>
								</tr>
								<tr>
									<th scope="row"><label for="reg_mb_hp" class="req">휴대전화</label></th>
									<td>
										<div class="telselect_wrap">
											<select name="hp1" id="hp1" class="reg_input">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select> <b>-</b> <input type="text" name="hp2" value="" id="hp2"
												class="reg_input" maxlength="4"> <b>-</b> <input
												type="text" name="hp3" value="" id="hp3" class="reg_input"
												maxlength="4">
										</div> <input type="hidden" name="mb_hp" value="" id="reg_mb_hp">

										<input type="hidden" name="old_mb_hp" value="">
									</td>

								</tr>

								<tr>
									<th scope="row"><label for="reg_mb_email" class="req">이메일</label></th>
									<td><input type="hidden" name="old_email" value="">

										<div class="emailselect_wrap">
											<input type="text" name="email1" value="" id="email1"
												class="reg_input" maxlength="20"> <b>@</b> <input
												type="text" name="email2" value="" id="email2"
												class="reg_input" maxlength="20" readonly> <select
												name='email3' id='email3' class="reg_input">
												<option value="직">직접입력</option>
												<option value="naver.com">naver.com</option>
												<option value="daum.net">daum.net</option>
												<option value="nate.com">nate.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="hanmail.com">hanmail.com</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="yahoo.com">yahoo.com</option>
											</select>
										</div> <input type="hidden" name="mb_email" value=""
										id="reg_mb_email"> <span id="msg_mb_email"
										class="reg_msg"></span></td>
								</tr>

								<tr>
									<th scope="row"><label for="">수신여부</label></th>
									<td>
										<ul class="agree_chk">
											<li><span>SMS 수신동의</span>
												<div class="checks">
													<input type="checkbox" name="mb_sms" value="1"
														id="reg_mb_sms" checked> <label for="reg_mb_sms">동의함</label>
												</div></li>
											<li><span>메일 수신동의</span>
												<div class="checks">
													<input type="checkbox" name="mb_mailling" value="1"
														id="reg_mb_mailling" checked> <label
														for="reg_mb_mailling">동의함</label>
												</div></li>
										</ul>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="btn_confirm">
						<input type="reset" class="btn_cancel" value="CANCEL"> <input
							type="submit" value="JOIN" id="btn_submit" class="btn_submit"/>
					</div>
				</div>


			</form>
	
	</div>
	<!-- section 끝 -->
	<!-- Start Footer -->
	<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	<!-- End Footer -->


</body>
</html>