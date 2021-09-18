package kr.ac.kopo.backtest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.backtest.dao.BackTestDAO;
import kr.ac.kopo.backtest.vo.BackTestCompoVO;
import kr.ac.kopo.backtest.vo.BackTestResultAccVO;
import kr.ac.kopo.backtest.vo.BackTestResultFlucVO;
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
	public List<BackTestResultFlucVO> getBacktestProcedure(BackTestCompoVO compVO) {
		List<BackTestResultFlucVO> list = backTestDAO.getBacktestProcedure(compVO);
		return list;
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
}
