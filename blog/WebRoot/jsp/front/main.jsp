<%@ page contentType="text/html; charset=utf-8" 
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>博客界面</title>
       <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
</head>
<body>
<div class="head">
    <div class="head_1">
        <img src="${pageContext.request.contextPath}/img/1.PNG">
        <p>博客</p>
    </div>
    <div class="head_2">
        <ul>
            <li><a href="${pageContext.request.contextPath}/jsp/front/login.jsp">登录</a></li>
            <li>|</li>
            <li><a href="#">注册</a></li>
            <li style="margin-left: 10px"><img src="${pageContext.request.contextPath}/img/green01.gif"></li>
            <li style="margin-left: 10px"><img src="${pageContext.request.contextPath}/img/green02.gif"></li>
        </ul>
    </div>

</div>
<div class="content">
    <div class="content_img">
        <div class="content_img_txt">
            <h1>ChanJi</h1>
            <p>蜗牛也有梦想</p>
        </div>
        <div class="content_img_button">
            <ul>
                <li><button>目录视图</button></li>
                <li><button>摘要视图</button></li>
                <li><button>订阅</button></li>
            </ul>
        </div>
    </div>
    <div class="center">
        <div class="left">
            <div class="left1">
                <div class="left1_head">个人简介</div>
                <div class="left1_img">
                    <img src="${pageContext.request.contextPath}/img/logo.png">
                </div>
                <div class="left1_button">
                    <button>加关注</button>
                    <button>私信</button>
                </div>
                <div class="left1_list">
                    <p><i>访问:</i>1000</p>
                    <p><i>积分:</i>1000</p>
                    <p><i>等级:</i>8</p>
                    <p><i>排名:</i>596</p>
                </div>
                <div class="left1_content"></div>
            </div>
            <div class="left1" style="margin-top: 10px">
                <div class="left1_head">博客公告</div>
                <div class="left2_content">
                    <p>
                        本博客所有文章均为原创，欢迎交流，欢迎转载；转载请勿篡改内容，并且注明出处，禁止用于商业目的，谢谢！
                    </p>
                </div>

            </div>
            <div class="left1" style="margin-top: 10px">
                <div class="left1_head">新浪微博</div>
                <div class="weibo_img">
                    <img src="${pageContext.request.contextPath}/img/logo.png">
                    <div class="weibo_txt">
                        <p>吉春&nbsp;&nbsp;&nbsp;</p>
                        <p>江苏&nbsp;淮安</p><br>
                        <button>加关注</button>
                    </div>
                </div>
            </div>
            <div class="left1" style="margin-top: 10px">
                <div class="left1_head">阅读排行榜</div>
                <div class="read_rank">
                    <ul>
                        <li>Android WebView启动Chromium渲染引擎的过程分析</li>
                        <li>Android WebView启动Chromium渲染引擎的过程分析</li>
                        <li>Android WebView启动Chromium渲染引擎的过程分析</li>
                        <li>Android WebView启动Chromium渲染引擎的过程分析</li>
                        <li>Android WebView启动Chromium渲染引擎的过程分析</li>
                        <li>Android WebView启动Chromium渲染引擎的过程分析</li>
                    </ul>
                </div>

            </div>
            <div class="left1" style="margin-top: 10px">
                <div class="left1_head">最新评论</div>
                <div class="read_rank">
                    <ul>
                        <li>good</li>
                        <li>gooder</li>
                        <li>goodest</li>
                        <li>good</li>
                        <li>gooder</li>
                        <li>goodest</li>
                    </ul>
                </div>

            </div>
        </div>
        <jsp:include page="abstract.jsp"></jsp:include>
    </div>
    <div class="bottom">
    <p>金陵科技学院</p>
    <p>软件工程（嵌入式培养）（1）班</p>
    <p>作者：吉春</p>
   
    <div/>
</div>
</div>
</body>
</html>