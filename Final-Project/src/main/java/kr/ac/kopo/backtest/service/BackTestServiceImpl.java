package kr.ac.kopo.backtest.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.backtest.dao.BackTestDAO;

@Service
public class BackTestServiceImpl implements BackTestService{

	
	@Autowired 
	private BackTestDAO backTestDAO;
}
