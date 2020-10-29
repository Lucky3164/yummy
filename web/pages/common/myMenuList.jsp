<%--
  Created by IntelliJ IDEA.
  User: LuckyH
  Date: 2020/9/22
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="zuo fl">
    <h3>
        <a href="#"><img src="${pageContext.request.contextPath}/static/img/tx.png"/></a>
        <p class="clearfix">
            <span class="fl">[羊羊羊]</span>
            <span class="fr">[退出登录]</span></p>
    </h3>
    <div><h4>我的交易</h4>
        <ul>
            <li><a href="${pageContext.request.contextPath}/pages/cart.jsp">我的购物车</a></li>
            <li class="on"><a href="${pageContext.request.contextPath}/pages/manager/myorderq.jsp">我的订单</a></li>
        </ul>
        <h4>个人中心</h4>
        <ul>
            <li><a href="#">我的中心</a></li>
            <li><a href="${pageContext.request.contextPath}/pages/manager/address.jsp">地址管理</a></li>
        </ul>
        <h4>账户管理</h4>
        <ul>
            <li><a href="#">个人信息</a></li>
            <li><a href="#">修改密码</a></li>
        </ul>
    </div>
</div>
