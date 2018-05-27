<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<title>个人中心>资料设置</title>
	<link rel="stylesheet" href="../css/index.css">
	<link rel="stylesheet" href="../css/personal.css">
	<link rel="stylesheet" href="../css/setingDetial.css">
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
                <span>资料设置 ></span>
            </div>
            <div class="content-2"><a href="#">发布领养</a></div>
        </div>
        <div style="clear: both"></div>
        <div class="bottom">
            <div class="myname">
                <span>我的昵称：</span>&nbsp;&nbsp;&nbsp;
                <input type="text" id="myname" value="" readonly="readonly" placeholder="${sessionScope.user.uname }"/>
            </div>
            <hr style="height:1px;border:none;border-top:1px dashed #333333;margin: 0px 30px 0px 30px" />
            <div class="myaddress">
                <span>我的地址：</span>&nbsp;&nbsp;&nbsp;
              <!--   省: -->
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
                
                <span id="ex_myaddress"><img id="e_myaddress" alt="编辑" src="../img/edit.svg"></span>
                <div style="clear: both"></div>
                
                <div class="detialaddress">
                    &nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <textarea id="myaddress" readonly="readonly" placeholder="${address_arr[3] }"></textarea>
                </div>
                
            </div>
            <div style="clear: both"></div>
            <div class="mytel">
                <span>联系方式：</span>&nbsp;&nbsp;&nbsp;
                <input id="mytel" type="text" value="" readonly="readonly" placeholder="${sessionScope.user.phoneno }"/>
                <span id="ex_mytel"><img id="e_mytel" alt="编辑" src="../img/edit.svg"></span>
            </div>
            <div style="clear: both"></div>
            <hr style="height:1px;border:none;border-top:1px dashed #333333;margin: 0px 30px 0px 30px" />
            <div class="mylogin">
                <div>
                    <span>密&emsp;码&emsp;：</span>&nbsp;&nbsp;&nbsp;
                    <input id="mylogin" type="password" value="${sessionScope.user.upwd }" readonly="readonly" />
                    <span id="ex_mylogin"><img id="e_mylogin" alt="编辑" src="../img/edit.svg"></span>
                </div>
            </div>
        </div>

    </div>

    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/pageHead.js"></script>
    <script src="../js/personalHead.js"></script>
    <script src="../js/ssx.js"></script>
    <script src="../js/setingDetial.js"></script>
</div>
</body>
</html>