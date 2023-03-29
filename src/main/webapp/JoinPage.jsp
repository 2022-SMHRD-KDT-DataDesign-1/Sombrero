<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<!-- ============================================ -->
	<link rel="stylesheet" type="text/css" href="css/JoinPage.css">
	<!-- ============================================ -->
	
	</head>
<body id="JoinPerson" class="ALBA join join--new person"><input type="hidden" id="device" name="device" value="">

<script src="/rsc/js/MemberCommonCLS.js?202302281600"></script>
<script>
		var _commonctrl	= new CommonCtrl("");
		
</script>


<header id="Header">
	<div id="HeaderGnb">
	
		<h1><a href="#"><img src="./images/dlg.png" width=50px hieght=30px alt="dlg"></a></h1>
		<ul>
					<li class="home"><a href="Main.jsp">HOME</a></li>
					<li class="login"><a href="Login.jsp">�α���</a></li>
		</ul>
	</div>
</header>
<hr>
<!-- Section -->
<section id="Section" class="oldApp">
	<form id="frmReg" name="frmReg" method="post" action="JoinService.do">

		<article id="Contents" class="joinPerson memberJoin">
			<h1 class="sign__title">ȸ������</h1>
			

			<!-- ���̵� �Է�â -->
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" minlength="8" id="userid" name="user_id" class="has-label" value="" maxlength="15" autocomplete="">
						<label for="userid">���̵� (8~15�� ����,����)</label>
	
						
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>
	<!-- ��й�ȣ �Է�â -->
			<section class="sign-section passwd">
				<ul class="input-box-wrap">
					<li class="input-box">
						<input type="password" id="passwd" name="user_pw" minlength="8" class="has-label" value="" autocomplete="new-password" value={password} onChange={onChangePassword} >
						<label for="passwd">��й�ȣ<span>8-15���� ����/���� �Ǵ� Ư������ ����</span></label>
						{password  && (<span>{passwordMessage}</span>)}
						<button type="button" id="changePasswdType" class="password-view-btn" onclick="">ǥ��</button>
					</li>
					
					
					<li class="input-box">
			
						<input type="password" id="passwd2" name="passwd2" class="has-label" value="" minlength="8" maxlength="16"  value={passwordConfirm} onChange={onChangePasswordConfirm}>
						<label for="passwd2">��й�ȣ ���Է�</label>
						{passwordConfirm ? (password === passwordConfirm ? <span>����</span> : <span>�ٸ�</span>) : null}
					</li>
				</ul>
				<div class="valid-text">
					<p id="msg_passwd" class="msg"></p>
					<p id="msg_passwd2" class="msg"></p>
				</div>
			</section>
	<!-- �̸� �Է�â o-->
			<section class="sign-section name">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="usernm" class="has-label" name="user_name" maxlength="20" value="">
						<label for="usernm">�̸�</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_usernm" class="msg"></p>
				</div>
			</section>
	<!-- nick���� �Է�â o-->
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						
						<input type="text" id="email" class="has-label" name="user_nick" value="" maxlength="50" autocomplete="off">
						<label for="email">�г���</label>
					</div>
				</div>
				
			</section>
			<!-- �ּ� �Է�â -->
			<section class="sign-section address">
				<ul class="input-box-wrap">
					<li class="input-box">
						<input type="text" id="address" name="user_address" class="has-label" value="" autocomplete="new-password" required="">
						<label for="address">�ּ�</label>
						<span><button type="button" id="changePasswdType" class="password-view-btn"  class="box-in-button"
						 onclick="showPopup()" >�˻�</a></button></span>
						
					</li>
				</ul>
			
			</section>
	<!-- �޴�����ȣ �Է�â o-->
			<section class="sign-section">
				<ul class="input-box-wrap">
					<li class="input-box">
						<input type="tel" id="htel" class="has-label" name="user_phone" value="" maxlength="11">
						<label for="htel">�޴��� <span>('-' ���� �Է��ϼ���.)</span></label>
						
			</section>

			<div class="btnAction">
				<a href="JoinSuccess.jsp" class="btn btnType1 submit" onclick="">�����ϱ� <%System.out.print("���ԿϷ�"); %></a>
			</div>
			
		</article>
	</form>

</section>
<script >
function showPopup() { window.open("jusoPopup.jsp", "a", "width=500, height=500, left=100, top=50"); 
close();}
	
</script>

</body>

</html>
