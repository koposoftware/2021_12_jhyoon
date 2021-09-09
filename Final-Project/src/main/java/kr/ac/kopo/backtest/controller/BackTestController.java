package kr.ac.kopo.backtest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.backtest.service.BackTestService;
import kr.ac.kopo.backtest.vo.BackTestCompoVO;

@Controller
public class BackTestController {
	@Autowired
	private BackTestService service;
	
	@GetMapping("/backtest/compo")
	public String backTestComp() {
		return "/backtesting/compo";
	}
	
	@PostMapping("/backtest/compo")
	public ModelAndView backTestResult(BackTestCompoVO compVO) {
		System.out.println(compVO);
		service.insertCompo(compVO);
		ModelAndView mav = new ModelAndView("/backtest/compo");
		
		mav.addObject("msg","성공");
		return mav;
	}
}
