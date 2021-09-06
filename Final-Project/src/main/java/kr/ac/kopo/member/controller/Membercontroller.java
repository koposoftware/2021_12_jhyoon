package kr.ac.kopo.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.ac.kopo.member.service.MemberService;

@Controller
public class Membercontroller {

	@Autowired
	private MemberService service;
	
	@GetMapping("/login")
	public String loginForm() {
		return "/login/login";
	}

}
