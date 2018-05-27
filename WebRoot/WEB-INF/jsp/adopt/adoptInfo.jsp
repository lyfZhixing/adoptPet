<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<title>信息详情</title>
	<link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="../css/personal.css">
  <!--   <link rel="stylesheet" href="../css/setingDetial.css"> -->
   <!--  <link rel="stylesheet" href="../css/publish.css"> -->
    <link rel="stylesheet" href="../css/myPublish.css">
    <link rel="stylesheet" href="../css/adoptinfo.css">
    
    
</head>
<body>
	<div class="personal-centent">
        <div class="index-detials">
        	<%@ include file="../common/pageHeade.jsp"%>
        </div>
        
        <div class="index-search content">
        <div class="index-search ">
            <div class="search-detial" >
                <h3>北京</h3>
                <div class="search-tog">切换</div>
                <div class="search-choice" style="display: none">
                    <span>省：</span>
                    <select>
                        <option value=""></option>
                        <option value=""></option>
                        <option value=""></option>
                        <option value=""></option>
                    </select>
                    <span>市：</span>
                    <select>
                        <option value=""></option>
                        <option value=""></option>
                        <option value=""></option>
                        <option value=""></option>
                    </select>
                    <div class="search-btn">
                        <button rclass="sea-1">确定</button>
                        <button class="sea-2">取消</button>
                    </div>
                </div>
                <input type="text">
                <img src="./img/u45.png" alt="">

            </div>
            <div class="index-release">发布领养</div>
        </div>
    </div>
            <div style="clear: both"></div>
            <div class="bottom">
            	<div class="mypub">
                <div class="mypub_top">
                    <div class="pubtime">${info.publishtime }</div>
                    <input id="hidden-serialno" type="hidden" value="${info.serialno}"/>
                    <div style="clear: both"></div>
                </div>
                
                <div class="mypub_title">
                    <h3>
                        ${info.title}
                    </h3>
                </div>
                <div class="mypub_describe">
                		${info.describes}
                </div>
                <div class="mypub_address">
                    	地址：${info.address}
                </div>
                <div class="mypub_img">
                    <a href="#"><img src="http://www.jq22.com/img/cs/500x300a.png"></a>
                    <a href="#"><img src="http://www.jq22.com/img/cs/500x300b.png"></a>
                    <a href="#"><img src="http://www.jq22.com/img/cs/500x300c.png"></a>
                    <a href="#"><img src="http://www.jq22.com/img/cs/500x300d.png"></a>
                </div>
            </div>
            <hr style="height:1px;border:none;border-top:1px dashed #333333;margin: 0px 30px 0px 30px" />
            	<div class="master-quiz">
            		<h3>主人提问</h3>
            		<span>1.${info.question1}</span>
            		<textarea id="answer1" placeholder="请输入您的回答"></textarea>
            		<span>2.${info.question2}</span>
            		<textarea id="answer2" placeholder="请输入您的回答"></textarea>
            		<span>3.${info.question3}</span>
            		<textarea id="answer3" placeholder="请输入您的回答"></textarea>
            		<div class="img-bts">
            			<img id='s-answer' alt='提交' src='../img/submit.svg' >
            			<img alt='撤销' id='c-answer'  src='../img/cancle.svg'>
            		</div>
            	</div>
  
            </div>

        </div>
			<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/pageHead.js"></script>
	<script src="../js/adoptinfo.js"></script>
    <!-- <script src="../js/personalHead.js"></script> -->
    
   <!--  <script src="../js/setingDetial.js"></script> -->

    </div>
</body>
</html>