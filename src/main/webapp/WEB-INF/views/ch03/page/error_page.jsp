<%--
  Created by IntelliJ IDEA.
  User: cmson
  Date: 2024-03-14
  Time: 오전 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>오류 원인</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>
<body>
오류 원인은
<%
    out.println(exception.getMessage());
%>
입니다.
</body>
</html>

