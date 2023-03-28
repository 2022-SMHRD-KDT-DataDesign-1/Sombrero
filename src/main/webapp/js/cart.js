console.log("cart check");

/* 대여일, 대여 수량 */
let rental_period = 0;
let rental_quantity = 0;
let product_price = 0;
/* 대여일 선택 값 가져오는 함수, 변수 */
const changeValue =(target)=>{
	console.log(target.value);
	rental_period = target.value;
}

/* 버튼 클릭시 장바구니 페이지 이동 함수 */
const product_btn_cart = document.getElementsByClassName("js-addcart-detail")[0];
product_btn_cart.addEventListener("click", ()=>{
	console.log("product_btn_cart 클릭");

	const num = document.getElementsByClassName("num-product")[0];
	rental_quantity = num.value;
	console.log(num.value);
	const price = document.getElementsByClassName("mtext-106 cl2")[0];
	product_price = price.innerHTML;
	console.log("가격:" + price.innerHTML);
	
	console.log(rental_period+", "+rental_quantity +","+ product_price);
	
	var answer = confirm("장바구니에 물품이 담겼습니다. 장바구니로 이동하시겠습니까?");
	if(answer){
		
		location="InsertCart.do?rental_period="+rental_period+"&rental_quantity="+rental_quantity + "&product_price="+product_price;
	}else{
		/*장바구니 업데이트만*/
		console.log("장바구니 이동 취소")
	}
});




