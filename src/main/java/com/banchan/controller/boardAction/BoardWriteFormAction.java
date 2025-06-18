package com.banchan.controller.boardAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.banchan.controller.action.Action;

public class BoardWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("loginUser") == null) {
			String message = "로그인을 해주세요.";
			String url = "Banchan?command=loginForm";
			
			request.setAttribute("message", message);
			request.setAttribute("url", url);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("alert.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("board/boardWrite.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
