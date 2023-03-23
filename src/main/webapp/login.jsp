<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="shortcut icon" href="#">
	<script src="http://code.jquery.com/jquery-3.1.0.js"></script>
	<link rel="stylesheet" type="text/css" href="./common/common.css">
</head>
<body>
	
    <header>
        <jsp:include page="./common/header.jsp"/>
    </header>
	
	<div id="wrapper">
	<form action="MessageService.do" method="post">
		<div class="field half first">
			<label for="name">Name</label>
			<input type="text"  id="name" placeholder="보내는 사람 이름" name="sender"/>
		</div>
		<div class="field half">
			<label for="email">Email</label>
			<input type="text"  id="email" placeholder="받는 사람 이메일" name="recipient"/>
		</div>

		<div class="field">
			<label for="message">Message</label>
			<textarea  id="message" rows="6" name="message"></textarea>
		</div>
		<ul class="actions">
			<li><input type="submit" value="Send Message" class="special" /></li>
			<li><input type="reset" value="Clear" /></li>
		</ul>
	
	</form>
   
   
   
    </div>
   
   
   
    <footer>
        <jsp:include page="./common/footer.jsp"/>
    </footer>
    <script src="./assets/js/loginJS.js" type="text/javascript"></script>
</body>
</html>