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
        color: white;
      }
      #show{
        margin:auto;
        width: 400px;
        height: 400px;
        background-color: white;
        opacity: 0.8;
        border-collapse: collapse;
        overflow: auto;
        padding-top: 0px;
      }
      code{
      font-size: 80px;
      }
      p{
      	margin: 10px;
      }
      h3{
      margin-top: 75px;
      color: blue;
      }
      #btn{
        border:none;
        width: 80px;
        height: 30px;
        border-radius: 20px;
      }
    </style>
<body>
<form>
    <h2>🎮 급식체 게임</h2><br>
    <% 
     request.setCharacterEncoding("utf-8");
     String q1 = request.getParameter("q1"); 
     String q2 = request.getParameter("q2"); 
     String q3 = request.getParameter("q3"); 
     String q4 = request.getParameter("q4"); 
     String q5 = request.getParameter("q5"); 
     String q6 = request.getParameter("q6"); 
     
     int count = 0;
     
     if(q1.equals("제곧내") || q1.equals("제목이 곧 내용")){
    	 count = count + 1;
     }
     if(q2.equals("빼박캔트")){
    	 count = count + 1;
     }
     if(q3.equals("댕댕이")){
    	 count = count + 1;
     }
     if(q4.equals("대박")){
    	 count = count + 1;
     }
     if(q5.equals("커엽다")){
    	 count = count + 1;
     }
     if(q6.equals("쿵쿵따리")){
    	 count = count + 1;
     }
     
     %>
    <div id="show">
    <% if(count >= 6){ %>
    	<h3>🎉 추카추카포</h3><code>👏</code><br><p>당신은 진정한 급식이 !! <br><br> 급식이 자리를 계속 지켜주세요 !!</p><br>
    <% } else if(count >=4){ %>
		<h3>괜찮은 결과!</h3><code>🤚</code><br><p>이제 거의 급식이가 다 되어가네요!!<br><br> 조금만 더 으쌰으쌰 💪</p><br>
	<% } else{ %>
		<h3>아쉽군요 ㅜㅠ</h3><code>🤙</code><br><p>급식이가 되기위해<br><br>조금만 더 노력하세요!🍀<p><br>
	<% } %>
	<input type="button" id="btn" value="돌아가기" onclick="location.href='first_page.jsp'"/>
    </div>
</form>
</body>
</html>