package kr.ac.kopo.backtest.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.backtest.vo.BackTestCompoVO;
import kr.ac.kopo.backtest.vo.BackTestResultAccVO;
import kr.ac.kopo.backtest.vo.BackTestResultFlucVO;
import kr.ac.kopo.backtest.vo.BackTestResultSetVO;
import kr.ac.kopo.backtest.vo.BackTestTransResultVO;

@Repository
public class BackTestDAOImpl implements BackTestDAO {
 
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void insertCompo(BackTestCompoVO compVO) {
		sqlSessionTemplate.insert("backtest.backTestCompoVO.insertCompo",compVO);
		
	}
	@Override
	public BackTestCompoVO getPortNo(BackTestCompoVO compVO) {
		int portNum = sqlSessionTemplate.selectOne("getPortNum", compVO);
		compVO.setPortNo(portNum);
		System.out.println("port number :"+portNum);
		return compVO;
	}
	
	@Override
	public List<BackTestResultFlucVO> getBacktestProcedure(BackTestCompoVO compVO) {
		BackTestResultSetVO resultVO = new BackTestResultSetVO();
		resultVO.setPortNum(compVO.getPortNum());
		resultVO.setUserId(compVO.getUserId());
		sqlSessionTemplate.selectList("backtestProcedure", resultVO);
		List<BackTestResultFlucVO> list = resultVO.getResultList();
		
		return list;
	}
	@Override
	public List<BackTestTransResultVO> getTransResult(BackTestCompoVO compVO) {
		List<BackTestTransResultVO> transList = sqlSessionTemplate.selectList("transResult", compVO);
		return transList;
	}
	@Override
	public List<BackTestResultAccVO> getAccResult(BackTestCompoVO compVO) {
		List<BackTestResultAccVO> accList = sqlSessionTemplate.selectList("accResult", compVO);
		return accList;
	}
	@Override
	public BackTestCompoVO getPortCondi(int portNo) {
		BackTestCompoVO compVO = sqlSessionTemplate.selectOne("getPortCondi", portNo);
		return compVO;
	}
	@Override
	public List<BackTestResultFlucVO> getStockDayList(BackTestCompoVO compVO) {
		List<BackTestResultFlucVO> stockDayList = sqlSessionTemplate.selectList("stockDayList",compVO);
		return stockDayList;
	}

	@Override
	public void editContent(BackTestCompoVO compVO) {
		sqlSessionTemplate.update("editContent",compVO);
	}

	
}
