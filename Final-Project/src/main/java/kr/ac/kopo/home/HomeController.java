package kr.ac.kopo.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kr.ac.kopo.backtest.service.BackTestService;
import kr.ac.kopo.backtest.vo.BackTestCompoVO;
import kr.ac.kopo.backtest.vo.BackTestRecommendListVO;
import kr.ac.kopo.backtest.vo.BackTestRecommendVO;
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
		int portNo = 5;
		BackTestCompoVO compVO = service.getPortCondi(portNo);
		
		BackTestRecommendListVO setRecommendVO = new BackTestRecommendListVO();
		setRecommendVO.setPortNum(compVO.getPortNum());
		setRecommendVO.setUserId(compVO.getUserId());
		setRecommendVO.setStockCnt(28);
		List<BackTestRecommendVO> recommendList = service.getRecommendList(setRecommendVO);
		for (BackTestRecommendVO backTestRecommendVO : recommendList) {
			
			System.out.println(backTestRecommendVO);
		}
		Gson gson = new Gson();
		ModelAndView mav = new ModelAndView("/test");
		
		return mav;
	}
	
}
