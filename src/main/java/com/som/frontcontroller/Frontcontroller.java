package com.som.frontcontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.som.controller.LoginService;
import com.som.controller.MessageService;
import com.som.controller.SaleService;
import com.som.command.Command;


@WebServlet("*.do")
public class Frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[Frontcontroller]");
		request.setCharacterEncoding("UTF-8");
		String reqURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String result = reqURI.substring(contextPath.length() + 1);
		System.out.println("최종 uri : " + result);
		Command service = null;
		
		if (result.equals("LoginService.do")) {
			// 로그인 기능
			service = new LoginService();
		} else if (result.equals("MessageService.do")) {
			// 메세지 저장 기능
			service = new MessageService();
		}else if (result.equals("SaleService.do")) {
			// 매매 희망 서비스
			service = new SaleService();
		}
		String moveURL = service.execute(request, response);
		response.sendRedirect(moveURL);
	}

}
