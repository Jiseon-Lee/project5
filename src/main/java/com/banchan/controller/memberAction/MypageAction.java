package com.banchan.controller.memberAction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.banchan.controller.action.Action;

public class MypageAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		if (session.getAttribute("loginUser") == null) {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>");
			out.println("alert('로그인을 해주세요.');");
			out.println("location.href='Banchan?command=loginForm';");
			out.println("</script>");
			out.close();
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("member/mypage.jsp");
			dispatcher.forward(request, response);
		}
	}

}
