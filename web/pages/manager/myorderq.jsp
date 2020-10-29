<%--
  Created by IntelliJ IDEA.
  User: LuckyH
  Date: 2020/9/20
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyOrder</title>
<%--    <%@ include file="/pages/common/head.jsp"%>--%>
    <link href="${pageContext.request.contextPath}/static/css/myorder.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/public.css" type="text/css" />
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/public.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/static/js/user.js" type="text/javascript" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/static/js/myorder.js"></script>
</head>
<body>
<%--<div class="head ding">--%>
<%--    <div class="wrapper clearfix">--%>
<%--        <div class="clearfix" id="top"><h1 class="fl"><a href="index.html"><img src="img/logo.png"/></a></h1>--%>
<%--            <div class="fr clearfix" id="top1"><p class="fl"><a href="#" id="login">登录</a><a href="#" id="reg">注册</a>--%>
<%--            </p>--%>
<%--                <form action="#" method="get" class="fl"><input type="text" placeholder="搜索"/><input type="button"/>--%>
<%--                </form>--%>
<%--                <div class="btn fl clearfix"><a href="mygxin.html"><img src="img/grzx.png"/></a><a href="#" class="er1"><img--%>
<%--                        src="img/ewm.png"/></a><a href="cart.html"><img src="img/gwc.png"/></a>--%>
<%--                    <p><a href="#"><img src="img/smewm.png"/></a></p></div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <ul class="clearfix" id="bott">--%>
<%--            <li><a href="index.html">首页</a></li>--%>
<%--            <li><a href="#">所有商品</a>--%>
<%--                <div class="sList">--%>
<%--                    <div class="wrapper  clearfix"><a href="paint.html">--%>
<%--                        <dl>--%>
<%--                            <dt><img src="img/nav1.jpg"/></dt>--%>
<%--                            <dd>浓情欧式</dd>--%>
<%--                        </dl>--%>
<%--                    </a><a href="paint.html">--%>
<%--                        <dl>--%>
<%--                            <dt><img src="img/nav2.jpg"/></dt>--%>
<%--                            <dd>浪漫美式</dd>--%>
<%--                        </dl>--%>
<%--                    </a><a href="paint.html">--%>
<%--                        <dl>--%>
<%--                            <dt><img src="img/nav3.jpg"/></dt>--%>
<%--                            <dd>雅致中式</dd>--%>
<%--                        </dl>--%>
<%--                    </a><a href="paint.html">--%>
<%--                        <dl>--%>
<%--                            <dt><img src="img/nav6.jpg"/></dt>--%>
<%--                            <dd>简约现代</dd>--%>
<%--                        </dl>--%>
<%--                    </a><a href="paint.html">--%>
<%--                        <dl>--%>
<%--                            <dt><img src="img/nav7.jpg"/></dt>--%>
<%--                            <dd>创意装饰</dd>--%>
<%--                        </dl>--%>
<%--                    </a></div>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li><a href="flowerDer.html">装饰摆件</a>--%>
<%--                <div class="sList2">--%>
<%--                    <div class="clearfix"><a href="proList.html">干花花艺</a><a href="vase_proList.html">花瓶花器</a></div>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li><a href="decoration.html">布艺软饰</a>--%>
<%--                <div class="sList2">--%>
<%--                    <div class="clearfix"><a href="zbproList.html">桌布罩件</a><a href="bzproList.html">抱枕靠垫</a></div>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li><a href="paint.html">墙式壁挂</a></li>--%>
<%--            <li><a href="perfume.html">蜡艺香薰</a></li>--%>
<%--            <li><a href="idea.html">创意家居</a></li>--%>
<%--        </ul>--%>
<%--    </div>--%>
<%--</div>--%>
<!------------------------------idea------------------------------>
<div class="address mt">
    <div class="wrapper clearfix">
        <a href="#" class="fl">首页</a><span>/</span>
        <a href="${pageContext.request.contextPath}/pages/manager/myorderq.jsp">个人中心</a><span>/</span>
        <a href="myorderq.html" class="on">我的订单</a>
    </div>
</div><!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <%@ include file="/pages/common/myMenuList.jsp"%>
        <div class="you fl">
            <div class="my clearfix">
                <h2 class="fl">我的订单</h2>
                <a href="#" class="fl">请谨防钓鱼链接或诈骗电话，了解更多&gt;</a>
            </div>
            <div class="dlist clearfix order_list_title">
                <ul class="fl clearfix" id="wa">
                    <li class="on"><a href="#2">全部有效订单</a></li>
                    <li><a href="#2">待支付</a></li>
                    <li><a href="#2l">待签收</a></li>
                    <li><a href="#2">已关闭</a></li>
                </ul>
                <form action="#" method="get" class="fr clearfix">
                    <input type="text" name="" id="order_search_input" value="" placeholder="请输入商品名称、订单号"/><input type="button" name="" id=""  value=""/>
                </form>
            </div>
            <div>
                <%--            <div class="dkuang">--%>
                <%--                <p class="one">已收货</p>--%>
                <%--                <div class="word clearfix">--%>
                <%--                    <ul class="fl clearfix">--%>
                <%--                        <li>2016年12月1日 18:53</li>--%>
                <%--                        <li>杨小黄</li>--%>
                <%--                        <li>订单号:5160513358520018</li>--%>
                <%--                        <li>在线支付</li>--%>
                <%--                    </ul>--%>
                <%--                    <p class="fr">订单金额：<span>99.00</span>元</p>--%>
                <%--                </div>--%>
                <%--                <div class="shohou clearfix">--%>
                <%--                    <a href="#" class="fl"><img src="${pageContext.request.contextPath}/static/img/g1.jpg"/></a>--%>
                <%--                    <p class="fl">--%>
                <%--                        <a href="#">家用创意菜盘子圆盘 釉下彩复古</a>--%>
                <%--                        <a>¥99.00 × 1</a>--%>
                <%--                    </p>--%>
                <%--                    <p class="fr">--%>
                <%--                        <a href="myprod.html">待评价</a>--%>
                <%--                        <a href="orderxq.html">订单详情</a>--%>
                <%--                    </p>--%>
                <%--                </div>--%>
                <%--            </div>--%>
                <%--            <div class="dkuang clearfix deng">--%>
                <%--                <p class="one fl">待收货</p>--%>
                <%--                <div class="word clearfix">--%>
                <%--                    <ul class="fl clearfix">--%>
                <%--                        <li>2016年12月1日 18:53</li>--%>
                <%--                        <li>杨小黄</li>--%>
                <%--                        <li>订单号:5160513358520018</li>--%>
                <%--                        <li>在线支付</li>--%>
                <%--                    </ul>--%>
                <%--                    <p class="fr">订单金额：<span>99.00</span>元</p></div>--%>
                <%--                <div class="shohou clearfix">--%>
                <%--                    <div class="order_items_panel fl">--%>
                <%--                        <div class="order_item fl">--%>
                <%--                            <a href="#" class="fl"><img src="${pageContext.request.contextPath}/static/img/g1.jpg"/></a>--%>
                <%--                            <p class="fl">--%>
                <%--                                <a href="#">家用创意菜盘子圆盘 釉下彩复古</a>--%>
                <%--                                <a href="#">¥99.00×1</a>--%>
                <%--                            </p>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                    <p class="fr">--%>
                <%--                        <a href="#">确认收货</a>--%>
                <%--                        <a href="orderxq.html">订单详情</a>--%>
                <%--                    </p>--%>
                <%--                </div>--%>
                <%--            </div>--%>
                <%--            <div class="dkuang deng">--%>
                <%--                <p class="one">待支付</p>--%>
                <%--                <div class="word clearfix">--%>
                <%--                    <ul class="fl clearfix">--%>
                <%--                        <li>2016年12月1日 18:53</li>--%>
                <%--                        <li>杨小黄</li>--%>
                <%--                        <li>订单号:5160513358520018</li>--%>
                <%--                        <li>在线支付</li>--%>
                <%--                    </ul>--%>
                <%--                    <p class="fr">订单金额：<span>99.00</span>元</p></div>--%>
                <%--                <div class="shohou clearfix">--%>
                <%--                    <a href="#" class="fl"><img src="${pageContext.request.contextPath}/static/img/g1.jpg"/></a>--%>
                <%--                    <p class="fl">--%>
                <%--                        <a href="#">家用创意菜盘子圆盘 釉下彩复古</a>--%>
                <%--                        <a href="#">¥99.00×1</a>--%>
                <%--                    </p>--%>
                <%--                    <p class="fr">--%>
                <%--                        <a href="#">立即支付</a>--%>
                <%--                        <a href="orderxq.html">订单详情</a>--%>
                <%--                    </p>--%>
                <%--                </div>--%>
                <%--            </div>--%>
                <%--            <div class="dkuang"><p class="one">已关闭</p>--%>
                <%--                <div class="word clearfix">--%>
                <%--                    <ul class="fl clearfix">--%>
                <%--                        <li>2016年12月1日 18:53</li>--%>
                <%--                        <li>杨小黄</li>--%>
                <%--                        <li>订单号:5160513358520018</li>--%>
                <%--                        <li>在线支付</li>--%>
                <%--                    </ul>--%>
                <%--                    <p class="fr">订单金额：<span>99.00</span>元</p></div>--%>
                <%--                <div class="shohou clearfix">--%>
                <%--                    <a href="#" class="fl"><img src="${pageContext.request.contextPath}/static/img/g1.jpg"/></a>--%>
                <%--                    <p class="fl">--%>
                <%--                        <a href="#">家用创意菜盘子圆盘 釉下彩复古</a>--%>
                <%--                        <a href="#">¥99.00×1</a></p>--%>
                <%--                    <p class="fr">--%>
                <%--                        <a href="#">交易失败</a>--%>
                <%--                        <a href="orderxq.html">订单详情</a>--%>
                <%--                    </p>--%>
                <%--                </div>--%>
                <%--            </div>--%>
            </div>

            <div class="fenye clearfix pagination">
<%--                <a href="#" class="page_controller"><img src="${pageContext.request.contextPath}/static/img/zuo.jpg"/></a>--%>
<%--                <a href="#" class="page_num">1</a>--%>
<%--                <a href="#" class="page_num">2</a>--%>
<%--                <a href="#" class="page_num active">3</a>--%>
<%--                <a href="#" class="page_num">4</a>--%>
<%--                <a href="#" class="page_num">5</a>--%>
<%--                <a href="#" class="page_controller"><img src="${pageContext.request.contextPath}/static/img/you.jpg"/></a>--%>
            </div>

        </div>
    </div>
</div>
<!--返回顶部-->
<%@ include file="/pages/common/gotop.jsp"%>
<!--footer-->
<%@ include file="/pages/common/footer.jsp"%>

</body>
</html>
