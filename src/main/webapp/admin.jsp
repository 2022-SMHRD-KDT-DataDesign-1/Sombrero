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
<script>
   /*  function formSubmit()
    {document.getElementById("frm1").submit();} */
</script>

</head>
<body>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<%-- <header>
		<jsp:include page="./common/header.jsp" />
	</header> --%>

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

		<h1>상품 매입 관리</h1>
		<form>
			<table>
				<tr>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
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
				for (int i = 0; i < list.size(); i++) {
					
				%>
					<tr>
						<td><%=list.get(i).getUser_id() %></td>
						<td><%=list.get(i).getUser_name() %></td>
						<td>
							<select name="user_status" class="seStatus">
								<option>입금완료</option>
								<option>대여완료</option>
								<option>반납진행</option>
								<option>반납완료</option>
								<option>후기 남기기</option>
								<option>상태초기화</option>
							</select><input type="hidden" value="" class="status<%= i %>">
							<input type="hidden" class="seq<%=i %>" value="<%= list.get(i).getUser_seq() %>">
						</td>
						<td>
							<button type="button" onclick="changeStatus(<%= i %>)">상태변경</button>
						</td>
					</tr>
					<% }%>
				</tbody>
			</table>
		
	


		<h1>문의 사항 관리</h1>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>작성일자</th>
					<th>작성자</th>
					<th>내용</th>
					<th>답변 여부</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>2023-03-01</td>
					<td>홍길동</td>
					<td>상품 문의입니다.</td>
					<td>미답변</td>
				</tr>
				<!-- 다른 문의 데이터도 추가 -->
			</tbody>
		</table>


		<h1>상품 재고 관리</h1>
		<table>
			<thead>
				<tr>
					<th>상품명</th>
					<th>재고량</th>
					<th>수정</th>
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

		<%-- <footer>
			<jsp:include page="./common/footer.jsp" />
		</footer> --%>

	</div>
	
	
		<script type="text/javascript">
		
		$('.seStatus').change(function(){
			this.nextSibling.value=this.value;
			console.log(this.nextSibling.value);
		});
			
		
		function changeStatus(i){
			var status = $('.status'+i).val();
			var seq = $('.seq'+i).val();
			console.log(i+"/"+status+"/"+seq);
			location.href="UserStatusService.do?status="+status+"&seq="+seq;
		};
		
		</script>

</body>
</html>