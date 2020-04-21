<%--
  Created by IntelliJ IDEA.
  User: TOSHIBA
  Date: 20/04/2020
  Time: 00:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
<div class="artist-header">
    <div class="artist-profile">
        <img src="freak/user.jpg" class="user">
        <h1>Madeon</h1>
    </div>
</div>
<fmt:formatDate type="Date" value="2020-04-21 00:00:00" />

<div class="artist-contents">
    <!--ça sera repeter plusieur fois-->
    <div class="album-content">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4 ">
                    <h2>Album GoodFaith</h2>
                    <div class="blok1">
                        <img src="freak/albumGF.jpg" class="albimage">
                        <ul>
                            <li class="data">15/05/2019</li>
                            <li class="data">Good Faith</li>
                            <li class="data">12 Morceaux</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-8 col-sm-8">
                    <h2>Ensembles des morceaux</h2>
                    <table class="table table-bordered table-hover col-md-12 col-xl-12 col-sm-12">
                        <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">Titre</th>
                            <th scope="col">Genre</th>
                            <th scope="col">Longueur</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
