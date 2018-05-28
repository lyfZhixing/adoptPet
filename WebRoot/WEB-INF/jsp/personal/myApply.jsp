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
    <link rel="stylesheet" href="../css/myApply.css">
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
	                <span>我申请的 ></span>
            	</div>
                <div class="content-2"><a href="#">发布领养</a></div>
            </div>
            <div style="clear: both"></div>
            
            <div class="bottom">
            <c:forEach var="myApply" items="${myApplys}">
					
				<div class="mypub">
					<div class="mypub_top">
						<div class="applyer_name">
							<h4>${myApply.adopt.uname }    发布</h4>
						</div>
						<div class="pubtime">${myApply.apply.applytime }</div>
						<div class="adoptstatus">
							<c:if test="${myApply.apply.appstatus != 1 && myApply.adopt.adostatus == 3 }">
								申请未通过
							</c:if>
							<c:if test="${myApply.apply.appstatus == 0 && myApply.adopt.adostatus != 3}">
								申请审核中
							</c:if>
							<c:if test="${myApply.apply.appstatus == 1 }">
								申请已通过
							</c:if>
							
						</div>
					</div>
					<div style="clear: both"></div>
					<div class="mypub_title">
						<h3>${myApply.adopt.title}</h3>
					</div>
					<div class="mypub_describe">${myApply.adopt.describes}</div>
					<div class="mypub_address">地址：${myApply.adopt.address}</div>
					<div class="mypub_img">
						<a href="#"><img
							src="http://www.jq22.com/img/cs/500x300a.png"></a> <a
							href="#"><img
							src="http://www.jq22.com/img/cs/500x300b.png"></a> <a
							href="#"><img
							src="http://www.jq22.com/img/cs/500x300c.png"></a> <a
							href="#"><img
							src="http://www.jq22.com/img/cs/500x300d.png"></a>
							<div style="clear: both"></div>
					</div>
					<input id="${myApply.apply.serialno}" name="app_serialno" type="hidden" value="${myApply.apply.serialno}" />
					<div class="myapp_infobt">
                         <img id="mypub_answerbt${myApply.apply.serialno}" src="../img/info.svg"/>
                    </div>
                    <div style="clear: both"></div>
					<!-- 查看详情 -->
					<div class="theanswer${myApply.apply.serialno}" style="display: none">
						<%-- <div class="ado_tel">
		                	<h2>发布人联系方式：</h2>${myApply.user.phoneno }
		                </div> --%>
		                
						<div class="a_title">
							<c:if test="${myApply.apply.appstatus == 1 }">
								<h4>发布人联系方式：${myApply.user.phoneno }</h4>
							</c:if>
                    		<h4>我的回答：</h4>
                		</div>
		                <div class="question">
		                    <h5>问题一：${myApply.adopt.question1 }</h5>
		                    <textarea readonly="readonly" >${myApply.apply.answer1 }</textarea>
		                </div>
		                <div class="question">
		                    <h5>问题二：${myApply.adopt.question2 }</h5>
		                    <textarea readonly="readonly" >${myApply.apply.answer2 }</textarea>
		                </div>
		                <div class="question">
		                    <h5>问题三：${myApply.adopt.question3 }</h5>
		                    <textarea readonly="readonly">${myApply.apply.answer3 }</textarea>
		                </div>
		                
		                
		                <div class="myAnswer_bts">
		                	<%-- <img id="myAnswer_bt1${pubApply.serialno}" src="../img/submit.svg"> --%>
		                	<img id="myAnswer_bt2${myApply.apply.serialno}" src="../img/cancle.svg">
		                </div>
					</div>
					
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
