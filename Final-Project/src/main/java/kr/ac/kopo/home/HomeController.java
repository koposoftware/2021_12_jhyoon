package kr.ac.kopo.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kr.ac.kopo.backtest.service.BackTestService;
import kr.ac.kopo.backtest.vo.BackTestCompoVO;
import kr.ac.kopo.backtest.vo.BackTestResultAccVO;
import kr.ac.kopo.backtest.vo.BackTestResultFlucVO;


@Controller
public class HomeController {

	@Autowired
	private BackTestService service;
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	@RequestMapping("/test")
	public ModelAndView test() {
		int portNo = 33;
		BackTestCompoVO compVO = service.getPortCondi(portNo);
		
		List<BackTestResultAccVO> accList = service.getAccResult(compVO);
		for (BackTestResultAccVO backTestResultAccVO : accList) {
			System.out.println(backTestResultAccVO);
		}
		List<BackTestResultFlucVO> stockDayList = service.getStockDayList(compVO);
		for (BackTestResultFlucVO backTestResultFlucVO : stockDayList) {
			System.out.println(backTestResultFlucVO);
		}
		
		Gson gson = new Gson();
		ModelAndView mav = new ModelAndView("/test");
		mav.addObject("accList", gson.toJson(accList));
		mav.addObject("accList", gson.toJson(stockDayList));
		
		return mav;
	}
	
}
