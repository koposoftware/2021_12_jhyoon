package kr.ac.kopo.member.dao;

import kr.ac.kopo.member.vo.MemberVO;

public interface MemberDAO {

	MemberVO login(MemberVO memberVO);

	void userRegist(MemberVO memberVO);

	int registIdCheck(String checkId);
}
