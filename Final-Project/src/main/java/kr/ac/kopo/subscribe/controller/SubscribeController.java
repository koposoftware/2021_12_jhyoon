package kr.ac.kopo.subscribe.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import kr.ac.kopo.counsel.service.CounselingService;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.member.vo.OneClubPBVO;

@Controller
public class SubscribeController {

	@Autowired
	private MemberService service;
	
	@Autowired
	private CounselingService PBservice;
	
	@GetMapping("/subscribe")
	public String joinSubscrbie() {
		
		
		return "/subscribe/subscribe";
		
	}
	@GetMapping("/subscribe/{type}")
	public String subscribe(@PathVariable int type, HttpSession session) {
		
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		
		System.out.println("내 등급 : " + userVO.getSubscribeGrade());
		
		if ( type == 1) {
			userVO.setSubscribeGrade("HANA FAMILY");
		}else if ( type == 2) {
			userVO.setSubscribeGrade("HANA VIP");
			List<OneClubPBVO> pbList = PBservice.getPBList();
			Random ran = new Random();
			userVO.setEmpId(pbList.get(ran.nextInt(6)).getEmpNo());
		}else {
			userVO.setSubscribeGrade("FAMILY");
		}
		service.setMySubscribe(userVO);
		session.setAttribute("userVO", userVO);
		
		return "redirect:/";
	}
	@GetMapping("/subscribe/cancel")
	public String subscribeCencel(HttpSession session) {
		
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		userVO.setSubscribeGrade("FAMILY");
		userVO.setEmpId("");
		service.setMySubscribe(userVO);
		session.setAttribute("userVO", userVO);
		
		return "redirect:/";
	}
	
	@GetMapping("/selectMyPB/{empNo}")
	public String selectMyPB(@PathVariable String empNo,  HttpSession session) {
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		userVO.setEmpId(empNo);
		service.setMySubscribe(userVO);
		session.setAttribute("userVO", userVO);
		return "redirect:/counsel/viewPB";
	}

}
