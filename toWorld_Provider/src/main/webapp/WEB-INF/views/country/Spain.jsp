<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
<title>Spain</title>
<script>
   function Spain() {
      window.open (
         "/reviewSpain", "reviewSpain",
         "width=800, height=1000, top=20, left=350, location=no, menubar=0"
      )
   }
</script>
<style>
   .header{
     	position:fixed;
	    top:0;
	    left:0;
	    right:0;
	    z-index:10;
	    display:flax;
	    background:white;
	    height:60px;
	    justify-content:space-between;
	    align-items:center;
   }
   
   .section {
      color:black;
      font-family: 'Noto Sans KR', sans-serif;
   }

   .section .image_top {
      width: 100%;
   }
   
   .section .text {
      margin-left: 100px;
      font-size: 100px;
      font-family: 'Noto Sans KR', sans-serif;
   }
   
   .section .text2 {
      margin-right: 80px;
      font-size: 25px;
      font-family: 'Noto Sans KR', sans-serif;
   }
   
   .section .main {
      display: flex;
      justify-content: center;
      text-align: left;
      font-size: 20px;
      font-family: 'Noto Sans KR', sans-serif;
   }
   
   .section .image_middle {
      margin: 0 50px 0 20px;
   }
   
   .section .image_middle2 {
      margin-left: 140px;
   }
   
   .section .image_middle, .image_middle2 {
   		margin-bottom: 80px;
   }
   
   .reviewList table {
   		margin: 0 auto;
   		text-align: center;
   }
   
   .reviewList table th {
   		background-color: #F3F2D4;
   }
   
   .review2 {
   		margin-top: 40px;
   }
   
   .review2 button {
   		border: 1px solid black; 
   		border-radius: 5px;
   		background-color: rgba(0,0,0,0); 
   		color: black; 
   		padding: 5px;
   		cursor: pointer;
   }
   
   .review2 button:hover { 
   		color:white; 
   		background-color: black; 
   	}
   
   .footer{
      height: 10%;
   }
   
   #paging{
    font-size: 22pt;
}




</style>

</head>
<body>
	<div class="header">
			<jsp:include page="header.jsp"></jsp:include>
	</div>
	
	<div class="section">
		<div class="image_top" align="center">
			<img src="/images/spain1.jpg">
		</div>
		
		<div class="text">
			?????????<br>
			????????? ??????.<br>
		</div>
		
		<div class="text2" align="right">
			???????????? ???????????? ????????? ?????????????????? ?????????<br> 
			????????? ????????? ?????????????????? ??????<br> 
			??????????????? ???????????? ????????? ?????? ????????????<br>
			???????????? ????????? ?????? ?????? ?????? ??????????????? ??????????????????.<br>
			
			 <br><br><br>
		</div>
		
		<div class="main">
			
			<div class="image_middle2">
				<img src="/images/spain2.jpg" width=600px>
			</div>
			<div class="image_middle">
				<img src="/images/spain3.jpg" width=600px> 
				<br><br><br><br>
				??????, ??????, ????????? ????????? ?????? '????????????'<br>
				???????????? ???????????? ?????????????????? ?????? '???????????????'<br>
				?????? ?????????????????? ???????????? ?????? '????????????'<br>
				????????? ?????? '?????????'<br>
				????????? ??????, ????????? ????????? ???????????? '????????????'
			</div>
			
		</div>
		
	</div>
	
	<div class="reviewList">
    <table width="70%" cellpadding="10px">
    <tr>
	    <th width=50%>??????</th>
	    <th width=15%>?????????</th>
	    <th width=25%>??????</th>
	    <th width=10%>?????????</th>
    </tr>
    <c:forEach var="imsi" items="${reviewCountry}">
    <tr>
    	<td><a href="/reviewCountryDetail?fileName=${imsi.fileName}&serial=${imsi.serial}">${imsi.title}</a></td>
    	<td>${imsi.id}</td>
    	<td>${imsi.datetime}</td>
    	<td>${imsi.viewcnt}</td>
    	
    </tr>
    </c:forEach> 
	</table>
	</div>
	
   <div class="review2" align="center">
      <button onclick="Spain()">??????</button>
   </div>
	
	<div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>