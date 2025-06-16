package com.banchan.controller.memberAction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.banchan.controller.action.Action;
import com.banchan.dao.MemberDAO;
import com.banchan.dto.MemberVO;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberVO mVo = new MemberVO();
		mVo.setUsername(request.getParameter("username"));
		mVo.setUserid(request.getParameter("userid"));
		mVo.setPwd(request.getParameter("pwd"));
		mVo.setEmail(request.getParameter("email"));
		mVo.setPhone(request.getParameter("phone"));
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.insertMember(mVo);
		
		if (result == 1) {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>");
			out.println("alert('회원가입되었습니다.');");
			out.println("location.href='Banchan?command=loginForm&userid=" + mVo.getUserid() + "';");
			out.println("</script>");
			out.close();
		} else {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>");
			out.println("alert('회원가입되었습니다.');");
			out.println("location.href='Banchan?command=joinForm';");
			out.println("</script>");
			out.close();
		}
	}

}
