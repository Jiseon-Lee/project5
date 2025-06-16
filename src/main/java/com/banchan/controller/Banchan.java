package com.banchan.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.banchan.controller.action.Action;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/Banchan")
public class Banchan extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
		String command = request.getParameter("command");
		System.out.println("Banchan에서 요청을 받음을 확인 GET: " + command);
		ActionFactory af = ActionFactory.getInstance();
		
		Action action = af.getAction(command);
		
		if (action != null) {
			action.execute(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
	    
	    String command = null;

	    // multipart인지 확인
	    String contentType = request.getContentType();
	    if (contentType != null && contentType.toLowerCase().startsWith("multipart/")) {    	
	        // MultipartRequest를 이용해 파싱
	        String path = getServletContext().getRealPath("upload");
	        int sizeLimit = 20 * 1024 * 1024;
	        String encType = "UTF-8";

	        MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, encType, new DefaultFileRenamePolicy());

	        command = multi.getParameter("command");
	        
	        request.setAttribute("multi", multi);
	    } else {
	        // 일반 폼 방식
	        command = request.getParameter("command");
	    }

	    System.out.println("Banchan에서 요청을 받음을 확인 POST: " + command);

	    ActionFactory af = ActionFactory.getInstance();
	    Action action = af.getAction(command);

	    if (action != null) {
	        action.execute(request, response);
	    }
	}

}
