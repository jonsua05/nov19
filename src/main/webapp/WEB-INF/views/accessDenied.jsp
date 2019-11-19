<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:message code=""/>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <title>Error</title>
    <style>
        .main-container {
            width: 100vw;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #5a6268;
        }
        .container-error {
            padding: 10px;
            background-color: white;
            text-align: center;
            width: 500px;
            height: 550px;
            border-radius: 20px;
            box-shadow: 5px 5px 5px rgba(0, 0, 0, .2)
        }
        .container-error img {
            height: 350px;
            width: 350px;
        }
        .container-error h2 {
            font-family: 'sans-serif';
            color: #171717;
        }
        .container-error a {
            /* text-decoration: none; */
            color: #171717;
        }
        body {
  background-color: #5a6268;
}
    </style>
</head>
<body>
    <div class="main-container">
        <div class="container-error">

<h2>${loggedinuser}, <spring:message code="app.denieduser"/></h2>
            <img src="https://cdn3.iconfinder.com/data/icons/unigrid-phantom-human-vol-2/60/011_092_block_lock_user_human_avatar-256.png" alt="">
            <p>
                <a href="<c:url value="/logout" />"><spring:message code="app.out"/></a>
                <a href="<c:url value="/list" />"><spring:message code="app.home"/></a>
            </p>
        </div>
    </div>
</body>
</html>
</html>