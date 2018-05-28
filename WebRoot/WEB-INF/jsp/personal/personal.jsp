<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<title>个人中心</title>
	<link rel="stylesheet" href="../css/index.css">
	<link rel="stylesheet" href="../css/personal.css">
</head>
<body>
	<div class="personal-centent">
	<input type="hidden" id="uname" value="${sessionScope.user.uname }" />
        <div class="index-detials">
        	<%@ include file="../common/pageHeade.jsp"%>
        </div>
        <div class="personal-detial content">
            <div class="personal-seting">
               <%@ include file="../common/personalHead.jsp"%>
            </div>
            <div class="centent-detial">
                <div class="content-1">个人中心 ></div>
                <div class="content-2"><a href="#">发布领养</a></div>
            </div>
            <div style="clear: both"></div>
            <div class="bottom">
                <div class="pet-circle">
                    <div class="head_left">
                        <span class="title">宠物圈</span>
                        <a href="#">更多></a>
                    </div>
                    <div style="clear: both"></div>
                    <div class="mymoments">
                        <div class="date">2017/11/01</div>
                        <div class="describe">
                            小猫咪萌萌哒，小猫咪萌萌哒，小猫咪萌萌哒，小猫咪萌萌哒，小猫咪萌萌哒，小猫咪萌萌哒，小猫咪萌萌哒，小猫咪萌萌哒。
                        </div>
                        <div class="pic">
                            <a href="#"><img src="http://www.jq22.com/img/cs/500x300a.png"></a>
                            <a href="#"><img src="http://www.jq22.com/img/cs/500x300b.png"></a>
                            <a href="#"><img src="http://www.jq22.com/img/cs/500x300c.png"></a>
                            <a href="#"><img src="http://www.jq22.com/img/cs/500x300d.png"></a>
                        </div>
                        <div class="like">李白、杜甫、白居易、杜牧等100人觉得很赞</div>
                        <div class="comment">
                            <p>评论：</p>
                            <ul>
                                <li>李老板：这是一条好狗</li>
                                <li>梁老板：李老板说的对</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="adoptInfo">
                    <div class="publish">
                        <div class="head_left">
                            <span>发布的领养：</span>
                            
                            <c:if test="${myPublishs.size() == 0}">
                            	<div style="clear: both"></div>
                            	<div class="no-info">
                            		<div class="content-2" style="width:400px;font-style: italic">您还没有发布过领养信息，点我现在发布……</div>
                            	</div>
                            </c:if>
                            
                            <c:if test="${myPublishs.size() != 0}">
	                            <a class="adopt_more" id="adopt_more">更多></a>
	                            <div style="clear: both"></div>
                            	<div class="adoptinfos">
	                       		<c:forEach var="myPublish" items="${myPublishs}" begin="0" end="1" step="1" >
			                       	 <div class="adopt-info">
			                            <img src="http://www.jq22.com/img/cs/500x300a.png">
			                            <p>${myPublish.title}</p>
			                            <div class="apply_num">已申请人数：${myPublish.count }人</div>
			                            <div class="status">状态：
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
		                       </c:forEach>
		                       </div>
                    
                            </c:if>
                            
                            
                        </div>
                        
                       
                    </div>
                    <div style="clear: both"></div>
                    <div class="apply">
                        <div class="head_left">
                            <span>申请的领养：</span>
                            <a class="adopt_more" id="apply_more">更多></a>
                            <div style="clear: both"></div>
                        </div>
                        
                        <div class="adoptinfos">
                       		<c:forEach var="myApply" items="${myApplys}" begin="0" end="1" step="1" >
                       	 <div class="apply-info">
                            <img src="http://www.jq22.com/img/cs/500x300a.png">
                            <p>${myApply.adopt.title}</p>
                            <%-- <div class="apply_num">已申请人数：${myPublish.count }人</div> --%>
                            <div class="status">申请状态：
                            	<c:if test="${myApply.apply.appstatus != 1 && myApply.adopt.adostatus == 3 }">
									未通过
								</c:if>
								<c:if test="${myApply.apply.appstatus == 0 && myApply.adopt.adostatus != 3}">
									审核中
								</c:if>
								<c:if test="${myApply.apply.appstatus == 1 }">
									已通过
								</c:if>
								
								
							</div>
                        </div>
                       </c:forEach>
                       </div>
                    </div>
                </div>
                <div style="clear: both"></div>
            </div>

        </div>

        <script src="../js/jquery-3.2.1.min.js"></script>
        <script src="../js/pageHead.js"></script>
        <script src="../js/personalHead.js"></script>
        <script src="../js/personal.js"></script>
    </div>
</body>
</html>