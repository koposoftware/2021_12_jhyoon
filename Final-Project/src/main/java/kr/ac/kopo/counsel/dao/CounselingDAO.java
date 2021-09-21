package kr.ac.kopo.counsel.dao;

import java.util.List;

import kr.ac.kopo.member.vo.OneClubPBVO;

public interface CounselingDAO {

	List<OneClubPBVO> getPBList();

	OneClubPBVO getMyPB(String empId);

}
