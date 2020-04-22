<%--
  Created by IntelliJ IDEA.
  User: Abdeslam Rehaimi
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
            <br><br>
            <div >
                <a style="float: left;" class="btn btn-danger" href="${pageContext.request.contextPath}/album/" >Returne</a>
            </div>
            <br><br>
            <div class="card">
                <div class="card-header">Nouveau Album</div>
                <form:form action="${pageContext.request.contextPath}/album/save"  method="post" modelAttribute="album">
                    <div class="card-body row">

                        <form:input path="id" type="hidden" />

                        <div class="form-group col-md-6 required">
                            <label>Titre</label>
                            <form:input path="titre" type="text" name="titre" value="" class="form-control is-invalid"></form:input>
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


                        <div class="form-group col-md-6 required text-danger">
                            <label>Date Sortie</label>
                            <form:input path="dateSortie" type="date" name="dateSortie" autocomplete="off" class="form-control is-invalid"></form:input>
                            <form:errors path="dateSortie"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>


                        <div class="form-group col-md-6 required text-danger">
                            <label>Maison Disque</label>
                            <form:input path="maisondisque" type="text" name="maisondisque" autocomplete="off" class="form-control is-invalid"></form:input>
                            <form:errors path="maisondisque"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>



                        <div class="form-group col-sm-12">
                            <label>Choisis Pistes</label>
                            <form:select path="musicList"  class="form-control is-invalid"  >
                                <form:options items="${music}" id="id" itemValue="id"  itemLabel="titre" />
                            </form:select>
                            <form:errors path="musicList"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>

                        <div class="form-group col-sm-12">
                            <label>Choisis Artiste</label>
                            <form:select path="artiste.id"  class="form-control is-invalid"  >
                                <form:options items="${artiste}" id="id" itemValue="id"  itemLabel="artistnom" />
                            </form:select>
                            <form:errors path="artiste"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>


                        <div class="form-group col-sm-12  ">
                            <label>Image</label>
                            <form:select path="image" name="image"  class="form-control"  >
                                <form:option value="">Choisirs</form:option>
                                <form:option value="goodfaith.jpg">Album 1</form:option>
                                <form:option value="image1.jpg">Album 2</form:option>
                                <form:option value="image2.jpg">Album 3</form:option>
                                <form:option value="image3.jpg">Album 4</form:option>
                                <form:option value="image4.jpg">Album 5</form:option>
                                <form:option value="image5.jpg">Album 6</form:option>
                                <form:option value="image6.jpg">Album 7</form:option>
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
