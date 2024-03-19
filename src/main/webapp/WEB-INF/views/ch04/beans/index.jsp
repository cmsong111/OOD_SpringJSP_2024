<%--
  User: Namju Kim
  Date: 2024-03-19
  Time: 오후 13:35\
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java Beans 사용 예제</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/my_style.css">
</head>
<body>
<h2>1부터 n까지의 합을 구하는 프로그램</h2>

<div class="padding_bottom_30px">
    context path = ${pageContext.request.contextPath} <br>
    ctx.getRealPath("/") = ${ctx_path} <br>
    request URL = ${pageContext.request.requestURL} <br>
    request URI = ${pageContext.request.requestURI}
</div>

<div class="box">
    <p>Java Bean 사용: </p>
    <!-- action 지정 추천 방식 -->
    <form action="${pageContext.request.contextPath}/ch04/beans/show_sum1" method="POST">
        n을 입력하시오 : <input type="text" name="n" value="" size="10" /> <br>
        <input type="submit" value="계산"/>
        <input type="reset" value="초기화"/>
    </form>
</div>
<br>
<br>
<br>

<div class="box">
    <p>Spring Bean 사용: </p>
    <!-- action 지정 비추천 -->
    <form action="beans/show_sum2" method="POST">
        n을 입력하시오 :
        <input type="text" name="n" value="" size="10" /><br>
        <input type="submit" value="계산" />
        <input type="reset" value="초기화" />
    </form>
</div>

<%@include file="/WEB-INF/jspf/main_footer.jspf" %>
</body>
</html>
