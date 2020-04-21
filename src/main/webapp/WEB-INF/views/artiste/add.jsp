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
                <form action="login" cssClass="form-horizontal" method="get" modelAttribute="user">
                    <div class="card-body row">

                        <div class="form-group col-md-6 required text-danger">
                            <label>Nom Reel</label>
                            <input type="text" name="reelnom" value="" class="form-control is-invalid">
                            <div class="invalid-feedback">validation.required</div>
                        </div>

                        <div class="form-group col-md-6 required text-danger">
                            <label>Artist Nom</label>
                            <input type="text" name="artistnom" value="" class="form-control is-invalid">
                            <div class="invalid-feedback">validation.required</div>
                        </div>


                        <div class="form-group col-sm-12 required text-danger">
                            <label>Email</label>
                            <input type="text" name="email" value="" class="form-control is-invalid">
                            <div class="invalid-feedback">validation.required</div>
                        </div>


                        <div class="form-group col-sm-12">
                            <label>Nationaliter</label>
                            <select name="nationaliter" class="form-control">
                                <option value="">-</option>
                                <option value="France">France</option>
                                <option value="Ukraine">Ukraine</option>
                                <option value="Sweeden">Sweeden</option>
                                <option value="Morocco">Morocco</option>
                            </select>
                        </div>


                        <div class="form-group col-sm-12 required text-danger">
                            <label>Image</label>
                            <input type="text" name="text" value="" class="form-control is-invalid">
                            <div class="invalid-feedback">validation.required</div>
                        </div>

                        <div class="form-group col-md-12">
                            <a class="btn btn-success btn-block" href="index.html">Valider</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
