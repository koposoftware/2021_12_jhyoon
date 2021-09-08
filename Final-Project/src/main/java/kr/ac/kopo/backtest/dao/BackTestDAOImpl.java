package kr.ac.kopo.backtest.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BackTestDAOImpl implements BackTestDAO {
 
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
}
