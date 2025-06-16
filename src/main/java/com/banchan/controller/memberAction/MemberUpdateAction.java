package com.banchan.controller.memberAction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.banchan.controller.action.Action;
import com.banchan.dao.MemberDAO;
import com.banchan.dto.MemberVO;

public class MemberUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVO mVo = new MemberVO();
		mVo.setUsername(request.getParameter("username"));
		mVo.setUserid(request.getParameter("userid"));
		mVo.setPwd(request.getParameter("pwd"));
		mVo.setEmail(request.getParameter("email"));
		mVo.setPhone(request.getParameter("phone"));
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.updateMember(mVo);
		
		if (result == 1) {
			// session정보 업데이트
			mVo = mDao.getMember(mVo.getUserid());
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", mVo);
			
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>");
			out.println("alert('회원정보가 수정되었습니다.');");
			out.println("location.href='Banchan?command=loginForm';");
			out.println("</script>");
			out.close();
		} else {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>");
			out.println("alert('회원정보 수정에 실패했습니다.');");
			out.println("location.href='Banchan?command=mypage';");
			out.println("</script>");
			out.close();
		}
	}

}
