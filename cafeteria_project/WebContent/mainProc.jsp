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
</head>
<body>
<select name='fruits'>
  <option value=''>-- 선택 --</option>
  <option value='apple' selected>사과</option>
  <option value='banana' disabled>바나나</option>
  <option value='lemon' label='LM'>레몬</option>
</select>
조식<input type="radio" name="radioValue" value="01"/> 
중식<input type="radio" name="radioValue" value="02"/> 
석식<input type="radio" name="radioValue" value="03"/> 
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	//9월 30일 조식
	String il = name.substring(0,2);
	String il2 = name.substring(0,1);	
	String il3 = name.substring(3,5);
	String il4 = name.substring(6,9);

	String save1 = "";
	String save2 = "";

	if(il4.equals(" 조식") || il4.equals("조식")){
		save2 = "morning";
	}
	else if(il4.equals(" 중식") || il4.equals("중식")){
		save2 = "lunch";
	}
	else if(il4.equals(" 석식") || il4.equals("석식")){
		save2 = "dinner";
	}
	
	if(il3.equals("08") || il3.equals("01") || il3.equals("08") || il3.equals("22") || il3.equals("29") || il3.equals("07") || il3.equals("14") || 
			il3.equals("21") || il3.equals("28") || il3.equals("12") || il3.equals("13") || il3.equals("15")){
		save2 = "-";
	}
	
	if(il.equals("10") || il.equals("11") || il.equals("12")){
		save1 = il;
	}
	
	else if(il2.equals("1") || il2.equals("2") || il2.equals("3") || il2.equals("4") || il2.equals("5") || il2.equals("6") || il2.equals("7") || il2.equals("8") || il2.equals("9")){
		save1 = "0" + il2;
	}

	else{
		out.println("올바르게 입력해주셈 ;;");
	}
	
	String date = save1+il3;
	String kind = save2;
	date = date.replace(" ", "");
	kind = "'" + kind + "'";
	out.println("00"+kind+"00");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		
	String url = "jdbc:mysql://localhost:3306/mirim";
	String  user = "root";
	String pass = "1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, pass);
	
	String sql = "select * from cafeteria_tbl where c_kind = " + kind + "and c_date = " + date;
	
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