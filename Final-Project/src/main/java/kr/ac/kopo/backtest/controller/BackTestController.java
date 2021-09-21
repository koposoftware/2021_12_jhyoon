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
import kr.ac.kopo.backtest.vo.BackTestRecommendListVO;
import kr.ac.kopo.backtest.vo.BackTestRecommendVO;
import kr.ac.kopo.backtest.vo.BackTestResultAccVO;
import kr.ac.kopo.backtest.vo.BackTestResultFlucVO;
import kr.ac.kopo.backtest.vo.BackTestResultSetVO;
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
	
	//테스트 
	@GetMapping("/backtest/result")
	public ModelAndView backTestResult() {
		int portNo = 104;
		//포트번호로 조건식 불러오기
		BackTestCompoVO compVO = service.getPortCondi(portNo);
		//계좌정보 불러오기
		List<BackTestResultAccVO> accList = service.getAccResult(compVO);
		List<BackTestResultAccVO> accReverseList = service.getAccResverseResult(compVO);
		//일별 List불러오기
		List<BackTestResultFlucVO> stockDayList = service.getStockDayList(compVO);
		
		// backtest 월 누적 수익률 / 월 평균 수익률
		List<BackTestResultFlucVO> stockAVGList = service.getStockAVGList(compVO);
		// 거래내역 결과 불러오기
		List<BackTestTransResultVO> transList = service.getTransResult(compVO);
		// 종합 정보 불러오기
		BackTestResultSetVO totalResult = service.getTotalResult(compVO);
		//마지막 종목 불러오기
		List<BackTestTransResultVO> lastStock = service.getLastStock(compVO); 
		
		BackTestRecommendListVO setRecommendVO = new BackTestRecommendListVO();
		setRecommendVO.setPortNum(compVO.getPortNum());
		setRecommendVO.setUserId(compVO.getUserId());
		setRecommendVO.setStockCnt(28);
		List<BackTestRecommendVO> recommendList = service.getRecommendList(setRecommendVO);
		
		
		Gson gson = new Gson();
		ModelAndView mav = new ModelAndView("/backtest/result");
		mav.addObject("compoVO", compVO);
		mav.addObject("lastStockList", lastStock);
		mav.addObject("accTotal", accList);
		mav.addObject("accReverseTotal", accReverseList);
		mav.addObject("totalResult", totalResult);
		mav.addObject("accList", gson.toJson(accList));
		mav.addObject("stockDayList", gson.toJson(stockDayList));
		mav.addObject("stockAVGList", gson.toJson(stockAVGList));
		mav.addObject("transList", gson.toJson(transList));
		mav.addObject("transList2", transList);
		mav.addObject("recommendList", recommendList);
		return mav;
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
		service.getBacktestProcedure(compVO);
		// backtest 프로시저 실행 후 결과값 가져오기(daily fluc data)
		List<BackTestResultFlucVO> stockDayList = service.getStockDayList(compVO);
		
		// backtest 결과값 가져오기
		List<BackTestTransResultVO> transList = service.getTransResult(compVO);

		
		// backtest acc data
		List<BackTestResultAccVO> accList = service.getAccResult(compVO);
		List<BackTestResultAccVO> accReverseList = service.getAccResverseResult(compVO);		
		
		// backtest 월 누적 수익률 / 월 평균 수익률
		List<BackTestResultFlucVO> stockAVGList = service.getStockAVGList(compVO);
		// 종합 정보 불러오기
		BackTestResultSetVO totalResult = service.getTotalResult(compVO);
		
		//마지막 종목 불러오기
		List<BackTestTransResultVO> lastStock = service.getLastStock(compVO); 		
		
		//추천 종목 가져오기
		BackTestRecommendListVO setRecommendVO = new BackTestRecommendListVO();
		setRecommendVO.setPortNum(compVO.getPortNum());
		setRecommendVO.setUserId(compVO.getUserId());
		setRecommendVO.setStockCnt(28);
		List<BackTestRecommendVO> recommendList = service.getRecommendList(setRecommendVO);
		
		
		Gson gson = new Gson();
//		
		ModelAndView mav = new ModelAndView("/backtest/result");
		mav.addObject("compoVO", compVO);
		mav.addObject("lastStockList", lastStock);
		mav.addObject("accTotal", accList);
		mav.addObject("accReverseTotal", accReverseList);
		mav.addObject("totalResult", totalResult);
		mav.addObject("accList", gson.toJson(accList));
		mav.addObject("stockDayList", gson.toJson(stockDayList));
		mav.addObject("stockAVGList", gson.toJson(stockAVGList));
		mav.addObject("transList", gson.toJson(transList));
		mav.addObject("transList2", transList);
		mav.addObject("recommendList", recommendList);

		return mav;
	}
	
	
	@PostMapping("/backtest/edit")
	@ResponseBody
	public void editContent(BackTestCompoVO compVO) {
		service.editContent(compVO);
	}
	
	
	
}
