package com.banchan.controllercom.productAction;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.banchan.controller.action.Action;
import com.banchan.dao.ProductDAO;
import com.banchan.dto.MemberVO;
import com.banchan.dto.ProductVO;

public class ProductListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("loginUser");
		
		if (mVo == null || mVo.getAdmin() == 0) {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>");
			out.println("alert('관리자계정으로 로그인을 해주세요.');");
			out.println("location.href='Banchan';");
			out.println("</script>");
			out.close();
		} else {
			ProductDAO pDao = ProductDAO.getInstance();
			List<ProductVO> list = pDao.selectAllProducts();
			request.setAttribute("list", list);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("product/productList.jsp");
			dispatcher.forward(request, response);
		}
	}

}
