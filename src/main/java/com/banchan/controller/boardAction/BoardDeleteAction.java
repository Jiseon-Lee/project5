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

public class BoardDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String num = request.getParameter("num");
		BoardDAO bDao = BoardDAO.getInstance();
		BoardVO bVo = bDao.selectOneBoardByNum(num);
		
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("loginUser");
		
		String message = "삭제 중 오류가 발생하였습니다.";
		String url = "Banchan?command=boardView&num=" + num;
		
		if (mVo == null) {
			message = "작성자만 삭제할 수 있습니다. 로그인해 주세요.";
			url = "Banchan?command=loginForm";
		} else if (!mVo.getUserid().equals(bVo.getUserid())) {
			message = "작성자만 삭제할 수 있습니다.";
		} else {
			int result = bDao.deleteBoard(num);
			
			if (result ==  1) {
				message = "게시물이 삭제되었습니다.";
				url = "Banchan?command=boardList";
			}
		}
		
		request.setAttribute("message", message);
		request.setAttribute("url", url);

		RequestDispatcher dispatcher = request.getRequestDispatcher("alert.jsp");
		dispatcher.forward(request, response);
	}
}
