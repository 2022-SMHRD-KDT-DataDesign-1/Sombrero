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
		String user_status = "대여완료";
	%>

	<div id="mypageDiv">


		<div id="menuDiv">
			<ul>
				<li>내 정보 수정</li>
				<li>주문 조회</li>
				<li>판매 내역</li>
				<li>어쩌고 저쩌고</li>
			</ul>
		</div>

		
		<ul>
		<li id="userLi">
		
		<div id="hidden"><%= user_status %></div>
		<div id="userDiv">
		<!-- 회원 상태 시작 -->
			<div class="circle" id="deposit"><span id="d_span">입금완료</span></div>
			<div class="circle" id="rental"><span id="r_span">대여완료</span></div>
			<div class="circle" id="ing"><span id="i_span">반납진행</span></div>
			<div class="circle" id="return"><span id="n_span">반납완료</span></div>
			<div class="circle" id="review"><span id="v_span">후기 남기기</span></div>
		<!-- 회원 상태 끝  -->
		</div>
	</li>

	<li id="orderLi">
        <!--  -->
		<div id="orderDiv">
		<!-- 주문 내역 시작  -->
		<%
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); // 날짜 포매팅
		DecimalFormat formatter = new DecimalFormat("###,###"); // 가격 포매팅
		
		
			mypageDAO page_dao = new mypageDAO();
			List<mypageVO> orderList = page_dao.showOrderList(user_seq);
		%>
		
		
	<h3 class="my_tit">주문 배송 조회</h3>
	<!---->
		<table id="orderTable">
			<tr id="orderTh"><th class="date">주문일</th><th class="orderProduct">주문내역</th><th class="orderP">대여 기간</th><th class="orderPrice">결제금액</th><th class="returnDate">반납기한</th></tr>
			<%for(mypageVO m: orderList){ %>
			<tr class="orderTr">
				<td class="date"><%=simpleDateFormat.format(m.getOrder_date()) %></td>
				<td class="orderProduct">
				<% String[] photo_path = m.getPhoto_path().split(";"); %>
			<img src=<%=photo_path[0]%>>
				<%=m.getProduct_name() %> * <%=m.getRental_quantity() %>개

				</td>
				<td class="orderP"><%=m.getRental_period() %>일</td>
				<td class="orderPrice"><%=formatter.format(m.getRental_payment()) %>원</td>
				<td class="returnDate"><%=simpleDateFormat.format(m.getReturn_date()) %></td>
				<!-- <td class="return"><a><button id="returnBtn">반납하기</button></a></td> -->
			</tr>
			<%} %>
		</table>
		
		
		<!-- 주문 내역 끝 -->
		</div>
</li>
</ul>

	</div>



	<header>
		<jsp:include page="./common/footer.jsp" />
	</header>
	
	<script src="./js/mypage.js" type="text/javascript"></script>
</body>
</html>