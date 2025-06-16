package com.banchan.controller.memberAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.banchan.controller.action.Action;
import com.banchan.controller.action.MainAction;
import com.banchan.dao.MemberDAO;
import com.banchan.dto.MemberVO;

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.userCheck(userid, pwd);
		
		if (result == 1) {
			MemberVO mVo = mDao.getMember(userid);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", mVo);
			new MainAction().execute(request, response);
		} else if (result == 0) {
			String message = "비밀번호가 다릅니다.";
			request.setAttribute("message", message);
			new LoginFormAction().execute(request, response);
		} else if (result == -1) {
			String message = "회원정보가 없습니다.";
			request.setAttribute("message", message);
			new LoginFormAction().execute(request, response);
		}
	}

}
