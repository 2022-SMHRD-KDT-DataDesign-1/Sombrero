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
		font-family: Arial, "Apple SD Gothic Neo", "Noto Sans Regular", "���� ���",
			"malgun gothic", "����", "dotum", sans-serif;
		color: #000;
		color: var(- -font-color-base);
		background: #fff;
	}
}
</style>

</head>
<body>
	<%
	/* �α��ν� �����ߴ� sessionId �������� �α��� ���� ���¸� sessionId==null */
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
				<span>���� ��ġ</span>
				<ol>
					<li><a href="#">Ȩ</a></li>
					<li title="���� ��ġ"><strong>�α���</strong></li>
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

						<!-- ȸ���α��� â -->

						<label class="id ePlaceholder" title="���̵�"><input
							id="member_id" name="user_id" fw-filter="isFill" fw-label="���̵�"
							fw-msg="" class="inputTypeText" placeholder="���̵�" value=""
							type="text"></label>
						 <label class="password ePlaceholder"
							title="��й�ȣ"><input id="member_passwd" name="user_pw"
							fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="�н�����"
							fw-msg="" autocomplete="off" value="" type="password"
							placeholder="��й�ȣ"></label>
				</div>
				<div class="wrap_security">
					<p class="login__security">
						<span class="secret"></span> <input type="checkbox"
							id="secur_check" value="1" name="chk"> <label
							for="secur_check" style="cursor: pointer">���̵�����</label>
					</p>
				</div>
				<!-- �α��� button -->
				<div class="login__button">

					<a href="#none" class="btnSubmit gFull sizeL"
						onclick="	<%out.print("�α����ϱ�"); %>">�α���</a>


				</div>
				<div class="wrap_find">
					<div>
						<a href="IdSearch.jsp">���̵� ã��</a>
					</div>
					<div>
						<a href="Idsearch.jsp">��й�ȣ ã��</a>
					</div>
				</div>
				<div class="login__util">
					<div>���� ȸ���� �ƴϽŰ���?</div>
					<div>
						<br>
					</div>
					<div>
						<a href="JoinPage.jsp">ȸ������ <%System.out.print("ȸ�������ϱ�"); %></a>
						
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


