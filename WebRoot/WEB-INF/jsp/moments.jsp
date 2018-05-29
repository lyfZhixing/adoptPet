<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>朋友圈</title>
    <link rel="stylesheet" href="./css/index.css">
    <link rel="stylesheet" href="./css/personal.css">
    <link rel="stylesheet" href="./css/publish.css">
    <link rel="stylesheet" href="./css/myPublish.css">
    <link rel="stylesheet" href="./css/moments.css">
    <script src="./js/jquery-3.2.1.min.js"></script>
    <script src="./js/personal.js"></script>
    <script src="./js/setingDetial.js"></script>
</head>
<body>
	<div class="personal-centent">
        <div class="index-detials">
        	<%@ include file="common/pageHeade.jsp"%>
        </div>
        <div class="personal-detial content">
            <div class="personal-seting">
               <img alt="分享生活留住感动" src="../img/timg.jpg">
            </div>
            
         <div class="centent-detial">
                
                <div class="pub"><img alt="发布" src="../img/jump.svg"></div>
         </div>
         <div style="clear: both"></div>
            
            
        <div class="bottom">

            <div class="mypub">
                <div class="mypub_top">
                    <div class="pubtime">lyf</div>
                    <div class="adoptstatus">2016-8-24 05:24</div>
                </div>
                <div style="clear: both"></div>

                <div class="mypub_describe">
                    自家满月哈士奇，4月大，已打疫苗，由于生了5只，没有时间照顾，想自己选一个真心喜欢狗狗的人免费领养，狗贩子勿扰.
                </div>
                <div class="mypub_address">
                    地址：

                    北京市  北京市  海淀区
                    北三环西路120号

                </div>
                <div class="mypub_img">
                    <a href="#"><img src="http://www.jq22.com/img/cs/500x300a.png"></a>
                    <a href="#"><img src="http://www.jq22.com/img/cs/500x300b.png"></a>
                    <a href="#"><img src="http://www.jq22.com/img/cs/500x300c.png"></a>
                    <a href="#"><img src="http://www.jq22.com/img/cs/500x300d.png"></a>
                </div>
                <div style="clear: both"></div>
                <div class="nomean">
                    <img id="comment" src="img/评论.svg">
                    <img id="clickz" src="img/点赞.svg">

                    <div style="clear: both"></div>
                </div>
                <div style="clear: both"></div>
                <div class="nomean1">
                    <img src="img/点赞.svg">   xxx,xxx,xxx,xxx觉得很赞
                    <div style="clear: both"></div>
                </div>
                <div style="clear: both"></div>
                <div class="nomean2" style="display: none">
                     <div class="nomean2-0">
                         <textarea id="mycomment" placeholder="说点什么……"></textarea>
                         <img src="img/jump.svg">
                         <img id="myAnswer_bt2${pubApply.serialno}" src="img/cancle.svg">
                         <div style="clear: both"></div>
                     </div>

                    <img class="nomean2-00" src="img/评论.svg">
                    <div class="nomean2-1">
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                        <div>lyf:66666666666666</div>
                    </div>
                    <div style="clear: both"></div>

                </div>
                <hr style="height:1px;border:none;border-top:1px dashed #333333;margin: 0px 30px 0px 30px" />
            </div>

        </div>
        </div>
			<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/pageHead.js"></script>
    <script src="../js/personalHead.js"></script>
    <script src="../js/setingDetial.js"></script>
	<script src="../js/myPublish.js"></script>
    </div>
</body>
</html>
