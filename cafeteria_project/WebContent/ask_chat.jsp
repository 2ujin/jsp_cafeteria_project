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
<title>Insert title here</title>
</head>
<style>
    @import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);  
    body{
    font-family: 'NanumSquare';
    }
    #main {
    background-color: white;
    background-size: 100%;
    text-align: center;
    width: 350px;
    height: 630px;
    position: absolute;
    margin-left: auto;
    margin-right: auto;
    left: 0;
    right: 0;
    display: block;
    box-shadow: 0px 0px 20px -5px rgba(0, 0, 0, 0.8);
  }
  #header{
    width: 350px;
    height: 30px;
    background-color: #F68657;
    line-height: 30px;
    font-family: 'NanumSquare';
    color: azure;
    font-size: 13px;
  }
  #chat {
    position: absolute;
    background-color: #f0f1f2;
    height: 465px;
    width: 334px;
    overflow-y: auto;
    top: 120px;
    left: 8px;
    border-radius: 10px;
    /* border: 0.4px solid gray; */
  }
  /* 접속 알림 */
  .connect {
    width: 90%;
    margin: auto;
    font-size: 10px;
    text-align: center;
    margin-top: 10px;
  }

  /* 접속 종료 알림 */
  .disconnect {
    width: 90%;
    margin: auto;
    font-size: 10px;
    text-align: center;
    margin-top: 10px;
  }
  /* 내가 보낸 메시지 */
  .me{
    width: 110px;
    overflow:hidden;
    overflow-x:hidden;
    overflow-y:hidden;
    word-wrap:break-word;
    margin-left: 190px;
    background-color: #D9D9D9;
    border-radius: 10px;
    margin-top: 10px;
    font-size: 13px;
    color: black;
    padding: 3px;
  }
    .me2{
    margin-left: 20px;
    width: 110px;
    overflow:hidden;
    overflow-x:hidden;
    overflow-y:hidden;
    word-wrap:break-word;
    background-color: #F68657;
    border-radius: 10px;
    margin-top: 10px;
    font-size: 13px;
    color: white;
    padding: 3px;
  }
    .me3{
    margin-left: 20px;
    width: 110px;
    overflow:hidden;
    overflow-x:hidden;
    overflow-y:hidden;
    word-wrap:break-word;
    background-color: #F68657;
    border-radius: 10px;
    margin-top: 10px;
    font-size: 13px;
    color: white;
    padding: 3px;
  }
  #test{
    position: absolute;
    width: 220px;
    height: 20px;
    background-color: #f7f5f5;
    border-radius: 10px;
    border: none;
    top: 595px;
    left: 120px;
    font-family: 'NanumSquare';
  }
  #h_name{
    text-align: center;
    font-size: 13px;
    line-height: 34px;
    color: white;
    font-size: 15px;
    font-family: 'NanumSquare';
  }
  #h_introduce{
    text-align: center;
    font-size: 12px;
    color: white;
    font-family: 'NanumSquare';
  }
  #about{
    text-align: center;
    width: 331px;
    height: 60px;
    border-radius: 15px;
    margin-left: 10px;
    margin-top: 16px;
    background-color: #F68657	;
  }
  #send{
	width: 331px;;
	height: 30px;
	background-color: #f0f1f2;
	text-align: center;
	position: absolute;
	top: 595px;
	left: 10px;
	border-radius: 15px;
	line-height: -28px;
	font-family: 'NanumSquare';
	}
#result{
	width: 300px;
	height: 60px;
	overflow: auto;
	background-color:red;
}
code{
	font-family: 'NanumSquare';
	font-size: 14px;
	font-weight: bold;
}
    </style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
 <script>
	function test_callback() {
		var s = document.getElementById("date").value;
		var kind = document.getElementsByName("kind").value;
		
        var radioVal = $('input[name="kind"]:checked').val();
        
		location.href = "ask_chat.jsp?date="+s+"&kind="+radioVal;
		document.getElementById("show").style.display = "block";
	}
</script>
<body>
    <div id="main">
      <div id="header">🙋‍♀️ 급식이</div>
      <div id="about">
        <div id="h_name">사용자 : 미림인</div> <!-- 입력한 이름 -->
        <div id="h_introduce">😀 한줄소개 : 만나서 반가워요 ^*^</div> <!-- 입력한 한줄소개 -->
      </div>
	<div id="chat">
	<div class="me2">안녕하세요 🙂  <br> 급식이 입니다! 급식 뭐든 물어보세요!</div>
	</div>
      <div>
<div id="send">
	<select name="date" id="date">
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
      <div id="chat">
       <div class="me2">안녕하세요 🙂  <br> 급식이 입니다! 급식 뭐든 물어보세요!</div>
        <div class="me"><%= c_date %>급식 알려줘!</div>
        <div class="me3">짜쟌!! 이 날의 급식은 <code><%= c_cafeteria %></code> 입니다~</div>
        <div class="me3">급식이와 함께 즐거운 하루 보내세요 🤙</div>
      </div>

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
      </div>
    </div>

</body>
</html>