package com.banchan.controller.boardAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.banchan.controller.action.Action;
import com.banchan.dao.BoardDAO;
import com.banchan.dto.BoardVO;

public class BoardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		BoardVO bVo = new BoardVO();
		bVo.setNum(Integer.parseInt(num));
		bVo.setTitle(title);
		bVo.setContent(content);
		
		BoardDAO bDao = BoardDAO.getInstance();
		int result = bDao.updateBoard(bVo);
		
		String message = null;
		String url = null;
		
		if (result == 1) {
			message = "게시물이 수정되었습니다.";
			url = "Banchan?command=boardView&num=" + num;
		} else {
			message = "게시물 수정 중 오류가 발생하였습니다.";
			url = "Banchan?command=boardUpdateForm&num=" + num;
		}
		
		request.setAttribute("message", message);
		request.setAttribute("url", url);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("alert.jsp");
		dispatcher.forward(request, response);
	}
}
