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

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<header>
		<jsp:include page="./common/header.jsp" />
	</header>

	<div align="center">
		<%
		UsersDAO dao = new UsersDAO();
		List<UsersVO> list = dao.selectAllUsers();
		/* System.out.print(list.size()); */
		%>

		<h1>전체 사용자 출력</h1>
		<table>
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


		<% SaleDAO Saledao = new SaleDAO(); 
		List<SaleVO> SaleList = Saledao.selectAllSale();%>
		<h1>상품 매입 관리</h1>
		<form>
			<table>
				<tr>
					<th>No.</th>
					<th>등록인</th>
					<th>상품명</th>
					<th>매입 희망가</th>
					<th>등록일</th>
					<th>반품희망여부</th>
				</tr>
				<%
				for (int i = 0; i<SaleList.size(); i++) {
				%>
				<tr>
					<td><%=SaleList.get(i).getCate_seq()%></td>
					<td><%=SaleList.get(i).getUser_seq()%></td>
					<td><a><%=SaleList.get(i).getSale_name()%></a></td>
					<td><%=SaleList.get(i).getSale_price()%></td>
					<td><%=SaleList.get(i).getSale_date()%></td>
					<td><%=SaleList.get(i).getSale_check()%></td>
					<td><select name="sale_Check" class="sale_check">
							<option>매입</option>
							<option>반품</option>
							<option>폐기</option>
					</select><input type="hidden" value="" class="saleStatus<%=i%>"> <input
						type="hidden" class="s_user_seq<%=i%>"
						value="<%=SaleList.get(i).getUser_seq()%>"></td>
					<td>
						<button type="button" onclick="changecheck(<%=i%>)">상태변경</button> 
					</td>
				</tr>

				<% }%>

			</table>
		</form>



		<h1>사용자 상태 관리</h1>
		<table>
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


		<!-- 문의사항 관리 기능 -->

		<%
		inquiryDAO Inquirydao = new inquiryDAO();
		List<InquiryVO> Inquirylist = Inquirydao.showInquiry();
		%>

		<h1>문의 사항 관리</h1>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>작성일자</th>
					<th>답변 여부</th>
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
					<td><button href='inquiryAnswer.jsp'>답변달기</button></td>
					<!-- 답변페이지 만드시는분에게 이 영광을 돌립니다! -->

				</tr>
				<%
				}
				%>

			</tbody>
		</table>


		<h1>상품 재고 관리</h1>
		<table>
			<thead>
				<tr>
					<th>상품명</th>
					<th>재고량</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>상품A</td>
					<td>100</td>
					<td>
						<!-- <form>
							<label for="productA-stock">재고량</label> <input type="number"
								id="productA-stock" name="productA-stock">
							<button type="submit">저장</button>
						</form> -->
					</td>
				</tr>
				<!-- 다른 상품 데이터도 추가 -->
			</tbody>
		</table>

		<footer>
			<jsp:include page="./common/footer.jsp" />
		</footer>

	</div>

	<script type="text/javascript">
	
		function checksale(i){
			var sale_check = $('.saleStatus'+i).val();
			var s_user_seq = $('.s_user_seq'+i).val();
			console.log(i+"/"+sale_check+"/"+s_user_seq);
			location.href=""+sale_chek+"&s_user_seq="+s_user_seq;
		};
		
		$('.sale_check').checksale(function(){
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