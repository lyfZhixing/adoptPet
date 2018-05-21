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
      <%@ include file="common/pageHeade.jsp"%>
    </div>
    <div class="personal-detial content">
        <div class="personal-seting">
            <%@ include file="common/personalHead.jsp"%>
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
                <input type="text" value="" placeholder="${sessionScope.user.uname }"/>
            </div>
            <hr style="height:1px;border:none;border-top:1px dashed #333333;margin: 0px 30px 0px 30px" />
            <div class="myaddress">
                <span>我的地址：</span>&nbsp;&nbsp;&nbsp;
                省:
                <select>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                </select>
                市:
                <select>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                </select>
                县:
                <select>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                    <option value=""></option>
                </select>
                <div class="detialaddress">
                    &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;
                    <textarea placeholder="详细地址……"></textarea>
                </div>
            </div>
            <div class="mytel">
                <span>联系方式：</span>&nbsp;&nbsp;&nbsp;
                <input type="text" value="" placeholder="请输入手机号"/>
            </div>
            <hr style="height:1px;border:none;border-top:1px dashed #333333;margin: 0px 30px 0px 30px" />
            <div class="mylogin">
                <div>
                    <span>登录名&emsp;：</span>&nbsp;&nbsp;&nbsp;
                    <input type="text" value="" placeholder="请输入注册手机号"/>
                </div>
                <div>
                    <span>密&emsp;码&emsp;：</span>&nbsp;&nbsp;&nbsp;
                    <input type="text" value="" placeholder="请输入原密码"/>
                    <input type="button" id="changePWD" value="修改密码" />
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