<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="./assets/css/productDetail.css">
</head>
<body>
    <header>
        <jsp:include page="./common/header.jsp"/>
    </header>
    
    <div id="wrapper">
    
		<div class="productWrap">
			<!-- img 공간 -->
			<div>
				<img src="https://cdn.pixabay.com/photo/2023/03/02/14/28/camera-7825467_960_720.jpg" width="400px">
			</div>
		
			<!-- 상품정보 출력 공간 -->
			<div>
				<p>일생일대 상품</p>
				<h3>카메라</h3>
				<p>우리 상품이 킹왕짱</p>
				<p>상품 개수</p>
				<input type="number" placeholder="1~10까지">
				<br>
				<span>대여기간</span>
				<div class="selectBox2 ">
					<button class="label">[필수]대여일을 선택해 주세요.</button>
		            <ul class="optionList">
		                <li class="optionItem">일주일 (7일)</li>
		                <li class="optionItem">이주일 (14일)</li>
		                <li class="optionItem">삼주일 (21일)</li>
		                <li class="optionItem">한달 (31일)</li>
		            </ul>
            	</div>
            	<!-- rental option end -->
            	<p>총 대여 금액 : 35,400원</p>
            	
            	<button>장바구니</button>
            	<button>대여하기</button>
            	
			</div>
			<!-- 상품정보 출력 끝 -->
	    </div>
	    






    </div>

    <footer>
        <jsp:include page="./common/footer.jsp"/>
    </footer>
    <script src="./assets/js/productDetail.js" type="text/javascript"></script>
</body>
</html>