package com.som.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.som.command.Command;
import com.som.model.CartDAO;
import com.som.model.CartVO;
import com.som.model.OrderDAO;
import com.som.model.OrderVO;

public class OrderService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("order service");
		// session에서 user_seq 정보 받아오기
		int user_seq = 1;
		// 주문 금액
		int order_payment = Integer.parseInt(request.getParameter("order_payment"));
		System.out.println(order_payment);
		
		//List<CartVO> list = null;
		//list = new CartDAO().printCart(user_seq);
		
		OrderVO vo = new OrderVO(user_seq, order_payment);
		OrderDAO dao = new OrderDAO();
		int res = dao.insertOrder(vo);
		
		/*
		 * if (list!=null) { for (int i = 0; i < list.size(); i++) { res =
		 * dao.insertRental(list.get(i)); } }
		 */
		
		if(res>0) {
			System.out.println("order insert 성공");
		}else {
			System.out.println("order insert 실패");
		}
		
		
		return "approved.jsp";
	}

}
