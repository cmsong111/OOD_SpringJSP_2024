<%--
  User: Namju Kim
  Date: 2024-03-19
  Time: 오후 15:30
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/my_style.css">
    <title>Java Beans 사용 예제</title>
</head>
<body>

<div class="padding_bottom_30px box center" style="width: 80%">
    Request Parameter : ${param.n}
</div>

<ul>
    <li>계산 결과 1: ${result}</li>
</ul>

<%@ include file="/WEB-INF/jspf/main_footer.jspf" %>

</body>
</html>

