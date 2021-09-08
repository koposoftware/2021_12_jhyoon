package kr.ac.kopo.backtest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.backtest.vo.BackTestCompoVO;

@Controller
public class BackTestController {

	
	@GetMapping("/backtest/compo")
	public String backTestComp() {
		return "/backtesting/compo";
	}
	
	@PostMapping("/backtest/compo")
	public String backTestResult(BackTestCompoVO compVO) {
		
		
		System.out.println(compVO);
		return "";
	}
}
