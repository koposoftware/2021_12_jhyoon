package kr.ac.kopo.counsel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.backtest.service.BackTestService;
import kr.ac.kopo.backtest.vo.BackTestCompoVO;
import kr.ac.kopo.backtest.vo.BackTestListVO;
import kr.ac.kopo.counsel.service.CounselingService;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.member.vo.OneClubPBVO;

@Controller
public class CounselingController {

	@Autowired
	private CounselingService service;
	@Autowired
	private BackTestService backTestService;

	@GetMapping("/counsel/viewPB")
	public ModelAndView viewCounsellor(HttpSession session) {
		
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		List<OneClubPBVO> pbList = service.getPBList();
		OneClubPBVO myPB = service.getMyPB(userVO.getEmpId());
		
		ModelAndView mav = new ModelAndView("/counsel/viewPB");
		mav.addObject("mypb", myPB);
		mav.addObject("pbList", pbList);
		return mav;
		
	}
	@GetMapping("/counsel/writeCounsel")
	public ModelAndView writeCounsel(HttpSession session) {
		//내가가진 모든 포트폴리오 불러오기
		ModelAndView mav = new ModelAndView("/counsel/writeCounsel");
			MemberVO userVO = (MemberVO)session.getAttribute("userVO");
			List<BackTestListVO> backTestList = backTestService.getBackTestList(userVO);
			OneClubPBVO myPB = service.getMyPB(userVO.getEmpId());
			mav.addObject("myPB", myPB);
			mav.addObject("backTestList", backTestList);
			return mav;
	}
	@GetMapping("/counsel/writeCounsel/{portNum}")
	public ModelAndView writePortCounsel(@PathVariable int portNum,HttpSession session) {
		//내가가진 모든 포트폴리오 불러오기
			ModelAndView mav = new ModelAndView("/counsel/writeCounsel");
			MemberVO userVO = (MemberVO)session.getAttribute("userVO");
			BackTestListVO backTest = backTestService.getBackTest(userVO, portNum);
			OneClubPBVO myPB = service.getMyPB(userVO.getEmpId());
			mav.addObject("myPB", myPB);
			mav.addObject("backTest", backTest);
			return mav;
	}
	
	@PostMapping("/counsel/writeCounsel")
	public String writeCounsel() {
		
		return "redirect:/counsel/writeCounsel";
		
	}
	
	
}
