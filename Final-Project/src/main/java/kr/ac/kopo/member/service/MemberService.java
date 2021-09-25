package kr.ac.kopo.member.service;

import kr.ac.kopo.member.vo.MemberVO;

public interface MemberService {

	public MemberVO login(MemberVO memberVO);

	public void userRegist(MemberVO memberVO);

	public int registIdCheck(String checkId);

	public void updateBacktestCnt(MemberVO memberVO);

	public void setMySubscribe(MemberVO userVO);
	
	
}
