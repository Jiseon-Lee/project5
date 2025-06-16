package com.banchan.controller.memberAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.banchan.controller.action.Action;
import com.banchan.dao.MemberDAO;

public class CheckIdOkAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.confirmID(userid);
		request.setAttribute("result", result);
		request.setAttribute("userid", userid);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/idcheck.jsp");
		dispatcher.forward(request, response);
	}

}
