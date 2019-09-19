<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

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
<script type="text/javascript" src="<c:url value="/resource/js/jquery-3.4.1.js"/>"></script>
<script>
function test_callback(){
	//alert("농안");
    $("#result").css("background-color", "blue");
}
</script>
</head>
<body>
<div id="send">
 <form action="main2.jsp" method="post"> <br>
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
	<input type="submit" value="dd" onclick="test_callback()">
</form>
</div>
<%
	String date = request.getParameter("date");
	String kind = request.getParameter("kind");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		
	String url = "jdbc:mysql://localhost:3306/mirim";
	String user = "root";
	String pass = "1234";
	
	out.println("9월" + date + "일" + kind);
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pass);
	
	kind = "'" + kind + "'";
	date = "09" + date;
	
	String sql = "select * from cafeteria_tbl where c_kind = " + kind + "and c_date = " + date ;
	
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	while(rs.next()){
		String c_date = rs.getString("c_date"); //컬럼명이 id인 것 갖고옴
		String c_cafeteria = rs.getString("c_cafeteria");
		String c_kind = rs.getString("c_kind");
%>

	<div id ="result"><%= c_cafeteria %></div>
	


<%	} //while
	} //try
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		if(rs!=null){ try{ rs.close(); } catch(Exception e){ } }
		if(pstmt!=null){ try{ pstmt.close(); } catch(Exception e){ } }
		if(conn!=null){ try{ conn.close();  } catch(Exception e){ } }
	}
%>
</body>
</html>
