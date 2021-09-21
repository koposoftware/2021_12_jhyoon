package kr.ac.kopo.counsel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.counsel.service.CounselingService;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.member.vo.OneClubPBVO;

@Controller
public class CounselingController {

	@Autowired
	private CounselingService service;
	
	@GetMapping("/counsel/viewPB")
	public ModelAndView viewCounsellor(HttpSession session) {
		
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		System.out.println(userVO);
		List<OneClubPBVO> pbList = service.getPBList();
		OneClubPBVO myPB = service.getMyPB(userVO.getEmpId());
		for (OneClubPBVO oneClubPBVO : pbList) {
			System.out.println(oneClubPBVO);
		}
		ModelAndView mav = new ModelAndView("/counsel/viewPB");
		mav.addObject("mypb", myPB);
		mav.addObject("pbList", pbList);
		return mav;
		
	}
	
	
}
