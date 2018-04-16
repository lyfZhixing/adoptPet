<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="../css/index.css">
</head>
<body>
	<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
    <div class="index-detials">
        <div class="index-nav">
            <div class="logo"><img src="../img/logo.png" alt=""></div>
            <ul>
                <a href="./index.html"><li>首页</li></a>
                <a href="#"><li>宠物圈</li></a>
                <a href="#"><li>知识百科</li></a>
                <a href="./personal.html"><li>个人中心</li></a>
            </ul>
            <div class="index-login" style="display: block">
                <div class="message">注册</div>
                <div class="login">登录</div>
                <div class="bg-model" style="display: none">
                    <div class ="model-content">
                        <h2>宠物领养平台</h2>
                        <div class="model-input">
                            <input id="phoneno" type="text" placeholder="请输入手机号">
                            <input id="upwd" type="password" placeholder="请输入密码">
                        </div>
                        <div class="model-verf">
                            <input type="text" placeholder="请输入验证码">
                            <div class="verification"><img src="./img/logo.png" alt=""></div>
                        </div>
                        <div class="model-btn">
                            <button class="btn-1" id="cancel">登录</button>
                            <button class="btn-2" id="sure">取消</button>
                        </div>
                    </div>
                </div>
                <div class="msg-model" style="display: none">
                    <div class="model-detial">
                        <h2>欢迎注册宠物领养平台</h2>
                        <div>
                            <span>你的昵称：</span>
                            <input id="Runame" type="text">
                        </div>
                        <div class="msg-phone">
                            <span>你的手机号：</span>
                            <input id="Rphoneno" type="text">
                            <button>点击获取验证码</button>
                        </div>
                        <div>
                            <span>验证码：</span>
                            <input id="Rvcode" type="text">
                        </div>
                        <div>
                            <span>你的密码：</span>
                            <input id="Rupwd" type="text">
                        </div>
                        <div>
                            <span>确认密码：</span>
                            <input id="Rupwd2" type="text">
                        </div>
                        <div class="msg-btn">
                            <button class="btns-1" id="register">注册</button>
                            <button class="btns-2" id="cance">取消</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="index-out" style="display: none">
                <div class="message">消息</div>
                <div class="login">退出</div>
                <div class="web-name">欢迎您，<a href="#">abc</a></div>
            </div>
        </div>
        <div class="index-slicb content">
                <div id="lunbobox">
                    <div class="lunbo">
                        <a href="#"><img src="https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1523874961&di=c4ed6aeab9ef979f19dcaa50157cc9e6&src=http://imgsrc.baidu.com/imgad/pic/item/cc11728b4710b9126eefdbf9c9fdfc039245228e.jpg"></a>
                        <a href="#"><img src="http://www.jq22.com/img/cs/500x300b.png"></a>
                        <a href="#"><img src="http://www.jq22.com/img/cs/500x300c.png"></a>
                        <a href="#"><img src="http://www.jq22.com/img/cs/500x300d.png"></a>
                        <a href="#"><img src="http://www.jq22.com/img/cs/500x300.png"></a>
                    </div>
                    <ul>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                    <span></span>
                </div>
        </div>
        <div class="index-search content">
            <div class="index-search ">
                <div class="search-detial" >
                    <h3>北京</h3>
                    <div class="search-tog">切换</div>
                    <input type="text">
                    <img src="../img/u45.png" alt="">
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
                </div>
                <div class="index-release">发布领养</div>
            </div>
        </div>
        <div class="index-latest content">
            <div class="latest-title">
                <h2>最新发布：</h2>
                <p>更多>></p>
            </div>
            <div class="latest-detial">
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
            </div>
        </div>
        <div class="index-dog content">
            <div class="latest-title">
                <h2><img src="../img/u83.png" alt="">狗狗：</h2>
                <p>更多>></p>
            </div>
            <div class="dog-detial">
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
            </div>
        </div>
        <div class="index-cat content">
            <div class="latest-title">
                <h2><img src="../img/u67.png" alt="">猫咪：</h2>
                <p>更多>></p>
            </div>
            <div class="cat-detial">
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
            </div>
        </div>
        <div class="index-other content">
            <div class="latest-title">
                <h2><img src="../img/u75.png" alt="">其他：</h2>
                <p>更多>></p>
            </div>
            <div class="other-detial">
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
                <div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <h4>金毛 2年 免费领养 狗贩勿扰</h4>
                    <p>已申请人数：5人</p>
                    <p>发布人：王先生</p>
                </div>
            </div>
        </div>
    </div>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/index.js"></script>
</body>
</html>