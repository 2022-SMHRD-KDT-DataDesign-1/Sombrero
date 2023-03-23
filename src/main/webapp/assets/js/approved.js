

//const IMP = window.IMP; // 생략 가능
IMP.init("imp34881717"); 
function requestPay() {
    IMP.request_pay({
        pg : 'kcp.{INIBillTst}',
        pay_method : 'card',
        merchant_uid: "57008833-33004", 
        name : '당근 10kg',
        amount : 1000,
        buyer_email : 'Iamport@chai.finance',
        buyer_name : '포트원 기술지원팀',
        buyer_tel : '010-1234-5678',
        buyer_addr : '서울특별시 강남구 삼성동',
        buyer_postcode : '123-456'
    }, function (rsp) { // callback
        if (rsp.success) {
            console.log(rsp);
        } else { 
            console.log(rsp);
        }
    });
}

