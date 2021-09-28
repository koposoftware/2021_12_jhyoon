package kr.ac.kopo.counsel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.counsel.dao.CounselingDAO;
import kr.ac.kopo.counsel.vo.CounselVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.member.vo.OneClubPBVO;

@Service
public class CounselingServiceImpl implements CounselingService {

	@Autowired
	private CounselingDAO counselingDAO;
	
	
	@Override
	public List<OneClubPBVO> getPBList() {
		List<OneClubPBVO> pbList = counselingDAO.getPBList();
		return pbList;
	}


	@Override
	public OneClubPBVO getMyPB(String empId) {
		OneClubPBVO myPB = counselingDAO.getMyPB(empId);
		return myPB;
	}


	@Override
	public void insertCounsel(CounselVO counsel) {
		counselingDAO.insertCounsel(counsel);
		
	}


	@Override
	public List<CounselVO> getCounselList(MemberVO userVO) {
		List<CounselVO> counselList = counselingDAO.getCounselList(userVO);
		return counselList;
	}


	@Override
	public CounselVO viewCounsel(int counselNo) {
		CounselVO  counselVO = counselingDAO.viewCounsel(counselNo);
		return counselVO;
	}

}
