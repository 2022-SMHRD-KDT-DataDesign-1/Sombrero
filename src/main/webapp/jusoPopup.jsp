<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="JoinPage.jsp" name="form" id="form" method="post">
      <table >
         <colgroup>
            <col style="width:20%"><col>
         </colgroup>
         <tbody>
            <tr>
               <th>�����ȣ</th>
               <td>
                   <input type="text" id="confmKey" name="confmKey" value="500"  >-
                  <input type="text" id="zipNo" value="100" name="zipNo" readonly style="width:100px">
                  
               </td>
            </tr>
            <tr>
               <th>���θ��ּ�</th>
               <td><input type="text" id="roadAddrPart1" style="width:85%" name="addr1"></td>
            </tr>
            <tr>
               <th>���ּ�</th>
               <td>
                  <input type="text" id="addrDetail" style="width:40%" value="">
                  <input type="text" id="roadAddrPart2"  style="width:40%" value="">
               <span align="right"><input type="submit" value="�Ϸ�"></span>
               </td>
            </tr>
            </tbody>
         </table>
   </form>
</body>
</html>

<script src="js/jusoPopup.js"></script>

