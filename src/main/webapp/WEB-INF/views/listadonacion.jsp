<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:message code=""/>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Donaciones List</title>
        <link href="<c:url value='/resources/css/bootstrap.css' />"  rel="stylesheet"></link>
	<link href="<c:url value='/resources/css/bootstrap2.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/resources/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
    
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
                 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
                 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
                <div class="dropdown">
                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><spring:message code="app.lang.title"/></button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                       <a class="dropdown-item" href="?lang=en"><spring:message code="app.lang.english"/></a> 
                       <a class="dropdown-item" href="?lang=hi"><spring:message code="app.lang.hindi"/></a>
                    </div>
                </div>
                    
                    
	<div class="generic-container">
		<%@include file="authheader.jsp" %>	
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead"><spring:message code="app.listadonacion"/></span></div>
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th><spring:message code="app.nombcreacion"/></th>
				        <th><spring:message code="app.descripcion"/></th>

				        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
				        	<th width="100"></th>
				        </sec:authorize>
				        <sec:authorize access="hasRole('ADMIN')">
				        	<th width="100"></th>
				        </sec:authorize>
				        
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${donaciones}" var="donacion">
					<tr>
						<td>${donacion.nombre}</td>
						<td>${donacion.descripcion}</td>
						
					    <sec:authorize access=" hasRole('DBA')">
							<td><a href="<c:url value='/aplicar${user.ssoId}' />" class="btn btn-success custom-width"><spring:message code="app.aplicar"/></a></td>
				        </sec:authorize>
				        <sec:authorize access="hasRole('ADMIN')">
							<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width"><spring:message code="app.delete"/></a></td>
        				</sec:authorize>
					</tr>
				</c:forEach>
	    		</tbody>
	    	</table>
		</div>
		<sec:authorize access="hasRole('ADMIN')">
		 	<div class="well">
                            
                            <button type="button" class="btn  ml-2 w3ls-btn" data-toggle="modal" data-target="#exampleModal1">
                                <a class="nav-link" href="<c:url value='/newuser' />"><spring:message code="app.addnewuser"/></a></button>
                            <button type="button" class="btn  ml-2 w3ls-btn" data-toggle="modal" data-target="#exampleModal1">
                                <a class="nav-link" href="<c:url value='/anadirdonacion' />"><spring:message code="app.adddonacion"/></a></button>
                            <button type="button" class="btn  ml-2 w3ls-btn" data-toggle="modal" data-target="#exampleModal1">
                                <a class="nav-link" href="<c:url value='/list' />"><spring:message code="app.home"/></a></button>
		 	</div>
	 	</sec:authorize>
                		<sec:authorize access="hasRole('DBA') or hasRole('USER')">
		 	<div class="well">
                            <button type="button" class="btn  ml-2 w3ls-btn" data-toggle="modal" data-target="#exampleModal1">
                                <a class="nav-link" href="<c:url value='/list' />"><spring:message code="app.home"/></a></button>
		 	</div>
	 	</sec:authorize>
   	</div>
</body>
</html>