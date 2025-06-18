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

public class BoardIdCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String go = request.getParameter("go");
		String num = request.getParameter("num");
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardVO bVo = bDao.selectOneBoardByNum(num);
		
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("loginUser");
		
		String message = null;
		String url = null;
		
		if (bVo == null) {	// 게시글이 없을 때
			message = "게시물에 문제가 생겼습니다.";
			url = "Banchan?command=boardList";
		} else if (mVo == null) {	// 로그인이 안되어있을 때
			message = "작성자만 수정/삭제할 수 있습니다. 로그인해주세요";
			url = "Banchan?command=loginForm";
		} else if (!bVo.getUserid().equals(mVo.getUserid())) {	// 게시글을 작성한 사용자가 아닐 때
			message = "작성자만 수정/삭제할 수 있습니다.";
			url = "Banchan?command=boardView&num=" + num;
		} else if (go.equals("u")) {	// 수정으로 갈 때
			request.setAttribute("num", num);
			new BoardUpdateFormAction().execute(request, response);
			return;
		} else if (go.equals("d")) {	// 삭제할 때
			request.setAttribute("num", num);
			new BoardDeleteAction().execute(request, response);
			return;
		}
		
		request.setAttribute("message", message);
		request.setAttribute("url", url);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("alert.jsp");
		dispatcher.forward(request, response);
	}

}
