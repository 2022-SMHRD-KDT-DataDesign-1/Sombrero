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
	// 세션으로 바꿀 것
	int user_seq = 1;
	String user_status = "입금완료";
	%>

	<div id="mypageDiv">


		<div id="menuDiv">
			<ul>
				<li>주문/배송 조회</li>
				<li>친구 추천하고 혜택 받기</li>
				<li>쿠폰</li>
				<li>적립금</li>
				<li>일생일대 이야기</li>
				<li>고객센터</li>
				<li>제휴/대량구매 문의</li>
				<li>회원정보수정</li>
				<li>로그아웃</li>
			</ul>
		</div>
	<div id="rightDiv">
		<ul>
			<li id="userLi">
				<div id="userDiv">
					<div id="hiUser">
						<div id="writeUser">
							<span id="hiSpan">안녕하세요, <strong><%=user_seq%></strong>님!<br>오늘도
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
		</ul>
		</div>

	</div>



	<header>
		<jsp:include page="./common/footer.jsp" />
	</header>

	<script src="./js/mypage.js" type="text/javascript"></script>
</body>
</html>