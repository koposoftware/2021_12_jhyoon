$(function() {
	var f = document.fregisterform;

	function tel_chk() {
		var tel1 = f.tel1.value;
		var tel2 = f.tel2.value;
		var tel3 = f.tel3.value;
		if(tel1 || tel2 || tel3) {
			$("#reg_mb_tel").val(tel1+"-"+tel2+"-"+tel3);
		}
		if(!tel1 && !tel2 && !tel3) {
			$("#reg_mb_tel").val("");
		}
	}

	function hp_chk() {
		var hp1 = $("#hp1").val();
		var hp2 = $("#hp2").val();
		var hp3 = $("#hp3").val();
		if(hp1 || hp2 || hp3) {
			$("#reg_mb_hp").val(hp1+"-"+hp2+"-"+hp3);
		}
		if(!hp1 && !hp2 && !hp3) {
			$("#reg_mb_hp").val("");
		}
	}

	function email_chk() {
		var email1 = $("#email1").val();
		var email2 = $("#email2").val();
		if(email1 || email2) {
			$("#reg_mb_email").val(email1+"@"+email2);
		}
		if(!email1 && !email2) {
			$("#reg_mb_email").val("");
		}

	}
	function regist_chk() {
		var regist1 = $("#reg_mb_resist1").val();
		var regist2 = $("#reg_mb_resist2").val();
		if(regist1 || regist2) {
			$("#ResistNum").val(regist1+"-"+regist2);
		}
		if(!regist1 && !regist2) {
			$("#ResistNum").val("");
		}
	}
	
	$("#reg_mb_resist1, #reg_mb_resist2").keyup(function(){
		this.value = this.value.replace(/[^0-9]/g,'');
		regist_chk();
	});
	
	
	$("#hp1").change(function(){
		hp_chk()
	});
	$("#hp2, #hp3").keyup(function(){
		this.value = this.value.replace(/[^0-9]/g,'');
		hp_chk();
	});
	$("#email1, #email2").keyup(function(){	email_chk()	});
	$("#email3").change(function(){
		$("#email2").val($(this).val()).prop("readonly", true);
		if($(this).val()=='직접입력'){
			$("#email2").val("").focus().prop("readonly", false);
		}
		email_chk();
	});


	// 비밀번호 확인
	$("#reg_mb_password, #reg_mb_password_re").blur(function(){
		var pw_val = $("#reg_mb_password").val();
		var re_val = $("#reg_mb_password_re").val();

		if(re_val) {
			if (pw_val != re_val) {
				$("#msg_mb_pw").text("비밀번호가 일치 하지 않습니다..").removeClass("ok").addClass("nok");
				return false;
			} else {
				$("#msg_mb_pw").text("").removeClass("nok").addClass("ok");
				return false;
			}
		}
	});
});