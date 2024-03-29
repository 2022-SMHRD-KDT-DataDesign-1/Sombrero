<%@page import="com.som.model.UsersVO"%>
<%@page import="com.som.model.CartDAO"%>
<%@page import="com.som.model.CartVO"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<%  
		DecimalFormat formatter = new DecimalFormat("###,###");
		// 사용자 정보
		int user_seq = 0;
		
		user_seq = 1;
		
		int total_price = 0;
		int product_price = 0;
		int product_quantity = 0;
		int product_period = 0;
		int product_size = 0;
		List<CartVO> list = null;
		if(user_seq > 0){
			list = new CartDAO().printCart(user_seq);
			product_size = list.size();
			// System.out.println("seq:" + list.get(0).getCart_seq());
					
		} %>
	
			<%
			UsersVO login_vo = (UsersVO)session.getAttribute("login_vo");
			if(login_vo != null){
				System.out.print("세션굳"+login_vo.getUser_id());				
			}
		%>
	
	
	
	
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">
						Designed by Sombrero
					</div>

					<div class="right-top-bar flex-w h-full">
						<%if(login_vo == null){%>
						<a href="joinPage.jsp" class="flex-c-m trans-04 p-lr-25">
							회원가입
						</a>

						<a href="login.jsp" class="flex-c-m trans-04 p-lr-25">
							로그인
						</a>								
						<% }else{%>
						<span><%=login_vo.getUser_id()%> 님 반갑습니다!</span>		
						<%if(login_vo.getUser_id().equals("admin")){ %>
						<a href="admin.jsp" class="flex-c-m trans-04 p-lr-25">
							관리자페이지
						</a>
						<%}%>
						<a href="contact.jsp" class="flex-c-m trans-04 p-lr-25">
							문의게시판
						</a>

						<a href="mypage.jsp" class="flex-c-m trans-04 p-lr-25">
							내 정보
						</a>

						<a href="LogoutService.do" class="flex-c-m trans-04 p-lr-25">
							로그아웃
						</a>						
						<%}%>
						
						
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="index.jsp" class="logo">
						<img src="images/icons/logo-01.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">

							<li>
								<a href="product.jsp">상품대여</a>
							</li>

							<li class="label1" data-label1="hot">
								<a href="shopping-cart.jsp">장바구니</a>
							</li>

							<li>
								<a href="blog.jsp">희망상품</a>
							</li>


							<li>
								<a href="sale.jsp">상품매매</a>
							</li>
							
							<li class="active-menu">
								<a href="about.jsp">일생일대 소개</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>
						<!-- data-notify : 장바구니 숫자 표시 -->
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="<%=product_size %>">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>

					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="index.jsp"><img src="images/icons/logo-01.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="<%=product_size %>">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>
				
				<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
					<i class="zmdi zmdi-favorite-outline"></i>
				</a>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">
						Free shipping for standard order over $100
					</div>
				</li>

				<li>
					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m p-lr-10 trans-04">
							문의사항 게시판
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							내 정보 보기
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							EN
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							USD
						</a>
					</div>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li>
					<a href="index.jsp">메인페이지</a>
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="product.jsp">Shop</a>
				</li>

				<li>
					<a href="shopping-cart.jsp" class="label1 rs1" data-label1="hot">Features</a>
				</li>

				<li>
					<a href="blog.jsp">Blog</a>
				</li>

				<li>
					<a href="about.jsp">About</a>
				</li>

				<li>
					<a href="contact.jsp">Contact</a>
				</li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
		</div>
	</header>

	<!-- Cart -->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					Your Cart
				</span>

				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>
			
			<div class="header-cart-content flex-w js-pscroll">
			<% if(user_seq == 0){ %>
				<ul class="header-cart-wrapitem w-full">상품을 추가해 주세요.</ul>
			<% } else { %>
				<ul class="header-cart-wrapitem w-full">
					<%for(CartVO a: list) {
						product_price = a.getProduct_price();
						product_quantity = a.getCart_quantity();
						product_period = a.getCart_period();
						total_price += product_price*product_quantity*(product_period/7);
					 %>
					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-01.jpg" alt="IMG">
						</div>
						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								<%=a.getProduct_name() %>
							</a>

							<span class="header-cart-item-info">
								<%=a.getCart_quantity() %> * <%=formatter.format(product_price*(product_period/7)) %>
							</span>
						</div>
					</li>

				</ul>
				<%}} %>
				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40">
						Total: <%=total_price %>
					</div>

					<div class="header-cart-buttons flex-w w-full">
						<a href="shopping-cart.jsp" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							View Cart
						</a>

						<a href="shopping-cart.jsp" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
							Check Out
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>