<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>회원가입완료</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
	</head>
	<style>
	
	
	
	  body{
	  		background-color: lightyellow;
	  }
	 
	 #Update li{
	    list-style:none;
	 }
		
		#btn{
			background-color: whight;
			
			text-color: whight;
		}
	
		#Update > ul.actions {
			margin-top:10%;
		}
		
	</style>
	<body style="text-align: center;">
	<%
	
		String user_name = request.getParameter("user_name");
	 	String user_id = request.getParameter("user_id");
	
	%>
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h1>환영합니다!</h1></li><br>
							<li>회원가입을 축하합니다.</li><br>
							<!--  회원가입 한 회원 아이디를 출력-->
							<li><h2>${user_name}ddd</h2>님의 아이디는<h2>${user_id}</h2> 입니다.</li>
							<li><button id="btn" onclick='location.href="Login.jsp"'>로그인하기 </button>
							</li>
							
						</ul>
					</nav>			
			</div>

	</body>
</html>