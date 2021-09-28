package kr.ac.kopo.counsel.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.counsel.vo.CounselVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.member.vo.OneClubPBVO;

@Repository
public class CounselingDAOImpl implements CounselingDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public List<OneClubPBVO> getPBList() {
		System.out.println("여긴 들어옴?");
		List<OneClubPBVO> pbList = sqlSessionTemplate.selectList("counsel.CounselingDAO.pbAllList");

		return pbList;
	}


	@Override
	public OneClubPBVO getMyPB(String empId) {
		OneClubPBVO myPB = sqlSessionTemplate.selectOne("selectMyPB", empId);
		System.out.println(myPB);
		return myPB;
	}


	@Override
	public void insertCounsel(CounselVO counsel) {
		sqlSessionTemplate.insert("insertCounsel", counsel);
		
	}


	@Override
	public List<CounselVO> getCounselList(MemberVO userVO) {
		 List<CounselVO> counselList = sqlSessionTemplate.selectList("counselList", userVO);
		return counselList;
	}


	@Override
	public CounselVO viewCounsel(int counselNo) {
		CounselVO counselVO = sqlSessionTemplate.selectOne("viewCounsel", counselNo);
		return counselVO;
	}

}
