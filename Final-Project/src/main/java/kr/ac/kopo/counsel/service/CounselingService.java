package kr.ac.kopo.counsel.service;

import java.util.List;

import kr.ac.kopo.counsel.vo.CounselVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.member.vo.OneClubPBVO;

public interface CounselingService {

	List<OneClubPBVO> getPBList();

	OneClubPBVO getMyPB(String empId);

	void insertCounsel(CounselVO counsel);

	List<CounselVO> getCounselList(MemberVO userVO);

	CounselVO viewCounsel(int counselNo);


}
