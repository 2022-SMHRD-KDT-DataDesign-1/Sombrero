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
   
	    <div class="slider">
		    <input type="radio" name="slide" id="slide1" checked>
		    <input type="radio" name="slide" id="slide2">
		    <input type="radio" name="slide" id="slide3">
		    <input type="radio" name="slide" id="slide4">
		    <ul id="imgholder" class="imgs">
		        <li><img src="./assets/img/slide1.jpg"></li>
		        <li><img src="./assets/img/slide2.jpg"></li>
		        <li><img src="./assets/img/slide3.jpg"></li>
		        <li><img src="./assets/img/slide4.jpg"></li>
		    </ul>
		    <div class="bullets">
		        <label for="slide1">&nbsp;</label>
		        <label for="slide2">&nbsp;</label>
		        <label for="slide3">&nbsp;</label>
		        <label for="slide4">&nbsp;</label>
		    </div>
		</div>
	    <!-- img 슬라이드 끝 -->
	    
		<br>
	    <div class="mproduct-list">
	        <a href="#" class="mproduct">
	            <img src="https://cdn.pixabay.com/photo/2015/11/21/15/29/camera-1055066_960_720.jpg">
	            <div class="mproduct-name">
	                Camera
	            </div>
	            <div class="mproduct-price">
	                49,000
	            </div>
	        </a>
	
	        <a href="#" class="mproduct">
	            <img src="https://cdn.pixabay.com/photo/2015/11/21/15/29/camera-1055066_960_720.jpg">
	            <div class="mproduct-name">
	                Camera
	            </div>
	            <div class="mproduct-price">
	                49,000
	            </div>
	        </a>
	
	        <a href="#" class="mproduct">
	            <img src="https://cdn.pixabay.com/photo/2015/11/21/15/29/camera-1055066_960_720.jpg">
	            <div class="mproduct-name">
	                Camera
	            </div>
	            <div class="mproduct-price">
	                49,000
	            </div>
	        </a>
	
	        <a href="#" class="mproduct">
	            <img src="https://cdn.pixabay.com/photo/2015/11/21/15/29/camera-1055066_960_720.jpg">
	            <div class="mproduct-name">
	                Camera
	            </div>
	            <div class="mproduct-price">
	                49,000
	            </div>
	        </a>
	
	      
	    </div>
		
		<div class="exp_box">
			<a href="#">
				<p>저희 홈페이지가 처음이신가요?<br></p>
				<p>대여 서비스 활용 방법 확인해보기></p>
			</a>
		</div>
		<br>
	
		
		<div class="advert">
			<a href="#">
				<span>에너지 순환, 환경을 생각하다</span>
				<img alt="" src="https://cdn.pixabay.com/photo/2017/04/20/00/32/pinwheel-2244152_960_720.jpg" width="100%" height="340px">
			</a>
		</div>
   
   </div>






    <footer>
        <jsp:include page="./common/footer.jsp"/>
    </footer>

    <script src="./assets/js/loginJS.js" type="text/javascript"></script>
</body>
</html>