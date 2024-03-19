<%--
  User: namju
  Date: 2024-03-19
  Time: 오후 5:33
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>&lt;jsp:forward&gt; 액션 예제</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String user = request.getParameter("user");
    if (user == null || user.isEmpty()) {
%>

사용자가 지정되지 않았습니다. 사용자 이름을 입력해 주시기 바랍니다.

<form method="POST">
    이름: <input type="text" name="user" value=""/>
    <input type="submit" value="입력"/>
</form>

<%
} else {
%>
<jsp:forward page="process.jsp"/>
<%
    }
%>
<%@include file="/WEB-INF/jspf/main_footer.jspf" %>
</body>
</html>
