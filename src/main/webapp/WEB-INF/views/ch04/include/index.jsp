<%--
  User: namju
  Date: 2024-03-19
  Time: 오후 5:33
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>&lt;jsp:include&gt; 액션 예제</title>
</head>
<body>
<jsp:include page="header.jsp" />
본문 내용입니다.
<% request.setCharacterEncoding("UTF-8");%>
<jsp:include page="footer.jsp">
    <jsp:param name="date" value="<%=new java.util.Date()%>" />
    <jsp:param name="user" value="홍길동" />
</jsp:include>
</body>
</html>
