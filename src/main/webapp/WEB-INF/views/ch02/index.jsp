<%--
    Document : index
    Created on : 2024-03-12, 18:30:00
    Author : Namju Kim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/my_style.css">
    <title>2장</title>
</head>
<body>
<h1>첫 번째 JSP 웹 응용 프로그램</h1>
<br>
<br>
<p>
    1. JSP 주석 <%-- 이것은 JSP 주석입니다. --%>
</p>
<p>
    2. HTML 주석 <!-- 볼 수 있음 / 1 + 2 = ${1+2} -->
</p>
<p>
    3. 선언(declaration) 사용: &nbsp;
    <%!
        int a = 1;
        int b = 2;

        public String getName() {
            return "남주";
        }
    %>
    a + b = <%= a + b %>
</p>
<p>
    4. 스크립트 표현식(expression): <br>
    현재 시각: <%=new java.util.Date() %> <br>
    현재 시각 (since 1.8): <%= java.time.LocalDateTime.now().toString()%> <br>
    현재 시각 (since 1.8, no Time): <%= java.time.LocalDate.now().toString()%> <br>
    현재 시각 (since 1.8, no Date): <%= java.time.LocalTime.now().toString()%> <br>
    <%= getName() %>
</p>
<p>
    5. 스크립틀릿(scriptlet) 사용:
    <%
        int c = 3;
        int d = 4;
    %>

    c + d = <%= c + d %> <br>

    <%
        for (int i = 0; i < 5; i++) {
    %>
    i = <%= i %> &nbsp;
    <%
        }
    %>
</p>
</body>
</html>
