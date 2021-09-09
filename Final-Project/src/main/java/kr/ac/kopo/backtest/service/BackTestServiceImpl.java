package kr.ac.kopo.backtest.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.backtest.dao.BackTestDAO;
import kr.ac.kopo.backtest.vo.BackTestCompoVO;

@Service
public class BackTestServiceImpl implements BackTestService{

	
	@Autowired 
	private BackTestDAO backTestDAO;

	@Override
	public void insertCompo(BackTestCompoVO compVO) {
		backTestDAO.insertCompo(compVO);
		
	}
}
