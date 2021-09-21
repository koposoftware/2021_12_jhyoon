package kr.ac.kopo.counsel.service;

import java.util.List;

import kr.ac.kopo.member.vo.OneClubPBVO;

public interface CounselingService {

	List<OneClubPBVO> getPBList();

	OneClubPBVO getMyPB(String empId);


}
