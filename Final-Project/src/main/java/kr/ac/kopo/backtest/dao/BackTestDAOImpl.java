package kr.ac.kopo.backtest.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.backtest.vo.BackTestCompoVO;

@Repository
public class BackTestDAOImpl implements BackTestDAO {
 
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void insertCompo(BackTestCompoVO compVO) {
		sqlSessionTemplate.insert("backtest.backTestCompoVO.insertCompo",compVO);
		
	}
	
}
