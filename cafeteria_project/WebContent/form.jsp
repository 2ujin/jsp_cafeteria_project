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
      }
      form{
        padding: 20px;
      }
      #btn{
        border:none;
        width: 80px;
        height: 30px;
        border-radius: 20px;
      }
    </style>
<body>
<h2>🎮 급식체 게임</h2><br>
    <div id="show">
	<form action="game_result.jsp" method="post">
	    <p>Q1. ㅈㄱㄴ의 줄임말을 풀어쓰세요!</p>
        <input type="text" name="q1" id="q1">
        <p>Q2. ㅃㅂㅋㅌ의 원래 말은?</p>
        <input type="text" name="q2">
        <p>Q3. '강아지'를 급식체로 바꿔보세요!</p>
        <input type="text" name="q3">
        <p>Q4. 머박의 뜻은?</p>
        <input type="text" name="q4">
        <p>Q5. '귀엽다'를 급식체로 쓴다면?</p>
        <input type="text" name="q5">
        <p>Q6. 오졌따리 오졌따 [] 쿵쿵따 <br> 괄호안에 들어갈 말 단어는?</p>
        <input type="text" name="q6"> <br><br>
		<input type="submit" id="btn" value="입력 완료"/>
	</form>
	    </div>
</body>
</html>