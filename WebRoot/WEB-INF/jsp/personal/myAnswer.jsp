<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<title>回答</title>
	<link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="../css/personal.css">
    <link rel="stylesheet" href="../css/setingDetial.css">
    <link rel="stylesheet" href="../css/publish.css">
    <link rel="stylesheet" href="../css/myPublish.css">
    
    
</head>
<body>
	<div class="personal-centent">
        <div class="index-detials">
        	<%@ include file="../common/pageHeade.jsp"%>
        </div>
        <div class="personal-detial content">
            <div class="personal-seting">
               <%@ include file="../common/personalHead.jsp"%>
            </div>
            <div class="centent-detial">
                <div class="content-1">
	                <span id="personal">个人中心 ></span>
	                <span>回答 ></span>
            	</div>
                <div class="content-2"><a href="#">发布领养</a></div>
            </div>
            <div style="clear: both"></div>
            <div class="bottom">
            <div class="theanswer">
                <div class="a_title">
                    <span>回答</span>
                </div>
                <div class="question">
                    <span>问题一：</span><br>
                    <textarea readonly="readonly" placeholder="${answers.answer1 }"></textarea>
                </div>
                <div class="question">
                    <span>问题二：</span><br>
                    <textarea readonly="readonly" placeholder="${answers.answer2 }"></textarea>
                </div>
                <div class="question">
                    <span>问题三：</span><br>
                    <textarea readonly="readonly" placeholder="${answers.answer3 }"></textarea>
                </div>
                <div class="myAnswer_bts">
                	<img src="../img/checkAnswer.svg">
                	<img src="../img/submit.svg">
                </div>
            </div>
            	
  
            </div>

        </div>
			<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/pageHead.js"></script>
    <script src="../js/personalHead.js"></script>
    
    <script src="../js/setingDetial.js"></script>

    </div>
</body>
</html>