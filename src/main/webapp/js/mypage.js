console.log("js 파일 연결")

let user_status = document.getElementById("hidden").innerText;
console.log(user_status)



if(user_status == "입금완료"){
	document.getElementById("deposit").style.backgroundColor = "black";
	document.getElementById("d_span").style.color = "white"
}else if(user_status == "대여완료"){
	document.getElementById("rental").style.backgroundColor = "black";
	document.getElementById("r_span").style.color = "white"
	
}else if(user_status == "반납진행"){
	document.getElementById("ing").style.backgroundColor = "black";
	document.getElementById("i_span").style.color = "white"
	
}else if(user_status == "반납완료"){
	document.getElementById("return").style.backgroundColor = "black";
	document.getElementById("n_span").style.color = "white"
	
}else if(user_status == "후기 남기기"){
	document.getElementById("review").style.backgroundColor = "black";
	document.getElementById("v_span").style.color = "white"
	
}