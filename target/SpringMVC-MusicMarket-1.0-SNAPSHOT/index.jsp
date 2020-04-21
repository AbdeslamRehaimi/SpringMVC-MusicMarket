<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Title</title>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
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
<body style="background-color: #000000d1;">

<div class="container">
    <fieldset>
        <div style="text-align: center;">
            <h1> <span style="color: #ffffff;">SpringMVC</span> Music Market </h1>
        </div>
        <hr />
    </fieldset>

    <fieldset>
        <legend></legend>
        <br><br><br><br><br>
        <div style="text-align: center;"><h1>Bienvenu</h1></div>

        <div style="text-align: center;">
            <input  type="button" value="Begin Adventure"
                    onclick="window.location.href='user/login'; return false;"
                    class="btn btn-primary" />
        </div>
    </fieldset>
</div>

</body>
</html>