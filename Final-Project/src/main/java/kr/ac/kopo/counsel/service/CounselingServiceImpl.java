package kr.ac.kopo.counsel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.counsel.dao.CounselingDAO;
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

}
