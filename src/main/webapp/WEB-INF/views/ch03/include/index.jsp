<%--
  Created by IntelliJ IDEA.
  User: cmson
  Date: 2024-03-14
  Time: 오전 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html public "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Include Test 프로젝트</title>
</head>
<body>
<%@ include file="header.jspf" %>
본문이 들어갑니다.
<jsp:directive.include file="footer.jsp" />
</body>
</html>
