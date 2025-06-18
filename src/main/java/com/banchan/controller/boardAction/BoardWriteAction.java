package com.banchan.controller.boardAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.banchan.controller.action.Action;
import com.banchan.dao.BoardDAO;
import com.banchan.dto.BoardVO;
import com.banchan.dto.MemberVO;

public class BoardWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("loginUser");
		
		BoardVO bVo = new BoardVO();
		bVo.setUserid(mVo.getUserid());
		bVo.setTitle(request.getParameter("title"));
		bVo.setContent(request.getParameter("content"));
		
		BoardDAO bDao = BoardDAO.getInstance();
		int result = bDao.insertBoard(bVo);
		
		String message = null;
		String url = "Banchan?command=boardList";
		
		if (result == 1) {
			message = "게시물이 등록되었습니다.";
		} else {
			message = "게시물 등록 중 오류가 발생하였습니다.";
		}
		
		request.setAttribute("message", message);
		request.setAttribute("url", url);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("alert.jsp");
		dispatcher.forward(request, response);
	}

}
