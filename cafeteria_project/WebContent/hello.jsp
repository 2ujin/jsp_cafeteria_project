<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#send{
	width: 400px;
	height: 60px;
	background-color:red;
	text-align: center;
	position: absolute;
	top: 200px;
}
#result{
	width: 300px;
	height: 60px;
	overflow: auto;
	background-color:red;
}
</style>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	function test_callback(){
		$("#result").append("<div><%= "메롱" %></div>");
	}
</script>
</head>
<body>
<div id="send">
 <form action="hello.jsp" method="post"> <br>
	<select name="date">
       <option value="02">2일</option>
       <option value="03">3일</option>
       <option value="04">4일</option>
       <option value="05">5일</option>
       <option value="06">6일</option>
       <option value="07">7일</option>
       <option value="08">8일</option>
       <option value="09">9일</option>
       <option value="10">10일</option>
       <option value="11">11일</option>
       <option value="12">12일</option>
       <option value="13">13일</option>
       <option value="14">14일</option>
       <option value="15">15일</option>
       <option value="16">16일</option>
       <option value="17">17일</option>
       <option value="18">18일</option>
       <option value="19">19일</option>
       <option value="20">20일</option>  
       <option value="21">21일</option>
       <option value="22">22일</option>
       <option value="23">23일</option>
       <option value="24">24일</option>
       <option value="25">25일</option>
       <option value="26">26일</option>
       <option value="27">27일</option>
       <option value="28">28일</option>
       <option value="29">29일</option>
       <option value="30">30일</option>  
     </select>
       조식<input type="radio" name="kind" value="morning"/> 
	중식<input type="radio" name="kind" value="lunch"/> 
	석식<input type="radio" name="kind" value="dinner"/> 
	<input type="button" value="dd" onclick="test_callback()">
</form>
</div>
<%
	String date = request.getParameter("date");
	String kind = request.getParameter("kind");
	
	out.println("9월" + date + "일" + kind);
	
	
	kind = "'" + kind + "'";
	date = "09" + date;
%>
	<div id ="result"><%= "메롱" %></div>
</body>
</html>