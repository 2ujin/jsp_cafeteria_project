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
    <script>
    function move(){
    	alert("dd");
      var q1 = document.getElementById("q1");
      var q2 = document.getElementById("q2");
      var q3 = document.getElementById("q3");
      var q4 = document.getElementById("q4");
      var q5 = document.getElementById("q5");
      var q6 = document.getElementById("q6");
  	  location.href = "game_result.jsp?q1="+q1.value+"&q2="+q2.value;
    	
    }
    </script>
<body>
<form>
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
        <input type="button" value="btn2" onclick="move()">
      </form>
    </div>
</form>
</body>
</html>