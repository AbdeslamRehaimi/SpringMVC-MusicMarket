<%--
  Created by IntelliJ IDEA.
  User: TOSHIBA
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
            <div class="card">
                <div class="card-header">Nouveau Artist</div>
                <form:form action="save"  method="post" modelAttribute="artist">
                    <div class="card-body row">

                        <div class="form-group col-md-6 required">
                            <label>Nom Reel</label>
                            <form:input path="nomreel" type="text" name="nomreel"  class="form-control "></form:input>
                            <form:errors path="nomreel"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>

                        <div class="form-group col-md-6 required">
                            <label>Artist Nom</label>
                            <form:input path="artistnom" type="text" name="artistnom"  class="form-control "></form:input>
                            <form:errors path="artistnom"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>


                        <div class="form-group col-sm-12 required text-danger">
                            <label>Email</label>
                            <form:input path="email" type="text" name="email" value="" class="form-control is-invalid"></form:input>
                            <form:errors path="email"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>


                        <div class="form-group col-sm-12">
                            <label>Nationaliter</label>
                            <form:select path="nationaliter" name="nationaliter" class="form-control">
                                <form:option value="">-</form:option>
                                <form:option value="France">France</form:option>
                                <form:option value="Ukraine">Ukraine</form:option>
                                <form:option value="Sweeden">Sweeden</form:option>
                                <form:option value="Morocco">Morocco</form:option>
                            </form:select>
                            <form:errors path="nationaliter"  class="invalid-feedback"  cssStyle="color: red" />
                        </div>


                        <div class="form-group col-sm-12  ">
                            <label>Image</label>
                            <form:select path="image" name="image"  class="form-control"  >
                                <form:option value="No Image Provided !">Choisirs</form:option>
                                <form:option value="madeon.jpg">Madeon</form:option>
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
