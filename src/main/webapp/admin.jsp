<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <header>
        <jsp:include page="./common/header.jsp"/>
    </header>

<div align="center">

	<h1>전체 사용자 출력</h1>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>이름</th>
				<th>닉네임</th>
				<th>가입일자</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>홍길동</td>
				<td>홍개똥</td>
				<td>2023-01-01</td>
			</tr>
			<tr>
				<td>2</td>
				<td>김철수</td>
				<td>김개똥</td>
				<td>2023-02-01</td>
			</tr>
			<!-- 다른 사용자 데이터도 추가 -->
		</tbody>
	</table>

	<h1>상품 매입 관리</h1>
	<form>
		<label for="product-name">상품명</label>
		<input type="text" id="product-name" name="product-name"><br>
		<label for="purchase-price">매입가격</label>
		<input type="number" id="purchase-price" name="purchase-price"><br>
		<label for="purchase-date">매입일자</label>
		<input type="date" id="purchase-date" name="purchase-date"><br>
		<button type="submit">등록</button>
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
			<tr>
				<td>1</td>
				<td>홍길동</td>
				<td>
					<select name="user-status">
						<option value="normal">입금대기</option>
						<option value="normal">발송준비</option>
						<option value="normal">대여완료</option>
						<option value="normal">반납진행</option>
						<option value="normal">반납완료</option>
						<option value="normal">후기 남기기</option>
					</select>
				</td>
				<td>
					<button>저장</button>
				</td>
			</tr>
			<!-- 다른 사용자 데이터도 추가 -->
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
					<form>
						<label for="productA-stock">재고량</label>
						<input type="number" id="productA-stock" name="productA-stock">
						<button type="submit">저장</button>
					</form>
				</td>
			</tr>
			<!-- 다른 상품 데이터도 추가 -->
		</tbody>
	</table>

	    <footer>
        <jsp:include page="./common/footer.jsp"/>
    </footer>

</div>

</body>
</html>