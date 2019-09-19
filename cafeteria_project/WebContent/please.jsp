<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>JDBC 드라이버 테스트</h2>
<%
	Connection conn = null;

	try{
		String url = "jdbc:mysql://localhost:3306/mysql";
		String user = "root";
		String password = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
		
		out.println("연결 성공,,");
	}
	catch(Exception e){
		out.println("연결 실패");
		e.printStackTrace();
	}
%>
</body>
</html>