package com.banchan.controllercom.productAction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.banchan.controller.action.Action;
import com.banchan.dao.ProductDAO;
import com.banchan.dto.MemberVO;

public class ProductDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pwd = request.getParameter("pwd");
		String code = request.getParameter("code");

		String url = "Banchan?command=productCheckPass&code=" + code;
		String message = "";
		
		HttpSession session = request.getSession();
		MemberVO mVo = (MemberVO) session.getAttribute("loginUser");
		
		if (pwd.equals(mVo.getPwd())) {
			ProductDAO pDao = ProductDAO.getInstance();
			int result = pDao.deleteProduct(code);
			
			if (result == 1) {
				message = "삭제되었습니다.";
				url = "Banchan?command=productList";
			} else {
				message = "삭제 중 오류가 생겼습니다.";
			}
		} else {
			message = "비밀번호가 다릅니다.";
		}
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		out.println("<script>");
		out.println("alert('" + message + "');");
		out.println("location.href='" + url + "';");
		out.println("</script>");
		out.close();
	}

}
