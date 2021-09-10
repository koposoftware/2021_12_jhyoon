package kr.ac.kopo.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;
@SessionAttributes("userVO")
@RequestMapping("/member")
@Controller
public class Membercontroller {

	@Autowired
	private MemberService service;

	@GetMapping("/login")
	public void loginForm(String error, String logout, Model model) {
		System.out.println("로그인 이동");
//		return "/login/login";
		if (error != null) {
			model.addAttribute("error", "로그인 실패");
		}
		if (logout != null) {
			model.addAttribute("logout", "로그아웃");
		}
	}

	@PostMapping("/login")
	public String loginProcessing(String error, MemberVO memberVO, Model model,HttpSession session) {
		System.out.println("login-processing!");
		MemberVO userVO = service.login(memberVO);
		//로그인 실패
		System.out.println(userVO);
		if(userVO == null) {
			error = "아이디 또는 패스워드가 잘못되었습니다.";
			model.addAttribute("error", error);
			System.out.println("로그인 실패");
			return "/member/login";
		}
		//로그인 성공
		model.addAttribute("userVO",userVO);
		String dest = (String)session.getAttribute("dest");
		if(dest != null) {
			session.removeAttribute("dest");
			return "redirect:"+dest;
		}
		return "redirect:/";
	}

	@GetMapping("/registagree")
	public String registAgreeForm() {
		return "/member/regist_agree";
	}
	@PostMapping("/registagree")
	public String registAgree() {
		return "redirect:/member/regist";
	}
	@GetMapping("/regist")
	public String registForm() {
		return "/member/userregist";
	}
	@PostMapping("/regist")
	public String registProcessing(MemberVO memberVO, Model model) {
		service.userRegist(memberVO);
		return "redirect:/member/login";
	}
	@PostMapping("/registIdCheck")
	@ResponseBody
	public int registIdCheck(@RequestParam("reg_mb_id") String checkId) {
		int result = service.registIdCheck(checkId);
		return result;
	}
	@GetMapping("/logout")
	public String logout(SessionStatus sessionStatus) {
		//sessionAttributes 어노테이션으로 세션영역에 등록된 애들은 invalidate()로 지울수 없음!
		//session.invalidate();
		//session.removeAttribute("userVO");	
		sessionStatus.setComplete();//sessionattributes에 올라와있는 친구가 사용 완료 되었어~하는 친구
		return "redirect:/";
	}

}
