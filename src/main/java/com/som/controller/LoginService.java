package com.som.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.som.command.Command;
import com.som.model.UsersDAO;
import com.som.model.UsersVO;

public class LoginService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		UsersVO login_vo = null;
		
		String ip = request.getRemoteAddr();
		
		
		//request.setCharacterEncoding("UTF-8");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		UsersVO vo = new UsersVO(user_id,user_pw);
		UsersDAO dao = new UsersDAO();
		login_vo = dao.login(vo);
		
		if(login_vo != null) {
			System.out.print("로그인 성공");
			 HttpSession session = request.getSession();
			 session.setAttribute("login_vo", login_vo);
		//	 response.sendRedirect("Login.jsp");
		}else {
			System.out.println("로그인 실패");
		//	response.sendRedirect("Login.jsp");
			 
			 
			 
		}
		
		
		
		
		return "Main.jsp";
	}

	}
	

