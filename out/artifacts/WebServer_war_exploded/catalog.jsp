<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Rustem
  Date: 05.12.2016
  Time: 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
    <title>Catalog</title>
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>

<div class="row">
    <div class="col-md-6 col-md-offset-3">

        <div class="modal-header">
            <nav>
                <ul class="nav nav-pills pull-right">
                    <li class="nav-item">
                        <a class="nav-link" href="home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about">About</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Catalog</a>
                    </li>
                </ul>
            </nav>
            <h3 class="text-muted">Каталог</h3>
        </div>


        <div class="well text-center">
            <h1>Краткое описание страницы</h1>
        </div>

        <table class="table table-striped">
            <tr>
                <th>#</th>
                <th>Текст</th>
                <th>Удалить из БД</th>
            </tr>
            <c:forEach var="post" items="${requestScope.posts}">
                <tr>
                    <td><c:out value="${post.id}"></c:out></td>
                    <td><c:out value="${post.text}"></c:out></td>
                    <td><a style="color: red" href="/deletePost?id=${post.id}">x</a></td>
                </tr>
            </c:forEach>
        </table>

        <footer class="navbar-fixed-bottom panel-footer carousel-inner">
            <p>&copy; Company 2016</p>
        </footer>
    </div>
</div>
</body>
</html>
