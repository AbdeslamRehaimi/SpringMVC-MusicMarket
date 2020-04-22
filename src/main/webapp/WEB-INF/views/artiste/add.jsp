<%--
  Created by IntelliJ IDEA.
  User: Abdeslam Rehaimi
  Date: 21/04/2020
  Time: 00:56
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
                <a style="float: left;" class="btn btn-danger" href="${pageContext.request.contextPath}/artiste/" >Returne</a>
            </div>
            <br><br>
            <div class="card">
                <div class="card-header">Nouveau Artist</div>
                <form:form action="${pageContext.request.contextPath}/artiste/save"  method="post" modelAttribute="artiste">
                    <div class="card-body row">
                        <form:input path="id" type="hidden" />

                        <div class="form-group col-md-6 required">
                            <label>Nom Reel</label>
                            <form:input path="nomreel" type="text" name="nomreel" value="" class="form-control is-invalid"></form:input>
                            <form:errors path="nomreel"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>

                        <div class="form-group col-md-6 required">
                            <label>Artist Nom</label>
                            <form:input path="artistnom" type="text" name="artistnom" value=""  class="form-control is-invalid"></form:input>
                            <form:errors path="artistnom"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>


                        <div class="form-group col-sm-12 required text-danger">
                            <label>Email</label>
                            <form:input path="email" type="text" name="email" value="" class="form-control is-invalid"></form:input>
                            <form:errors path="email"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>


                        <div class="form-group col-sm-12">
                            <label>Nationaliter</label>
                            <form:select path="nationaliter" name="nationaliter" class="form-control is-invalid">
                                <form:option value="">-</form:option>
                                <form:option value="France">France</form:option>
                                <form:option value="Ukraine">Ukraine</form:option>
                                <form:option value="Sweeden">Sweeden</form:option>
                                <form:option value="Morocco">USA</form:option>
                                <form:option value="Morocco">Canada</form:option>
                                <form:option value="Morocco">Italy</form:option>
                                <form:option value="Morocco">Morocco</form:option>
                            </form:select>
                            <form:errors path="nationaliter"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>


                        <div class="form-group col-sm-12  ">
                            <label>Image</label>
                            <form:select path="image" name="image"  class="form-control "  >
                                <form:option value="">Choisirs</form:option>
                                <form:option value="madeon.jpg">Artiste 1</form:option>
                                <form:option value="image7.jpg">Artiste 2</form:option>
                                <form:option value="image2.jpg">Artiste 3</form:option>
                                <form:option value="image3.jpg">Artiste 4</form:option>
                                <form:option value="image4.jpg">Artiste 5</form:option>
                                <form:option value="image5.jpg">Artiste 6</form:option>
                                <form:option value="image6.jpg">Artiste 7</form:option>
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
