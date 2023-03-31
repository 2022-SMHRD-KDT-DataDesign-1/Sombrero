<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>returnPopup</title>
</head>
<body>
	<div id="returnPopup">
		<div id="formDiv">
		<form id="returnForm" method="post" action="returnService.do">
			<table>
				<tr>
					<th>사용자 순번</th>
					<td><input id="in_user_seq" type="text" name="user_seq" readonly></td>
				</tr>
				<tr>
					<th>대여 순번</th>
					<td><input id="in_rental_seq" type="text" name="rental_seq" readonly></td>
				</tr>
				<tr>
					<th>반납 수량</th>
					<td><input type="text" name="return_quantity" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>
				</tr>
				<tr>
					<th>반납일</th>
					<td><input type="date" name="return_date"></td>
				</tr>
				<tr>
					<th>특이사항</th>
					<td><textarea name="return_others" cols="30" rows="5"></textarea></td>
				</tr>
				<tr>
					<td><input type="submit" value="반납 처리 완료"></td>
					<td><button onclick="pclose();">닫기</button></td>
				</tr>
			
			</table>
		</form>
		</div>
	</div>
	
	<script src="./js/returnPopup.js" type="text/javascript"></script>
</body>
</html>