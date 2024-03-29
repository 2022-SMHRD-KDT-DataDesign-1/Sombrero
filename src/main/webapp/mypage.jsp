<%@page import="com.som.model.UsersDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.som.model.ProductVO"%>
<%@page import="com.som.model.ProductDAO"%>
<%@page import="java.util.Random"%>
<%@page import="com.som.model.UsersVO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.som.model.mypageVO"%>
<%@page import="java.util.List"%>
<%@page import="com.som.model.mypageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
<link rel="stylesheet" type="text/css" href="css/mypage.css">
</head>
<body>
	<header>
		<jsp:include page="./common/header.jsp" />
	</header>

	<%
	// 세션 값 가져오기
	UsersVO login_vo = (UsersVO)session.getAttribute("login_vo");
	int user_seq = login_vo.getUser_seq();
	
	// 상태 가져오기
	mypageDAO m_dao = new mypageDAO();
	String user_status = m_dao.showUserStatus(user_seq);
	// String user_status = login_vo.getUser_status();
	%>

	<div id="mypageDiv">

		<div id="menuDiv">
			<div id="head_mypage">
				<h1>마이페이지</h1>
			</div>
			
			<div style="height:150px;">
			</div>
			<div id="menuDiv2">
			<ul>
				<li class="mypage_menu"><a id="select" href="#">주문/배송 조회</a></li>
				<li class="mypage_menu"><a id="review_menu" href="#">상품 리뷰</a></li>
				<li class="mypage_menu"><a id="friend" href="#">친구 추천하고 혜택 받기</a></li>
				<li class="mypage_menu"><a id="coupon_menu" href="#">쿠폰</a></li>
				<li class="mypage_menu"><a id="coin_menu" href="#">적립금</a></li>
				<li class="mypage_menu"><a id="story" href="#">일생일대 이야기</a></li>
				<li class="mypage_menu"><a id="inquery" href="#">고객센터</a></li>
				<li class="mypage_menu"><a id="big" href="#">제휴/대량구매 문의</a></li>
				<li class="mypage_menu"><a id="update" href="#">회원정보수정</a></li>
				<li class="mypage_menu"><a id="logout_menu" href="#">로그아웃</a></li>
			</ul>
			</div>
		</div>
	<div id="rightDiv">
		<ul>
			<li id="userLi">
				<div id="userDiv">
					<div id="hiUser">
						<div id="writeUser">
							<span id="hiSpan">안녕하세요, <strong><%=login_vo.getUser_name()%></strong>님<br>오늘도
								현명한 하루 되세요!
							</span>
						</div>
					</div>
					<div id="coin_coupon">
						<div id="coin">
							<a href="#"><span class="title">적립금 ></span><br><br><br><br><span class="data">0</span></a>
						</div>
						<div id="coupon">
							<a href="#"><span class="title">쿠폰 ></span><br><br><br><br><span class="data">0</span></a>
						</div>
					</div>
				</div>
			</li>


			<!-- 회원 상태 시작 -->
			<li id="statusLi">
				<div id="hidden"><%=user_status%></div>
				<h3 class="my_tit">주문 배송 상태</h3>
				<div id="statusDiv">
					<div class="circle" id="deposit">
						<span id="d_span">입금완료</span>
					</div>
					<div class="circle" id="rental">
						<span id="r_span">대여완료</span>
					</div>
					<div class="circle" id="ing">
						<span id="i_span">반납진행</span>
					</div>
					<div class="circle" id="return">
						<span id="n_span">반납완료</span>
					</div>
					<div class="circle" id="review">
						<span id="v_span">후기 남기기</span>
					</div>
					<!-- 회원 상태 끝  -->
				</div>
			</li>
			<!--  -->
			<!-- 주문 내역 시작  -->
			<li id="orderLi">
				<div id="orderDiv">
					<%
					SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); // 날짜 포매팅
					DecimalFormat formatter = new DecimalFormat("###,###"); // 가격 포매팅

					mypageDAO page_dao = new mypageDAO();
					List<mypageVO> orderList = page_dao.showOrderList(user_seq);
					%>


					<h3 class="my_tit">주문 내역</h3>
					<!---->
					<table id="orderTable">
						<tr id="orderTh">
							<th class="date">주문일</th>
							<th class="orderProduct">주문내역</th>
							<th class="orderP">대여 기간</th>
							<th class="orderPrice">결제금액</th>
							<th class="returnDate">반납기한</th>
						</tr>
						<%
						for (mypageVO m : orderList) {
						%>
						<tr class="orderTr">
							<td class="date"><%=simpleDateFormat.format(m.getOrder_date())%></td>
							<td class="orderProduct">
								<%
								String[] photo_path = m.getPhoto_path().split(";");
								%> <img
								src=<%=photo_path[0]%>> <%=m.getProduct_name()%> * <%=m.getRental_quantity()%>개

							</td>
							<td class="orderP"><%=m.getRental_period()%>일</td>
							<td class="orderPrice"><%=formatter.format(m.getRental_payment())%>원</td>
							<td class="returnDate"><%=simpleDateFormat.format(m.getReturn_date())%></td>
							<!-- <td class="return"><a><button id="returnBtn">반납하기</button></a></td> -->
						</tr>
						<%} %>
					</table>


				</div>
			</li>
			<!-- 주문 내역 끝 -->
		
		<!-- 추천 영역 시작 -->
		<%
			ProductDAO p_dao = new ProductDAO();
			List<ProductVO> productList = p_dao.showProduct();
			Random rd = new Random();
			int[] r_list = new int[4];
			
			for(int i = 0; i<4; i++){
				r_list[i] = rd.nextInt(productList.size());
				
				for(int k = 0; k<i; k++){
					if(r_list[i] == r_list[k]){
						i--;
					}
				}
			}
		
			
		%>
		<li id="recommendLi">
		<div id="recommendDiv">
			<h3 class="my_tit"><%=login_vo.getUser_name() %>님을 위한 추천 상품</h3>
				<div id="recommendDiv2">
					<div id="recommendItem">
						<div id="r_item1" class="recommendItems"><img src=<%=productList.get(r_list[0]).getPhoto_path().split(";")[0] %>></div>
						<div id="r_item2" class="recommendItems"><img src=<%=productList.get(r_list[1]).getPhoto_path().split(";")[0] %>></div>
						<div id="r_item3" class="recommendItems"><img src=<%=productList.get(r_list[2]).getPhoto_path().split(";")[0] %>></div>
						<div id="r_item4" class="recommendItems"><img src=<%=productList.get(r_list[3]).getPhoto_path().split(";")[0] %>></div>
					</div>
					<div style="height: 300px"></div>
					<div id="recommendText">
						<div class="r_textC"><span class="r_title"><%=productList.get(r_list[0]).getProduct_name() %></span><br><span class="r_price"><%=formatter.format(productList.get(r_list[0]).getProduct_price()) %>원</span></div>
						<div class="r_textC"><span class="r_title"><%=productList.get(r_list[1]).getProduct_name() %></span><br><span class="r_price"><%=formatter.format(productList.get(r_list[1]).getProduct_price()) %>원</span></div>
						<div class="r_textC"><span class="r_title"><%=productList.get(r_list[2]).getProduct_name() %></span><br><span class="r_price"><%=formatter.format(productList.get(r_list[2]).getProduct_price()) %>원</span></div>
						<div class="r_textC"><span class="r_title"><%=productList.get(r_list[3]).getProduct_name() %></span><br><span class="r_price"><%=formatter.format(productList.get(r_list[3]).getProduct_price()) %>원</span></div>
					</div>
				</div>
		</div>
		</li>
		<!-- 추천 영역 끝 -->
		
		<!-- 오른쪽 영역 끝  -->
		</ul>
		</div>

	</div>



	<header>
		<jsp:include page="./common/footer.jsp" />
	</header>

	<script src="./js/mypage.js" type="text/javascript"></script>
</body>
</html>