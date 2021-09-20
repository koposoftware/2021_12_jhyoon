package kr.ac.kopo.backtest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.backtest.dao.BackTestDAO;
import kr.ac.kopo.backtest.vo.BackTestCompoVO;
import kr.ac.kopo.backtest.vo.BackTestRecommendListVO;
import kr.ac.kopo.backtest.vo.BackTestRecommendVO;
import kr.ac.kopo.backtest.vo.BackTestResultAccVO;
import kr.ac.kopo.backtest.vo.BackTestResultFlucVO;
import kr.ac.kopo.backtest.vo.BackTestResultSetVO;
import kr.ac.kopo.backtest.vo.BackTestTransResultVO;

@Service
public class BackTestServiceImpl implements BackTestService{

	
	@Autowired 
	private BackTestDAO backTestDAO;

	@Override
	public void insertCompo(BackTestCompoVO compVO) {
		backTestDAO.insertCompo(compVO); 
	}

	@Override
	public void getBacktestProcedure(BackTestCompoVO compVO) {
		backTestDAO.getBacktestProcedure(compVO);
	}

	@Override
	public List<BackTestTransResultVO> getTransResult(BackTestCompoVO compVO) {
		List<BackTestTransResultVO> transList = backTestDAO.getTransResult(compVO);
		return transList;
	}

	@Override
	public BackTestCompoVO getPortNo(BackTestCompoVO compVO) {
		compVO = backTestDAO.getPortNo(compVO);
		return compVO;
	}

	@Override
	public List<BackTestResultAccVO> getAccResult(BackTestCompoVO compVO) {
		List<BackTestResultAccVO> accList = backTestDAO.getAccResult(compVO);
		return accList;
	}

	@Override
	public BackTestCompoVO getPortCondi(int portNo) {
		BackTestCompoVO compVO = backTestDAO.getPortCondi(portNo);
		return compVO;
	}

	@Override
	public List<BackTestResultFlucVO> getStockDayList(BackTestCompoVO compVO) {
		List<BackTestResultFlucVO> stockDayList = backTestDAO.getStockDayList(compVO);
		return stockDayList;
	}

	@Override
	public void editContent(BackTestCompoVO compVO) {
		backTestDAO.editContent(compVO);
	}

	@Override
	public List<BackTestResultFlucVO> getStockAVGList(BackTestCompoVO compVO) {
		List<BackTestResultFlucVO> stockAVGList = backTestDAO.getStockAVGList(compVO);
		return stockAVGList;
	}

	@Override
	public BackTestResultSetVO getTotalResult(BackTestCompoVO compVO) {
		BackTestResultSetVO totalResult = backTestDAO.getTotalResult(compVO);
		return totalResult;
	}

	@Override
	public List<BackTestResultAccVO> getAccResverseResult(BackTestCompoVO compVO) {
		List<BackTestResultAccVO> accReverseList = backTestDAO.getAccReverseResult(compVO);
		return accReverseList;
	}

	@Override
	public List<BackTestTransResultVO> getLastStock(BackTestCompoVO compVO) {
		List<BackTestTransResultVO> lastStock = backTestDAO.getLastStock(compVO);
		return lastStock;
	}

	@Override
	public List<BackTestRecommendVO> getRecommendList(BackTestRecommendListVO setRecommendVO) {
		List<BackTestRecommendVO> recommendList = backTestDAO.getRecommendList(setRecommendVO);
		return recommendList;
	}
}
