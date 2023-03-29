package com.som.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.som.command.Command;
import com.som.model.UsersDAO;
import com.som.model.UsersVO;

public class JoinService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
	String moveURL = "joinSuccess.jsp";
	
		
	    String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		String user_address = request.getParameter("user_address");
		String user_nick = request.getParameter("user_nick");
		String user_phone = request.getParameter("user_phone");
		
		UsersVO vo = new UsersVO(user_id,user_pw,user_name,user_address,user_nick,user_phone);
		UsersDAO dao = new UsersDAO();
		int cnt = dao.insertMember(vo);
		
		if(cnt>0) {
			
			System.out.println("회원가입 성공");
//			RequestDispatcher rd = request.getRequestDispatcher("JoinSuccess.jsp");
//			request.setAttribute("joinEmail",email);  // 속성(name),값(value)  
//			rd.forward(request, response);
	//      response.sendRedirect("JoinSuccess.jsp?joinEmail="+ email);
			moveURL = "joinSuccess.jsp?user_id="+user_id ;
			moveURL = "joinSuccess.jsp?user_name="+user_name ;
		}else {
		
		//	response.sendRedirect("Main.jsp");
			System.out.println("회원가입 실패");
			moveURL = "joinPage.jsp";	
			
		}
	
		
		
		return moveURL;
	}
	}

