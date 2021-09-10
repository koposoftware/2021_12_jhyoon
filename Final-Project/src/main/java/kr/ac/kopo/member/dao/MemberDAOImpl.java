package kr.ac.kopo.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public MemberVO login(MemberVO memberVO) {
		System.out.println("입력 : " + memberVO);
		MemberVO userVO = sqlSessionTemplate.selectOne("login", memberVO);
		System.out.println("출력 : " + userVO);
		return userVO;
	}

	@Override
	public void userRegist(MemberVO memberVO) {
		sqlSessionTemplate.insert("registMember", memberVO); 
		
	}

	@Override
	public int registIdCheck(String checkId) {
		int result = sqlSessionTemplate.selectOne("checkId", checkId);
		
		return result;
	}
	
	
	
	
}
