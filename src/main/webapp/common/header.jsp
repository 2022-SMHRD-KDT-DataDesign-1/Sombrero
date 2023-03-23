<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
	<link rel="shortcut icon" href="#">
    <!-- google font : noto sans -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="./assets/css/header.css">
	<link rel="stylesheet" type="text/css" href="./common/common.css">
</head>
<body>
    <div class="wrap">
    	    	
		<div class="navbar">
			<a href="main.jsp">일생일대</a>
	    </div>
	        
	    <div class="search_area">
	    	<form>
       			<input type="text" placeholder="상품명을 입력하세요">
            	<span>검색</span>
            </form>
        </div>
		<div class="navmenu">
	        <ul id="menu">
	            <li><a href="#"><b>Cart</b></a></li>
	            <li><a href="#"><b>MyPage</b></a></li>
	            <li><a href="./login.jsp"><b>Login</b></a></li>
	            <li><a href="#"><b>Join</b></a></li>
	        </ul>
	    </div>
    </div>            

    <!-- 카테고리 -->
	<div class="navcate">
		<ul class="cate">
	        <li><a href="#"><b>여가</b></a></li>
	        <li><a href="#"><b>캠핑</b></a></li>
	        <li><a href="#"><b>등산</b></a></li>
	        <li><a href="#"><b>낚시</b></a></li>
	        <li><a href="#"><b>스포츠</b></a></li>
	        <li><a href="#"><b>여행</b></a></li>
	        <li><a href="#"><b>희망상품</b></a></li>
	    </ul>
	</div>
    <!-- intro end -->
	<div class="headerDiv"></div>


</body>
</html>