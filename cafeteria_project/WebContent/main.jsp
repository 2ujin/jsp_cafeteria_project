<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>급식 알려줄거임 ㅎㅎ</h2>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		
	String url = "jdbc:mysql://localhost:3306/mirim";
	String  user = "root";
	String pass = "1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pass);
	
	String sql = "select * from cafeteria_tbl where c_kind = 'lunch' and c_date = '0930' ";
	
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	while(rs.next()){
		String c_date = rs.getString("c_date"); //컬럼명이 id인 것 갖고옴
		String c_cafeteria = rs.getString("c_cafeteria");
		String c_kind = rs.getString("c_kind");
		 %>
	<div><%= c_cafeteria %></div>

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