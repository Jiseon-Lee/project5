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

public class BoardUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		BoardDAO bDao = BoardDAO.getInstance();
		BoardVO bVo = bDao.selectOneBoardByNum(num);
		
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("loginUser");
		
		String url = null;
		
		if (mVo == null) {
			request.setAttribute("message", "작성자만 수정할 수 있습니다. 로그인해주세요.");
			request.setAttribute("url", "Banchan?command=loginForm");
			url = "alert.jsp";
		} else if (!mVo.getUserid().equals(bVo.getUserid())) {
			request.setAttribute("message", "작성자만 수정할 수 있습니다.");
			request.setAttribute("url", "Banchan?command=boardView&num=" + num);
			url = "alert.jsp";
		} else {
			request.setAttribute("board", bVo);
			url = "board/boardUpdate.jsp";
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
