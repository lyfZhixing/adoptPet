<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="../css/index.css">
</head>
<body>
    <div class="index-detials">
    	 <%@ include file="common/pageHeade.jsp"%>
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
                    <h3 id="ipAddress">郑州</h3>
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
                <p id="showmore">更多>></p>
                <div style="clear: both"></div>
            </div>
            <div class="latest-detial">
            
            <c:forEach var="newPublish" items="${newPublishs}" begin="0" end="7" step="1">
            	<div class="latest-det">
                    <img src="../img/u45.png" alt="">
                    <input type="hidden" value="${newPublish.serialno}"/>
                    <h4>${newPublish.title}</h4>
                    <p>已申请人数：${newPublish.count }人</p>
                    <p>发布人：${newPublish.uname }</p>
                </div>
            </c:forEach>
                
            </div>
        </div>
        <div class="index-dog content">
            <div class="latest-title">
                <h2><img src="../img/u83.png" alt="">狗狗：</h2>
                <p id="showmore">更多>></p>
                <div style="clear: both"></div>
            </div>
            <div class="dog-detial">
                <c:forEach var="dog" items="${dogs}" begin="0" end="7" step="1">
	            	<div class="latest-det">
	                    <img src="../img/u45.png" alt="">
	                    <input type="hidden" value="${dog.serialno}"/>
	                    <h4>${dog.title}</h4>
	                    <p>已申请人数：${dog.count }人</p>
	                    <p>发布人：${dog.uname }</p>
	                </div>
            	</c:forEach>
                
            </div>
        </div>
        <div class="index-cat content">
            <div class="latest-title">
                <h2><img src="../img/u67.png" alt="">猫咪：</h2>
                <p id="showmore">更多>></p>
                <div style="clear: both"></div>
            </div>
            <div class="cat-detial">
                <c:forEach var="cat" items="${cats}" begin="0" end="7" step="1">
	            	<div class="latest-det">
	                    <img src="../img/u45.png" alt="">
	                    <input type="hidden" value="${cat.serialno}"/>
	                    <h4>${cat.title}</h4>
	                    <p>已申请人数：${cat.count }人</p>
	                    <p>发布人：${cat.uname }</p>
	                </div>
            	</c:forEach>
            </div>
        </div>
        <div class="index-other content">
            <div class="latest-title">
                <h2><img src="../img/u75.png" alt="">其他：</h2>
                <p id="showmore">更多>></p>
                <div style="clear: both"></div>
            </div>
            <div class="other-detial">
                <c:forEach var="other" items="${others}" begin="0" end="7" step="1">
	            	<div class="latest-det">
	                    <img src="../img/u45.png" alt="">
	                    <input type="hidden" value="${other.serialno}"/>
	                    <h4>${other.title}</h4>
	                    <p>已申请人数：${other.count }人</p>
	                    <p>发布人：${other.uname }</p>
	                </div>
            	</c:forEach>
            </div>
        </div>
    </div>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/index.js"></script>
    <script src="../js/pageHead.js"></script>
</body>
</html>