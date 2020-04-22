<%--
  Created by IntelliJ IDEA.
  User: Abdeslam Rehaimi
  Date: 20/04/2020
  Time: 00:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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



        .page-header {
            position: relative;
            overflow: hidden;
            height: 324px;
            z-index: 1;
            box-sizing: border-box;
            vertical-align: top;
            background-color: #350000;
        }
        .spacing {
            padding-top: 80px;
            width: 100%;
            position: relative;
            display: grid;
            grid-template-columns: 100%;
            justify-items: center;
            z-index: 2;
        }
    </style>
</head>
<body style="background-color: #e6eaec;">
    <div class="page-header">
        <div class="spacing">
        <fieldset>
            <div style="text-align: center;">
                <h1> <span style="color: #ffffff;">SpringMVC</span> Music Market </h1>
            </div>
            <hr />
            <h3 style=" text-align: center; margin-top: 80px; color: aliceblue; ">Ensemble Morceau Musicaux Disponible</h3>
        </fieldset>
        </div>
    </div>
    <div class="container" style="margin-top: 25px" >
        <div class="row">
    <div class="col-md-12">

        <input type="button" style="float: left;border-radius: 50px;" value="Nouveau Music"
               onclick="window.location.href='${pageContext.request.contextPath}/music/add'; return false;"
               class="btn btn-primary" />

        <input type="button" style="float: right;border-radius: 50px;" value="Consultation Albums"
               onclick="window.location.href='${pageContext.request.contextPath}/album/'; return false;"
               class="btn btn-primary" />

        <br/><br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div style="color: black" class="panel-title">Morceau Musicaux</div>
            </div>
            <div class="panel-body">
                <table class="table table-bordered table-hover  ">
                    <tr>
                         <th>Image</th>
                        <th>Titre</th>
                        <th>Artistes Participer</th>
                        <th>Genre</th>
                        <th>Longueur</th>

                        <th>Action</th>
                    </tr>
                    <c:forEach items="${pageable.content}" var="item">
                        <tr>
                             <td>

                                <c:choose>
                                    <c:when test="${item.image.length()<12}">
                                        <div style="text-align: center;">
                                            <img width="50px" height="50px" style="border-radius: 50%;" src="<c:url value="/resources/images/music/${item.image}"/>" alt="image">
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        ${item.image}
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>${item.titre}</td>
                            <td>${item.artistsparticiper}</td>
                            <td>${item.genre} </td>
                            <td>${item.longueur} </td>


                            <td>
                                <a href="${pageContext.request.contextPath}/music/delete/${pageable.number}/${item.id}" class="btn btn-danger"
                                   onclick="if (!(confirm('Voulez vous vraiment supprimer ce morceau musicaux?'))) return false">Delete</a>
                                <a href="${pageContext.request.contextPath}/music/add/${item.id}" class="btn btn-success">Modifier</a>
                            </td>
                        </tr>

                    </c:forEach>
                </table>

                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <c:choose>
                            <c:when test="${pageable.number !=0 }">
                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/music/page/${pageable.number-1 }">Previous</a></li>
                            </c:when>
                        </c:choose>
                        <c:forEach begin="0"   end="${pageable.totalPages -1}" var="i">
                            <c:choose>
                                <c:when test="${pageable.number ==i }">
                                    <li class="page-item disabled"><a class="page-link" href="${pageContext.request.contextPath}/music/page/${i}">${i}</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/music/page/${i}">${i}</a></li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                        <c:choose>
                            <c:when test="${pageable.number <pageable.totalPages-1 }">
                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/music/page/${pageable.number+1 }">Next</a></li>
                            </c:when>
                        </c:choose>
                    </ul>
                </nav>

            </div>
        </div>
    </div>
        </div>
</div>

</body>
</html>
