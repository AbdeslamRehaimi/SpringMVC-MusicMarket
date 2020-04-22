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
    <style>
        h1 {
            color: #fff70a;
        }

        h2 {
            color: chocolate;
        }
        hr {
            width: 150px;
            border: 5px solid #48ff0c;
        }


        input{
            border-radius: 50px;
        }
    </style>
</head>
<body>
<div class="artist-header">
    <div class="artist-profile">
        <img src="<c:url value="/resources/images/artists/${album.artiste.image}"/>" class="user">
        <h1>Madeon</h1>
    </div>
</div>

<div class="artist-contents">
    <!--ça sera repeter plusieur fois-->
    <div class="album-content">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4 ">
                    <h2>Album ${album.titre}</h2>
                    <div class="blok1">
                        <img src="<c:url value="/resources/images/albums/${album.image}"/>" class="albimage">
                        <ul>
                            <li class="data">${album.dateSortie}</li>
                            <li class="data">${album.titre}</li>
                            <li class="data">${album.musicList.size()} Morceaux</li>
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
                        <c:forEach var="musica" items="${album.musicList}">
                            <tr>
                                <th scope="row">${musica.id}</th>
                                <td>${musica.titre}</td>
                                <td>${musica.genre}</td>
                                <td>${musica.longueur}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div>
        <a style="float: left;" class="btn btn-danger" href="/SpringMVC_MusicMarket_war/album/">Returne</a>
    </div>
</div>
</body>
</html>
