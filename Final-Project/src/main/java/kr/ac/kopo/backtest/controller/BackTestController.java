package kr.ac.kopo.backtest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BackTestController {

	
	@RequestMapping("/backtest/compo")
	public String backtestComp() {
		return "/backtesting/compo";
	}
}
