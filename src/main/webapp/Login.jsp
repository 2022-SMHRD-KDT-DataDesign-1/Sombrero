<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="com.smhrd.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="css/Login.css">
<!-- ============================================ -->
<title>Insert title here</title>

<style>
@media all and (max-width:1024px) {
	body.expand {
		position: relative;
		height: 100%;
		min-height: 100%;
		overflow: hidden !important;
		touch-action: none;
	}
	html {
		width: 100%;
		height: 100%
	}
	body, code {;
		font-size: 13px;
		font-family: Arial, "Apple SD Gothic Neo", "Noto Sans Regular", "맑은 고딕",
			"malgun gothic", "돋움", "dotum", sans-serif;
		color: #000;
		color: var(- -font-color-base);
		background: #fff;
	}
}
</style>

</head>
<body>
	<%
	/* 로그인시 저장했던 sessionId 가져오기 로그인 안한 상태면 sessionId==null */
			String sessionId = (String)session.getAttribute("sessionId");
			//int cnt = integer.parseInt.request.getAttribute(chk);
	%>


	<div id="container" data-ez="layout-07kd47h-1">
		<div id="contents" style="margin-top: 220px;">
			<span class="xans-element- xans-layout xans-layout-mobileaction RTMB "><a
				href="#" onclick=""><svg xmlns="http://www.w3.org/2000/svg"
						width="24" height="24" fill="none" viewBox="0 0 24 24"
						class="icon">
			<path d="M7.29976 12.5L14.9998 20.1C15.3998 20.5 15.9998 20.5 16.3998 20.1C16.7998 19.7 16.7998 19.1 16.3998 18.7L9.49976 11.7L16.3998 4.7C16.7998 4.3 16.7998 3.7 16.3998 3.3C16.1998 3.1 15.9998 3 15.6998 3C15.3998 3 15.1998 3.1 14.9998 3.3L7.29976 10.9C6.89976 11.4 6.89976 12 7.29976 12.5C7.29976 12.4 7.29976 12.4 7.29976 12.5Z"
							fill="#000000"></path></svg></span>

			<div class="section path" data-ez="module-1bjl8yt-1"
				data-ez-module="user-defined/1" data-ez-name="USER DEFINED"
				data-ez-type="plain">
				<span>현재 위치</span>
				<ol>
					<li><a href="#">홈</a></li>
					<li title="현재 위치"><strong>로그인</strong></li>
				</ol>
			</div>
			<div class="section titleArea" data-ez="module-09joffl-1"
				data-ez-module="user-defined/1" data-ez-name="USER DEFINED"
				data-ez-type="plain">

				<h1>
					<a href="#"><img src="./images/dlg.png" alt="dlg" width=400px></a>
				</h1>

			</div>
			<form id="member_form_1299176978" name=""
				action="LoginService.do" method="post" target="_self"
				enctype="multipart/form-data">
				<input id="returnUrl" name="returnUrl" value="" type="hidden">
				<input id="forbidIpUrl" name="forbidIpUrl" value="/index.html"
					type="hidden"> <input id="certificationUrl"
					name="certificationUrl" value="/intro/adult_certification.html"
					type="hidden"> <input id="sIsSnsCheckid"
					name="sIsSnsCheckid" value="" type="hidden"> <input
					id="sProvider" name="sProvider" value="" type="hidden">
				<div id="member_login_module_id" data-ez="contents-1wpl39u-1"
					class="xans-element- xans-member xans-member-login ">
					<fieldset class="form">

						<!-- 회원로그인 창 -->

						<label class="id ePlaceholder" title="아이디"><input
							id="member_id" name="user_id" fw-filter="isFill" fw-label="아이디"
							fw-msg="" class="inputTypeText" placeholder="아이디" value=""
							type="text"></label>
						 <label class="password ePlaceholder"
							title="비밀번호"><input id="member_passwd" name="user_pw"
							fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드"
							fw-msg="" autocomplete="off" value="" type="password"
							placeholder="비밀번호"></label>
				</div>
				<div class="wrap_security">
					<p class="login__security">
						<span class="secret"></span> <input type="checkbox"
							id="secur_check" value="1" name="chk"> <label
							for="secur_check" style="cursor: pointer">아이디저장</label>
					</p>
				</div>
				<!-- 로그인 button -->
				<div class="login__button">

					<a href="#none" class="btnSubmit gFull sizeL"
						onclick="	<%out.print("로그인하기"); %>">로그인</a>


				</div>
				<div class="wrap_find">
					<div>
						<a href="IdSearch.jsp">아이디 찾기</a>
					</div>
					<div>
						<a href="Idsearch.jsp">비밀번호 찾기</a>
					</div>
				</div>
				<div class="login__util">
					<div>아직 회원이 아니신가요?</div>
					<div>
						<br>
					</div>
					<div>
						<a href="JoinPage.jsp">회원가입 <%System.out.print("회원가입하기"); %></a>
						
					</div>
				</div>

				</fieldset>
		</div>
		</form>
	</div>
	</div>
</body>
</html>

<!-- ============================================ -->
<script src="js/JoinFunction.js"></script>


