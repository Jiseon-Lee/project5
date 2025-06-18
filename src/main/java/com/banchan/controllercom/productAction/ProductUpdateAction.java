package com.banchan.controllercom.productAction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.banchan.controller.action.Action;
import com.banchan.dao.ProductDAO;
import com.banchan.dto.ProductVO;
import com.oreilly.servlet.MultipartRequest;

public class ProductUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MultipartRequest multi = (MultipartRequest) request.getAttribute("multi");
		
		String code = multi.getParameter("code");
		String productname = multi.getParameter("productName");
		int price = Integer.parseInt(multi.getParameter("price"));
		String description = multi.getParameter("description");
		String issell = multi.getParameter("issell");
		String pictureUrl = multi.getFilesystemName("pictureUrl");
		ProductVO pVo = new ProductVO();
		pVo.setCode(Integer.parseInt(code));
		pVo.setProductName(productname);
		pVo.setPrice(price);
		pVo.setDescription(description);
		pVo.setIssell(issell);
		pVo.setPictureUrl(pictureUrl);
		
		if (pVo.getPictureUrl() == null) {
			System.out.println("picture : " + multi.getParameter("nonmakeImg"));
			pVo.setPictureUrl(multi.getParameter("nonmakeImg"));
		}
		
		System.out.println("product : " + pVo);
		
		ProductDAO pDao = ProductDAO.getInstance();
		int result = pDao.updateProduct(pVo);
		String message = null;
		
		if (result == 1) {
			message = "상품이 수정되었습니다.";
		} else {
			message = "오류가 발생하였습니다.";
		}
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=UTF-8");
		out.println("<script>");
		out.println("alert('" + message + "');");
		out.println("location.href='Banchan?command=productList';");
		out.println("</script>");
		out.close();
	}

}
