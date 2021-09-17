package kr.ac.kopo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.ac.kopo.member.vo.MemberVO;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//로그인 여부 판단
		HttpSession session =  request.getSession();
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		System.out.println("인터셉터 지나감!");
		if(userVO == null) {
			String uri = request.getRequestURI();
			uri = uri.substring(request.getContextPath().length());
			System.out.println("uri : " + uri);
		
		
		session.setAttribute("dest", uri);
		response.sendRedirect(request.getContextPath()+"/member/login");
		return false;
		}
		
		
		
		
		
		
		
		return true;
	}

}
