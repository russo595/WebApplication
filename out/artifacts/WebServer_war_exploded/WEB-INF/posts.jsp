<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Rustem
  Date: 27.11.2016
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
    <title>Все посты</title>
</head>
<body>
<table>
    <c:forEach var="post" items="${requestScope.posts}">
        <tr>
            <td><c:out value="${post.id}"></c:out></td>
            <td><c:out value="${post.text}"></c:out></td>
            <td><a style="color: red" href="/deletePost?id=${post.id}">x</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
