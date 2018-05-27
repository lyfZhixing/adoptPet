<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>发布信息</title>
    <link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="../css/personal.css">
    <link rel="stylesheet" href="../css/publish.css">
    <link href="../css/fileUpload/iconfont.css" rel="stylesheet">
    <link href="../css/fileUpload/fileUpload.css" rel="stylesheet">
   
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
                <span>发布信息 ></span>
            </div>
            <!--<div class="content-2"><a href="#">发布领养</a></div>-->
        </div>
        <div style="clear: both"></div>
        <div class="bottom">
        
        	<div class="pubtype">
                <span>类型：</span><br/>
                	狗狗<input class="radio" type="radio" name="radio" value="狗狗"/> 
                	&emsp; 
					猫咪<input class="radio" type="radio" name="radio" value="猫咪"/>  
					&emsp;
					其他<input class="radio" type="radio" name="radio" value="其他"/> 
					&emsp;
            </div>
            <div class="pubtitle">
                <span>标题：</span><br/>
                <input id="pubtitle" type="text" value="" placeholder="15字以内……"/>
            </div>
            <div class="pubdetial">
                <span>描述：</span><br/>
                <textarea id="pubdetial" placeholder="300字以内……"></textarea>
            </div>
            <div class="pubimg">
                <span>图片：</span><br/>
                <div id="fileUploadContent" class="fileUploadContent"></div>
                <!-- <button onclick="testUpload()">提交</button> -->

            </div>
            <div class="myaddress">
            	<div class="selects">
                <span>地址：</span><br>
              <!--   省： -->
                <select id="s_pro" disabled="disabled">
                	<option id="opt" value="">${address_arr[0] }</option>
                </select>
              <!--   市: -->
                <select id="s_city" disabled="disabled">
					<option id="opt" value="">${address_arr[1] }</option>
                </select>
       			<!--  县: -->
                <select id="s_county" disabled="disabled">
                	<option id="opt" value="">${address_arr[2] }</option>
                </select>
                </div>
                
                <div class="pubdetialaddress">
                    <textarea id="myaddress" readonly="readonly" placeholder="${address_arr[3] }">${address_arr[3] }</textarea>
                    <img id="edit" alt="编辑" src="../img/edit.svg">
                </div>
            </div>
            <hr style="height:1px;border:none;border-top:1px dashed #333333;margin: 0px 30px 0px 30px" />
            <div class="pubquestions">
                <div class="question">
                    <span>问题一：</span><br>
                    <textarea id="question1" placeholder="请输入你的提问……"></textarea>
                </div>
                <div class="question">
                    <span>问题二：</span><br>
                    <textarea id="question2" placeholder="请输入你的提问……"></textarea>
                </div>
                <div class="question">
                    <span>问题三：</span><br>
                    <textarea id="question3" placeholder="请输入你的提问……"></textarea>
                </div>
            </div>
            <hr style="height:1px;border:none;border-top:1px dashed #333333;margin: 0px 30px 0px 30px" />
            <div class="pubbuttons">
                <img id="submit" alt="提交" src="../img/submit.svg" style="height: 50px;width: 50px;margin-left: 5px;">
                <img alt="撤销" id="canle" style="height: 50px;width: 50px;margin-left: 50px;" src="../img/cancle.svg">

            </div>
        </div>

    </div>

	 <script src="../js/jquery-3.2.1.min.js"></script>
    <!--<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>-->
    <script src="../js/fileUpload/fileUpload.js"></script>
    <script src="../js/pageHead.js"></script>
    <script src="../js/personalHead.js"></script>
    <script src="../js/ssx.js"></script>
    <script src="../js/setingDetial.js"></script>
	<script src="../js/publish2.js"></script>
</div>
</body>
</html>
<script src="../js/publish.js"></script>