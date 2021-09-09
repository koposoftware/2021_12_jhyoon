package kr.ac.kopo.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;

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
	public void loginProcessing(String error) {
		System.out.println("login-processing!");
		System.out.println("err :" + error);
	}

	@GetMapping("/")
	public void doMember() {
		System.out.println("멤버로그인~");
	}

	@GetMapping("/admin")
	public void doAdmin() {
		System.out.println("관리자로그인~");
	}
	
	@GetMapping("/regist")
	public String registForm() {
		return "/member/userregist";
		
	}
	
	@PostMapping("/regist")
	public String registProcessing(MemberVO memberVO) {
		service.userRegist(memberVO);
		
		return "";
	}
	
	
	
	
	
}
