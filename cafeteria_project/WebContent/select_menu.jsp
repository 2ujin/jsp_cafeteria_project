<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>🌎 Welcome</title>
</head>
    <style>
    @import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);
      body{
        background-image: url("img/back.png");
        background-size: cover;
        background-repeat: no-repeat;
        margin: auto;
        text-align: center;
        font-family: 'NanumSquare';
      }
      h2{
        margin-top: 100px;
        color: black;
      }
      #show{
        margin:auto;
        width: 400px;
        height: 400px;
        background-color: white;
        opacity: 0.8;
        border-collapse: collapse;
        
      }
      #result{
      	width: 150px;
      	text-align: center;
      	margin-left: 118px;
      }
      #h2{
      	margin-top: 20px;
      }
      code{
      	font-family: 'NanumSquare';
      	font-size: 20px;
      }
    </style>
<body>
<% String date1 = request.getParameter("date"); %>
	
    <h2>📋 선택한 날의 급식 입니당!</h2><br>
    <div id="show">
    <h3>🍛 9월 <%= date1 %>일 급식</h3>
    
<%
	String date = request.getParameter("date");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		
	String url = "jdbc:mysql://localhost:3306/mirim";
	String user = "root";
	String pass = "1234";
	
//	out.println("9월" + date + "일"); 
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pass);
	
	date = "09" + date; 
	
	String sql = "select * from cafeteria_tbl where c_date = " + date;
	
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	while(rs.next()){
		String c_date = rs.getString("c_date"); //컬럼명이 id인 것 갖고옴
		String c_cafeteria = rs.getString("c_cafeteria");
		String c_kind = rs.getString("c_kind");
%>
	
	<code><%= c_kind %></code>
	<div id ="result"><%= c_cafeteria %></div><br>

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
      <div></div>
    </div>
</body>
</html>