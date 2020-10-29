<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
    <%@ include file="/pages/common/head.jsp"%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/myorder.css" type="text/css"/>
<%--    <script src="${pageContext.request.contextPath}/static/js/cart.js"></script>--%>
</head>
<body>

    商品id:
        <input type="text" id="product_id" name="product_id" />
    <button id="product_submit">Submit</button>

    <br>

    <a href="${pageContext.request.contextPath}/pages/cart.jsp">购物车</a>

<%--<%=basePath%>--%>

<%--
GET /yummy/static/css/myorder.css HTTP/1.1
Referer: http://localhost:8080/yummy/
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36
--%>
<%--
GET /yummy/static/css/bootstrap.min.css HTTP/1.1
Host: localhost:8080
Connection: keep-alive
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36
Accept: text/css,*/*;q=0.1
Sec-Fetch-Site: same-origin
Sec-Fetch-Mode: no-cors
Sec-Fetch-Dest: style
Referer: http://localhost:8080/yummy/
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9
Cookie: JSESSIONID=CA3CAC7B01E72D79C9CBCC29A6762163; Idea-2baa5ea=323e7e82-55b8-412f-8b98-e6ff431f3c11; Webstorm-d3fb47b1=b346c20d-fa56-4b44-82fd-496bcd1d1c4c
--%>
<%--
GET /yummy/static/css/myorder.css HTTP/1.1
Host: localhost:8080
Connection: keep-alive
Cache-Control: max-age=0
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9
Sec-Fetch-Site: same-origin
Sec-Fetch-Mode: navigate
Sec-Fetch-User: ?1
Sec-Fetch-Dest: document
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9
Cookie: JSESSIONID=CA3CAC7B01E72D79C9CBCC29A6762163; Idea-2baa5ea=323e7e82-55b8-412f-8b98-e6ff431f3c11; Webstorm-d3fb47b1=b346c20d-fa56-4b44-82fd-496bcd1d1c4c
If-None-Match: W/"9693-1599216420000"
If-Modified-Since: Fri, 04 Sep 2020 10:47:00 GMT
--%>
<%--
GET /yummy/static/css/bootstrap.min.css HTTP/1.1
Host: localhost:8080
Connection: keep-alive
Cache-Control: max-age=0
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9
Sec-Fetch-Site: same-origin
Sec-Fetch-Mode: navigate
Sec-Fetch-User: ?1
Sec-Fetch-Dest: document
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9
Cookie: JSESSIONID=CA3CAC7B01E72D79C9CBCC29A6762163; Idea-2baa5ea=323e7e82-55b8-412f-8b98-e6ff431f3c11; Webstorm-d3fb47b1=b346c20d-fa56-4b44-82fd-496bcd1d1c4c
--%>





</body>
</html>
