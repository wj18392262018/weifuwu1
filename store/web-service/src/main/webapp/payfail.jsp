<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/14 0014
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>乐优商城--支付页-失败</title>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico">


    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/webbase.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/pages-payfail.css" />
</head>

<body>

<!--页面顶部白条条，由js动态加载-->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>
<div class="top"></div>
<script type="text/javascript">$(".top").load("shortcut.html");</script>

<div class="cart py-container">
    <!--logoArea-->
    <div class="logoArea">
        <div class="fl logo"><span class="title">支付页</span></div>
    </div>
    <!--主内容-->
    <div class="payfail">
        <div class="fail">
            <h3><img src="${pageContext.request.contextPath}/img/_/fail.png" width="48" height="48">　支付失败，请稍后再试</h3>
            <div class="fail-text">
                <p>失败原因：不能使用金币购买！</p>
                <p>您可以先去　<a href="index.html" target="_blank">乐优首页</a>　逛逛</p>
                <p class="button"><a href="" class="sui-btn btn-xlarge btn-danger">重新支付</a></p>
            </div>
        </div>

    </div>
</div>


<!-- 底部栏位 -->
<!--页面底部，由js动态加载-->
<div class="clearfix footer"></div>
<script type="text/javascript">$(".footer").load("foot.html");</script>
<!--页面底部END-->



<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery.easing/jquery.easing.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/sui/sui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/components/ui-modules/nav/nav-portal-top.js"></script>
</body>

</html>
