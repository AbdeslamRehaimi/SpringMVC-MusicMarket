<%--
  Created by IntelliJ IDEA.
  User: TOSHIBA
  Date: 20/04/2020
  Time: 00:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Title</title>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
<div class="container">
    <div class="row">

        <div class="col-md-6 offset-3 ">
            <br><br><br>
            <div >
                <a style="float: left;" class="btn btn-danger" href="${pageContext.request.contextPath}/music/" >Returne</a>
            </div>
            <br><br>
            <div class="card">
                <div class="card-header">Morceau Musical</div>
                    <form:form action="${pageContext.request.contextPath}/music/save"  method="post" modelAttribute="music">
                    <div class="card-body row">

                        <form:input path="id" type="hidden" />

                        <div class="form-group col-md-6 required">
                            <label>Titre</label>
                            <form:input path="titre" type="text" name="titre"  class="form-control is-invalid"></form:input>
                            <form:errors path="titre"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>

                        <div class="form-group col-md-6 required ">
                            <label>Genre</label>
                            <form:select path="genre" name="module" class="form-control is-invalid"  >
                                <form:option value="">-----</form:option>
                                <form:option value="Dance/EDM">Dance/EDM</form:option>
                                <form:option value="Disco">Disco</form:option>
                                <form:option value="Jazz">Jazz</form:option>
                                <form:option value="Pop">Pop</form:option>
                                <form:option value="Funk">Funk</form:option>
                                <form:option value="Dubstep">Dubstep</form:option>
                                <form:option value="Deathstep">Deathstep</form:option>
                                <form:option value="Other">Other</form:option>
                            </form:select>
                            <form:errors path="genre"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>


                        <div class="form-group col-sm-12 required ">
                            <label>Longueur</label>
                            <form:input path="longueur" type="text" name="longueur"  class="form-control is-invalid"></form:input>
                            <form:errors path="longueur"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>

                        <div class="form-group col-sm-12 required ">
                            <label>Artists Participer</label>
                            <form:input path="artistsparticiper" type="text" name="artistsparticiper"  class="form-control is-invalid"></form:input>
                            <form:errors path="artistsparticiper"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>


                        <div class="form-group col-sm-12  ">
                            <label>Image</label>
                            <form:select path="image" name="image"  class="form-control is-invalid"  >
                                <form:option value="">Choisirs</form:option>
                                <form:option value="madeon.jpg">Artiste 1</form:option>
                                <form:option value="image1.jpg">Artiste 2</form:option>
                                <form:option value="image2.jpg">Artiste 3</form:option>
                                <form:option value="image3.jpg">Artiste 4</form:option>
                                <form:option value="image4.jpg">Artiste 5</form:option>
                                <form:option value="image5.jpg">Artiste 6</form:option>
                                <form:option value="image6.jpg">Artiste 7</form:option>
                                <form:option value="image7.jpg">Artiste 8</form:option>
                                <form:option value="No Image Provided !">Aucun</form:option>
                            </form:select>
                        </div>

                        <div class="form-group col-md-12">
                            <form:button class="btn btn-success btn-block">Valider</form:button>
                        </div>
                    </div>
                    </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
