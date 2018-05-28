<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<title>我的发布</title>
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
	                <span>我发布的 ></span>
            	</div>
                <div class="content-2"><a href="#">发布领养</a></div>
            </div>
            <div style="clear: both"></div>
            <div class="bottom">
            <c:forEach var="myPublish" items="${myPublishs}">
            	<div class="mypub">
                <div class="mypub_top">
                    <div class="pubtime">${myPublish.publishtime }</div>
                    <div class="adoptstatus">
						<c:if test="${myPublish.adostatus == 0 }">
							审核中
						</c:if>
						<c:if test="${myPublish.adostatus == 1 }">
							发布中
						</c:if>
						<c:if test="${myPublish.adostatus == 2 }">
							审核不通过
						</c:if>
						<c:if test="${myPublish.adostatus == 3 }">
							已下架
						</c:if>
					</div>
                </div>
                <div style="clear: both"></div>
                <div class="mypub_title">
                    <h3>
                        ${myPublish.title}
                    </h3>
                </div>
                <div class="mypub_describe">
                		${myPublish.describes}
                </div>
                <div class="mypub_address">
                    	地址：${myPublish.address}
                </div>
                <div class="mypub_img">
                    <a href="#"><img src="http://www.jq22.com/img/cs/500x300a.png"></a>
                    <a href="#"><img src="http://www.jq22.com/img/cs/500x300b.png"></a>
                    <a href="#"><img src="http://www.jq22.com/img/cs/500x300c.png"></a>
                    <a href="#"><img src="http://www.jq22.com/img/cs/500x300d.png"></a>
                </div>
                <!-- 发布中 -->
                <c:if test="${myPublish.adostatus == 0 || myPublish.adostatus == 1 || myPublish.adostatus == 2 }">
                	<div class="mypub_apply">
                    <span>申请人（${myPublish.count }人）：</span>
                    <a>更多</a>
                    <div style="clear: both"></div>
                    <div class="mypub_applyinfos">
                    <c:if test="${myPublish.count == 0}">
                    	<div class="no_applyinfo">
                    	<h5 style="text-align: center;">暂无人申请</h5>
                    	</div>
                    </c:if>
                    <c:if test="${myPublish.count > 0}">
                    <c:forEach var="pubApply" items="${pubApplys}" >
                    <%-- 
                    <input id="pub_serialno" type="hidden" value="${myPublish.serialno}" />
                    <input id="app_serialno" type="hidden" value="${pubApply.serialno}" />
                    <input id="app_uname" type="hidden" value="${pubApply.uname}" />
                    <input id="app_answer1" type="hidden" value="${pubApply.answer1}" />
                    <input id="app_answer2" type="hidden" value="${pubApply.answer2}" />
                    <input id="app_answer3" type="hidden" value="${pubApply.answer3}" />
                      --%>
                     <c:if test="${pubApply.serialno2 == myPublish.serialno}">
                     <c:forEach begin="0" end="0" step="1" >
                    <input id="${pubApply.serialno}" name="app_serialno" type="hidden" value="${pubApply.serialno}" />
              		<input id="${pubApply.serialno}_adopt" type="hidden" value="${myPublish.serialno}" />
              
                <div class="theanswer${pubApply.serialno}" style="display: none">
                <div class="a_title">
                    <h2>他的回答：</h2>
                </div>
                <div class="question">
                    <h4>问题一：${myPublish.question1 }</h4>
                    <textarea readonly="readonly" >${pubApply.answer1 }</textarea>
                </div>
                <div class="question">
                    <h4>问题二：${myPublish.question2 }</h4>
                    <textarea readonly="readonly" >${pubApply.answer2 }</textarea>
                </div>
                <div class="question">
                    <h4>问题三：${myPublish.question3 }</h4>
                    <textarea readonly="readonly">${pubApply.answer3 }</textarea>
                </div>
                <div class="myAnswer_bts">
                	<img id="myAnswer_bt1${pubApply.serialno}" src="../img/submit.svg">
                	<img id="myAnswer_bt2${pubApply.serialno}" src="../img/cancle.svg">
                </div>
            </div>
           
            	
                     
                    	<div class="mypub_applyinfo">
                            <div class="applyer_name">
                                <img src="${pubApply.user.uimage }"/>
                                <h4>${pubApply.uname }</h4>
                            </div>
                            <div style="clear: both"></div>
                            <div class="applyer_address">
                                <span>地址：</span>
                                <div>${pubApply.user.uaddress }</div>
                            </div>
                            <div style="clear: both"></div>
                            <div class="applyer_tel">
                                	电话：${pubApply.user.phoneno }
                            </div>
                            <div class="mypub_answerbt">
                                <img id="mypub_answerbt${pubApply.serialno}" src="../img/checkAnswer.svg"/>
                            </div>
                        </div>
                        </c:forEach>
                       </c:if>
                       	
                     </c:forEach>
                     <div style="clear: both"></div>   
                    </c:if>
                    </div>
                </div>
                	
                </c:if>
                <!-- 已下架 -->
                <c:if test="${myPublish.adostatus == 3 }">
                	<div class="mypub_apply">
                    <span>领养人：</span>
                    <div style="clear: both"></div>
                    <div class="mypub_applyinfos">
                    <c:forEach var="pubApply" items="${pubApplys}" >
                     <c:if test="${pubApply.serialno2 == myPublish.serialno && pubApply.appstatus == 1}">
                    <input id="${pubApply.serialno}" name="app_serialno" type="hidden" value="${pubApply.serialno}" />
              		<input id="${pubApply.serialno}_adopt" type="hidden" value="${myPublish.serialno}" />
                <div class="theanswer${pubApply.serialno}" style="display: none">
                <div class="a_title">
                    <h2>提问回答：</h2>
                </div>
                <div class="question">
                    <h4>问题一：${myPublish.question1 }</h4>
                    <textarea readonly="readonly" >${pubApply.answer1 }</textarea>
                </div>
                <div class="question">
                    <h4>问题二：${myPublish.question2 }</h4>
                    <textarea readonly="readonly" >${pubApply.answer2 }</textarea>
                </div>
                <div class="question">
                    <h4>问题三：${myPublish.question3 }</h4>
                    <textarea readonly="readonly">${pubApply.answer3 }</textarea>
                </div>
                <div class="myAnswer_bts">
                	<%-- <img id="myAnswer_bt1${pubApply.serialno}" src="../img/submit.svg"> --%>
                	<img id="myAnswer_bt2${pubApply.serialno}" src="../img/cancle.svg">
                </div>
            </div>
                    	<div class="mypub_applyinfo">
                            <div class="applyer_name">
                                <img src="${pubApply.user.uimage }"/>
                                <h4>${pubApply.uname }</h4>
                            </div>
                            <div style="clear: both"></div>
                            <div class="applyer_address">
                                <span>地址：</span>
                                <div>${pubApply.user.uaddress }</div>
                            </div>
                            <div style="clear: both"></div>
                            <div class="applyer_tel">
                                	电话：${pubApply.user.phoneno }
                            </div>
                            <div class="mypub_answerbt">
                                <img id="mypub_answerbt${pubApply.serialno}" src="../img/checkAnswer.svg"/>
                            </div>
                        </div>
                       </c:if>
                     </c:forEach>
                     <div style="clear: both"></div>   
                    </div>
                </div>
                </c:if>
            </div>
            <hr style="height:1px;border:none;border-top:1px dashed #333333;margin: 0px 30px 0px 30px" />
            </c:forEach>
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
