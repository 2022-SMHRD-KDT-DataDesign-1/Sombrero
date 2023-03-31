<%@page import="com.som.model.ProductDAO"%>
<%@page import="com.som.model.ProductVO"%>
<%@page import="com.som.model.SaleVO"%>
<%@page import="com.som.model.SaleDAO"%>
<%@page import="com.som.model.InquiryVO"%>
<%@page import="com.som.model.inquiryDAO"%>
<%@page import="com.som.model.UsersVO"%>
<%@page import="java.util.List"%>
<%@page import="com.som.model.UsersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin</title>
	<link rel="stylesheet" type="text/css" href="css/admin.css">
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

<!-- 관리자 페이지 -->
	<div align="center">
		<%
		UsersDAO dao = new UsersDAO();
		List<UsersVO> list = dao.selectAllUsers();
		/* System.out.print(list.size()); */
		%>

		<a href="index.jsp"><h1>To.이 페이지를 보는 사람에게...</h1></a>
		<h4>이 페이지를 보면 어지러운 사람은 당장 이 페이지를 이쁘게 만들어주세요 당신의 작은 노력이 이 페이지를 이쁘게 만듭니다.</h4>
		<br><br><br><br><br><br>
		<!-- 전체 사용자 출력 -->
		<h1>전체 사용자 출력</h1>
		<table class="rwd-table">
			<thead>
				<tr>
					<th>NO.</th>
					<th>ID</th>
					<th>이름</th>
					<th>닉네임</th>
					<th>가입일자</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (UsersVO m : list) {
				%>
				<tr>
					<td><%=m.getUser_seq()%></td>
					<td><%=m.getUser_id()%></td>
					<td><%=m.getUser_name()%></td>
					<td><%=m.getUser_nick()%></td>
					<td><%=m.getUser_date()%></td>
					<td><a href="DeleteService.do?user_id=<%=m.getUser_id()%>">삭제</a></td>
				</tr>

				<%
				}
				%>
			</tbody>
		</table>

</div>


		<!-- 상품 매입 관리 -->
<div align="center">

		<% SaleDAO Saledao = new SaleDAO() ;
		List<SaleVO> SaleList = Saledao.selectAllSale();%>
		
		
		<h1>상품 매입 관리</h1>
		<form>
			<table class="rwd-table">
				<tr>
					<th>No.</th>
					<th>등록인</th>
					<th>상품명</th>
					<th>매입 희망가</th>
					<th>등록일</th>
					<th>반품희망여부</th>
					<th>선택</th>
					<th>비고</th>
				</tr>
				<%
				for (int i = 0; i<SaleList.size(); i++) {
					if(SaleList.get(i).getSale_return() == null){
				%>
				<tr>
					<td><%=SaleList.get(i).getCate_seq()%></td>
					<td><%=SaleList.get(i).getUser_id()%></td>
					<td><a href="buyDetail.jsp?sale_seq=<%=SaleList.get(i).getSale_seq()%>"><%=SaleList.get(i).getSale_name()%></a></td>
					<td><%=SaleList.get(i).getSale_price()%></td>
					<td><%=SaleList.get(i).getSale_date()%></td>
					<td><%=SaleList.get(i).getSale_check()%></td>
					<td><select name="sale_return" class="sale_return">
							<option>선택</option>
							<option>매입</option>
							<option>반품</option>
							<option>폐기</option>
					</select><input type="hidden" value="" class="saleStatus<%=i%>"> <input
						type="hidden" class="sale_seq<%=i%>"
						value="<%=SaleList.get(i).getSale_seq()%>"></td>
					<td>
						<button type="button" onclick="checksale(<%=i%>)">상태변경</button>
					</td>
				</tr>

				<%} }%>

			</table>
		</form>
</div>

<!-- 상품 반납 관리 -->


<!-- 사용자 상태 관리 -->

<div align="center">
		<h1>사용자 상태 관리</h1>
		<table class="rwd-table">
			<thead>
				<tr>
					<th>ID</th>
					<th>이름</th>
					<th>상태</th>
					<th>수정</th>
				</tr>
			</thead>
			<tbody>

				<%
				for(int i = 0; i < list.size(); i++) {
				%>
				<tr>
					<td><%=list.get(i).getUser_id()%></td>
					<td><%=list.get(i).getUser_name()%></td>
					<td><select name="user_status" class="setStatus">
							<option>입금완료</option>
							<option>대여완료</option>
							<option>반납진행</option>
							<option>반납완료</option>
							<option>후기 남기기</option>
							<option>상태초기화</option>
					</select><input type="hidden" value="" class="status<%=i%>"> <input
						type="hidden" class="seq<%=i%>"
						value="<%=list.get(i).getUser_seq()%>"></td>
					<td>
						<button type="button" onclick="changeStatus(<%=i%>)">상태변경</button>
					</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
</div>

		<!-- 문의사항 관리 기능 -->
	<div align="center">
		<%
		inquiryDAO Inquirydao = new inquiryDAO();
		List<InquiryVO> Inquirylist = Inquirydao.showInquiry();
		%>

		<h1>문의 사항 관리</h1>
		<table class="rwd-table">
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>작성일자</th>
					<th>답변 여부</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
				<%
				String ansConfirm = "";
				for (InquiryVO m : Inquirylist) {
				%>
				<tr>
					<td><%=m.getInquiry_seq()%></td>
					<td><%=m.getUser_nick()%></td>
					<td><%=m.getInquiry_content()%></td>
					<td><%=m.getInquiry_date()%></td>
					<td><%= ansConfirm %></td>
					<td><button href='inquiryAnswer.jsp'>답변달기</button>
					문의사항 인스타DM부탁드리실게요 🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏
					</td>
					<!-- 답변페이지 만드시는분에게 이 영광을 돌립니다! 
						그게 나였고 ㅎ.... 인생 하....
					 -->

				</tr>
				<%
				}
				%>

			</tbody>
		</table>
</div>
	<div align="center">
		<h1>상품 재고 관리</h1>
		
		<%ProductVO pvo = new ProductVO();
		  ProductDAO pdao = new ProductDAO();
		  List<ProductVO> productList = pdao.adminShowProduct(); 
		%>
		<table class="rwd-table" id="exampleTable">
			<thead>
				<tr>
					<th>카테고리</th>
					<th>상품명</th>
					<th>보유수량</th>
					<th>대여수량</th>
					<th>총재고</th>
				</tr>
			</thead>
			<tbody>
	<%
				for (ProductVO m : productList) {
				%>
				<tr>
					<td><%=m.getCate_depth1()%></td>
					<td><%=m.getProduct_name()%></td>
					<td><%=m.getProduct_rest()%></td>
					<td><%=m.getProduct_rent()%></td>
					<td><%=m.getProduct_have() %></td>
					</tr>
					<%} %>


			</tbody>
		</table>
		</div>

	


	<script type="text/javascript">
	
		function checksale(i){
			var sale_return = $('.saleStatus'+i).val();
			var sale_seq = $('.sale_seq'+i).val();
			console.log(i+"/"+sale_return+"/"+sale_seq);
			location.href="SaleStatusService.do?sale_return="+sale_return+"&sale_seq="+sale_seq;
		};
		
		$('.sale_return').change(function(){
			this.nextSibling.value=this.value;
			console.log(this.nextSibling.value);
		});
			
		function changeStatus(i){
			var status = $('.status'+i).val();
			var seq = $('.seq'+i).val();
			console.log(i+"/"+status+"/"+seq);
			location.href="UserStatusService.do?status="+status+"&seq="+seq;
		};
		
		$('.setStatus').change(function(){
			this.nextSibling.value=this.value;
			console.log(this.nextSibling.value);
		});

		
		</script>

</body>
</html>