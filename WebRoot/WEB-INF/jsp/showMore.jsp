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
    <!-- <link rel="stylesheet" href="../css/myPublish.css"> -->
    <link rel="stylesheet" href="../css/adoptinfo.css">
    <link rel="stylesheet" href="../css/showMore.css">
    
    
</head>
<body>
	<div class="personal-centent">
        <div class="index-detials">
        	<%@ include file="common/pageHeade.jsp"%>
        </div>
        
        <div class="index-search content">
        <div class="index-search ">
            <div class="search-detial" >
                <h3>${ncity }</h3>
                <div class="search-tog">切换</div>
                <div class="search-choice" style="display: none">
                    <span>省：</span>
                    <select id="s_pro">
                        
                    </select>
                    <span>市：</span>
                    <select id="s_city">
                        
                    </select>
                    <div class="search-btn">
                        <button class="sea-1">确定</button>
                        <input type="hidden" value="showMore">
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
            	<div class="show-title">
            		<div class="choose"><h3>筛选：</h3></div>
            		<hr style="height:1px;border:none;border-top:1px dashed #333333;margin: 0px 30px 0px 30px" />
            		<div class="show-type">
            			类型：&emsp;&emsp; <input type="checkbox" name="alltype" />全部&emsp;&emsp; 
            			<input type="checkbox" name="dog" value="狗狗" />狗狗&emsp;&emsp; 
            			<input type="checkbox" name="cat" value="猫咪" />猫咪&emsp;&emsp; 
            			<input type="checkbox" name="other" value="其他" />其他	
            			<div style="clear: both"></div>
            		</div>
            		<div class="show-city">
            			地区：&emsp;&emsp; <input type="checkbox" name="alltype" />全部&emsp;&emsp; 
            			<c:forEach var="city" items="${citys }">
            				<input type="checkbox" name="dog" value="${city.name }" />${city.name }&emsp;&emsp; 
            			</c:forEach>
            			<div style="clear: both"></div>
            		</div>
            		<div class="choose-bt">
            			<img alt="筛选" src="../img/shaixuan.svg">
            		</div>
            		<div style="clear: both"></div>
            	</div>
            	<hr style="height:1px;border:none;border-top:1px dashed #333333;margin: 0px 30px 0px 30px" />
            	<div class="show-infos">
	                <c:forEach var="other" items="${pageinfo.list}">
		            	<div class="latest-det">
		                    <img src="../img/u45.png" alt="">
		                    <input type="hidden" value="${other.serialno}"/>
		                    <h4>${other.title}</h4>
		                    <p>已申请人数：${other.count }人</p>
		                    <div style="clear: both"></div>
		                    <p>发布人：${other.uname }</p>
		                    
		                </div>
		                
	            	</c:forEach>
	            </div>
            	<div class="page">
            		<div class="nextpage">
            			<input id="pageno" type="hidden" value="${pageinfo.pageNum}">
            			<input id="pages" type="hidden" value="${pageinfo.pages}">
            			<img id="pre" alt="上一页" src="../img/prepage.svg">
            			<span>第${pageinfo.pageNum}页</span>
            			<img id="next" alt="下一页" src="../img/nextpage.svg">
            			<div style="clear: both"></div>
            		</div>
            		<div class="jump">
            			<span>共${pageinfo.pages}页</span>
            			<span>到第<input id="jumpno" type="text" value="${pageinfo.pageNum}" size="3">页</span>
            			<img id="jump" alt="跳转" src="../img/jump.svg">
            		</div>
            	</div>
            	
            </div>

        </div>
			<script src="../js/jquery-3.2.1.min.js"></script>
	<script src="../js/pageHead.js"></script>
	<script src="../js/ssx.js"></script>
	<script src="../js/index.js"></script>
	<!-- <script src="../js/adoptinfo.js"></script> -->
	<script src="../js/showMore.js"></script>
    <!-- <script src="../js/personalHead.js"></script> -->
    
   <!--  <script src="../js/setingDetial.js"></script> -->

    </div>
</body>
</html>