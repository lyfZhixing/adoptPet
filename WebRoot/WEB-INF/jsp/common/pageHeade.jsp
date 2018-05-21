<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
	<input id="sessionIsNull" type="hidden" value="${sessionScope.user}" />
        <div class="index-nav">
            <div class="logo"><img src="../img/logo.png" alt=""></div>
            <ul>
                <a href="${pageContext.request.contextPath}/index/index.action"><li>首页</li></a>
                <a href="#"><li>宠物圈</li></a>
                <a href="#"><li>知识百科</li></a>
                <%-- <a href="${pageContext.request.contextPath}/index/personal.action"><li>个人中心</li></a> --%>
                <a href="javascript:void(0);" id="a_personal"><li>个人中心</li></a>
            </ul>
            <div class="index-login" style="display: block">
            	<div class="bts">
            		<c:set var="user" scope="session" value="${sessionScope.user}"/>
            		<c:if test="${user != null }">
            			<div class="logoff">注销</div>
            			<div class="uname">欢迎您,${user.uname }</div>
            		</c:if>
            		<c:if test="${user == null }">
            			<div class="message">注册</div>
	                	<div class="login">登录</div>
            		</c:if>
	                
                </div>
                <div class="bg-model" style="display: none">
                    <div class ="model-content">
                        <h2>宠物领养平台</h2>
                        <div class="model-input">
                            <input id="phoneno" type="text" placeholder="请输入手机号">
                            <input id="upwd" type="password" placeholder="请输入密码">
                        </div>
                        <div class="model-verf">
                            <input id="inVcode" type="text" placeholder="请输入验证码">
                            <div class="verification"><img id="vcode" src="${pageContext.request.contextPath}/vcode/loginVcode.action" alt="" title="点击刷新验证码"></div>
                            <div id="vcodemsg" style="font-size:6"></div>
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
                            <button id="msmbt">点击获取验证码</button>
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