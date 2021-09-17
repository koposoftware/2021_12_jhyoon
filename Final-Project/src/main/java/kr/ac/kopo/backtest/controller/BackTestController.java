package kr.ac.kopo.backtest.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kr.ac.kopo.backtest.service.BackTestService;
import kr.ac.kopo.backtest.vo.BackTestCompoVO;
import kr.ac.kopo.backtest.vo.BackTestResultAccVO;
import kr.ac.kopo.backtest.vo.BackTestResultFlucVO;
import kr.ac.kopo.backtest.vo.BackTestTransResultVO;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;

@Controller
public class BackTestController {
	@Autowired
	private BackTestService service;
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/backtest/compo")
	public String backTestComp() {
		return "/backtest/compo";
	}
	
	@PostMapping("/backtest/compo")
	@ResponseBody
	public ModelAndView backTestResult(BackTestCompoVO compVO, HttpSession session) {
		// 숫자에 콤마제거
		compVO.setBackStartAsset(compVO.getBackStartAsset().replaceAll("\\,", ""));
		compVO.setBackMarketCap(compVO.getBackMarketCap().replaceAll("\\,", ""));
		compVO.setBackTransAmt(compVO.getBackTransAmt().replaceAll("\\,", ""));
		compVO.setBackMinPrice(compVO.getBackMinPrice().replaceAll("\\,", ""));
		
		// 세션에서 user 정보 불러와서 backtest 횟수 확인
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		int userBacktestCnt = userVO.getBacktestCnt();
		compVO.setBacktestCnt(userBacktestCnt+1);		

		// 다시 세션에 user 정보 저장 
		userVO.setBacktestCnt(userBacktestCnt+1);
		memberService.updateBacktestCnt(userVO);
		session.setAttribute("userVO", userVO);
		// backtest 정보 저장
		service.insertCompo(compVO);
		
		// stored port no 
		compVO = service.getPortNo(compVO);
		
		// backtest 프로시저 실행 후 결과값 가져오기(daily fluc data)
		List<BackTestResultFlucVO> stockDayList = service.getBacktestProcedure(compVO);
		for (BackTestResultFlucVO backTestResultFlucVO : stockDayList) {
			System.out.println(backTestResultFlucVO);
		}
		System.out.println("-----------------------------------------------------------------");
		
		// backtest 결과값 가져오기
		List<BackTestTransResultVO> transList = service.getTransResult(compVO);
		for (BackTestTransResultVO backTestTransResultVO : transList) {
			System.out.println(backTestTransResultVO);
		}
		System.out.println("-----------------------------------------------------------------");
		
		// backtest acc data
		List<BackTestResultAccVO> accList = service.getAccResult(compVO);
		for (BackTestResultAccVO backTestResultAccVO : accList) {
			System.out.println(backTestResultAccVO);
		}
		
		System.out.println("-----------------------------------------------------------------");
		Gson gson = new Gson();
		
		ModelAndView mav = new ModelAndView("/backtest/result");
		mav.addObject("compVO", compVO);
		mav.addObject("stockDayList", gson.toJson(stockDayList));
		mav.addObject("transList", gson.toJson(transList));
		mav.addObject("accList", gson.toJson(accList));
		//service.getBackTestProcedure()
		return mav;
	}
	
}
