package com.som.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.som.command.Command;
import com.som.model.CartDAO;
import com.som.model.CartVO;
import com.som.model.ProductVO;

public class InsertCart  implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		// user_seq는 임의로 1
		int user_seq = 1;
		// 대여 기간
		int cart_period = Integer.parseInt(request.getParameter("rental_period"));
		// 대여 수량
		int cart_quantity = Integer.parseInt(request.getParameter("rental_quantity"));
		int price = Integer.parseInt(request.getParameter("product_price").replace("원", "").trim());
		int product_price = price*cart_quantity*(cart_period/7);
		System.out.println("가격 제발.."  + price+ "," + product_price);
		
		HttpSession session = request.getSession();
		ProductVO vo = (ProductVO)session.getAttribute("get_product_detail");
		// 상품 순번
		int product_seq = vo.getProduct_seq();
		CartVO cartVo = new CartVO(user_seq, product_seq, cart_quantity, cart_period, product_price);
		CartDAO dao = new CartDAO();
		int res = dao.insertCart(cartVo);
		if (res>0) {
			System.out.println("장바구니 업데이트 성공");
		} else {
			System.out.println("장바구니 업데이트 실패");
		}
		return "shopping-cart.jsp";
	}
	
}
