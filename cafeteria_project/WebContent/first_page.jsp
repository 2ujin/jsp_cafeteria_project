<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>🌎 Welcome</title>
    <style>
    ::selection {
  		background-color: rgb(255, 203, 226);
	}
    @import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);
      body{
        background-image: url("img/back.png");
        background-size: cover;
        background-repeat: no-repeat;
        z-index:1;
        margin: auto;
        text-align: center;
        font-family: 'NanumSquare';
      }
      h2{
        margin-top: 100px;
        color: white;
      }
      #box_1{
        width: 200px;
        height: 200px;
        background-color: #D4DFE6;
        opacity: 0.8;
        float: left;
        margin: 15px;
        text-align: center;
        line-height: 50px;
        font-family: 'NanumSquare';
        margin-left: 425px;
      }
      #box_3{
        width: 440px;
        height: 130px;
        background-color: #D4DFE6;
        opacity: 0.8;
        float: left;
        margin-left: 420px;
      }
      #box_2{
        width: 200px;
        height: 200px;
        background-color: #D4DFE6;
        opacity: 0.8;
        float: left;
        margin: 15px;
        margin-bottom: 25px;
        text-align: center;
        line-height: 40px;
        font-family: 'NanumSquare';
      }
      #box_1:hover{
        background-color: #8EC0E4;
        opacity: 0.6;"WebContent/ask_chat.jsp"
      }
      #box_2:hover{
        background-color: #8EC0E4;
        opacity: 0.6;
      }
      #box_3:hover{
        background-color: #8EC0E4;
        opacity: 0.6;
      }
      code{
        font-size: 40px;
      }
      a{
        text-decoration: none;
        color: black;
      }
    </style>
</head>
<body>
    <h2>🌎 Welcome To Mirim World</h2><br>
    <a href="month_menu.jsp"><div id="box_1"><br><code>📆</code><br>월간급식</div></a>
    <a href="ask_chat.jsp"><div id="box_2"><br><code>🙋</code>‍<br>급식이에게<br>물어봐!</div></a>
    <a href="form.jsp"><div id="box_3"><br><code>🎮</code>‍<br>급식체 게임하자!</a>
</body>
</html>