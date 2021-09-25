package kr.ac.kopo.backtest.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.backtest.vo.BackTestCompoVO;
import kr.ac.kopo.backtest.vo.BackTestListVO;
import kr.ac.kopo.backtest.vo.BackTestRecommendListVO;
import kr.ac.kopo.backtest.vo.BackTestRecommendVO;
import kr.ac.kopo.backtest.vo.BackTestResultAccVO;
import kr.ac.kopo.backtest.vo.BackTestResultFlucVO;
import kr.ac.kopo.backtest.vo.BackTestResultSetVO;
import kr.ac.kopo.backtest.vo.BackTestTransResultVO;
import kr.ac.kopo.member.vo.MemberVO;

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
		compVO.setPortNum(portNum);
		return compVO;
	}
	
	@Override
	public void getBacktestProcedure(BackTestCompoVO compVO) {
		BackTestResultSetVO resultVO = new BackTestResultSetVO();
		resultVO.setPortNum(compVO.getPortNum());
		resultVO.setUserId(compVO.getUserId());
		sqlSessionTemplate.selectList("backtestProcedure", resultVO);
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
		System.out.println("dao단 포트 : " + portNo);
		BackTestCompoVO compVO = sqlSessionTemplate.selectOne("getPortCondi", portNo);
		System.out.println("dao단 결과 : " + compVO);
		
		
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
	@Override
	public List<BackTestResultFlucVO> getStockAVGList(BackTestCompoVO compVO) {
		List<BackTestResultFlucVO> stockAVGList = sqlSessionTemplate.selectList("stockAVGRate",compVO);
		return stockAVGList;
	}
	@Override
	public BackTestResultSetVO getTotalResult(BackTestCompoVO compVO) {
		BackTestResultSetVO totalResult = sqlSessionTemplate.selectOne("totalResult", compVO);
		return totalResult;
	}
	@Override
	public List<BackTestResultAccVO> getAccReverseResult(BackTestCompoVO compVO) {
		List<BackTestResultAccVO> accReverseList = sqlSessionTemplate.selectList("accReverseResult", compVO);
		return accReverseList;
	}
	@Override
	public List<BackTestTransResultVO> getLastStock(BackTestCompoVO compVO) {
		List<BackTestTransResultVO> lastStock = sqlSessionTemplate.selectList("currentStock", compVO);
		return lastStock;
	}
	@Override
	public List<BackTestRecommendVO> getRecommendList(BackTestRecommendListVO setRecommendVO) {
		sqlSessionTemplate.selectList("recommendList", setRecommendVO);
		List<BackTestRecommendVO> recommendList = setRecommendVO.getRecommendList();
		return recommendList;
	}
	@Override
	public List<BackTestListVO> getBackTestList(MemberVO userVO) {
		List<BackTestListVO> backTestList = sqlSessionTemplate.selectList("backTestList",userVO);
		return backTestList;
	}
	@Override
	public BackTestListVO getBackTest(MemberVO userVO, int portNum) {
		BackTestListVO backTest = sqlSessionTemplate.selectOne("myBackTest", portNum);
		return backTest;
	}
	@Override
	public void deleteContent(int portNum) {
		sqlSessionTemplate.delete("deletePort", portNum);
	}

	
}
