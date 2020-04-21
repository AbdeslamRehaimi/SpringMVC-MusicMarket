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
            <div class="card">
                <div class="card-header">Morceau Musical</div>
                    <form:form action="save"  method="post" modelAttribute="music">
                    <div class="card-body row">

                        <div class="form-group col-md-6 required">
                            <label>Titre</label>
                            <form:input path="titre" type="text" name="titre"  class="form-control "></form:input>
                            <form:errors path="titre"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>

                        <div class="form-group col-md-6 required ">
                            <label>Genre</label>
                            <form:select path="genre" name="module" class="form-control"  >
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
                            <form:input path="longueur" type="text" name="longueur"  class="form-control"></form:input>
                            <form:errors path="longueur"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>

                        <div class="form-group col-sm-12 required ">
                            <label>Artists Participer</label>
                            <form:input path="artistsparticiper" type="text" name="artistsparticiper"  class="form-control"></form:input>
                            <form:errors path="artistsparticiper"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>


                        <div class="form-group col-sm-12  ">
                            <label>Image</label>
                            <form:input path="image" type="text" name="image" placeholder="Path image" class="form-control"></form:input>
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
