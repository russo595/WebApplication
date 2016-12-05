<%@ page import="pkg.GuestBook" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <div>Количесвто записей - <%=GuestBook.getAllPosts().size()%></div>
  </body>
</html>
