package kr.ac.kopo.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService  {
	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public MemberVO login(MemberVO member) {
		return null;
	}

	
	
	@Override
	public void userRegist(MemberVO memberVO) {
		System.out.println("Before Encoder : " + memberVO.getUserPwd());
		String endcodedPassword = bCryptPasswordEncoder.encode(memberVO.getUserPwd());
		System.out.println("After Encoder : " + endcodedPassword);
		System.out.println("Resist user info :" + memberVO);
		memberVO.setUserPwd(endcodedPassword);
		memberDAO.userRegist(memberVO);
	}
	

}
