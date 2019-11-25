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
	<title><spring:message code="app.titleregistry"/></title>
        		<link href="<c:url value='/resources/css/bootstrap.css' />"  rel="stylesheet"></link>
	<link href="<c:url value='/resources/css/bootstrap2.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/resources/css/app.css' />" rel="stylesheet"></link>
<a href="creardonacion.jsp"></a>
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

		<div class="well lead"><spring:message code="app.titleregistry"/></div>
	 	<form:form method="POST" modelAttribute="donacion" class="form-horizontal">
			<form:input type="hidden" path="id" id="id"/>
			
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="nombre"><spring:message code="app.nombcreacion"/></label>
					<div class="col-md-7">
						<form:input type="text" path="nombre" id="nombre" class="form-control input-sm"/>
						<div class="has-error">
							<form:errors path="nombre" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="descripcion"><spring:message code="app.descripcion"/></label>
					<div class="col-md-7">
						<form:input type="text" path="descripcion" id="descripcion" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="descripcion" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
	
			<div class="row">
				<div class="form-actions floatRight">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="<spring:message code="app.updatere"/>" class="btn btn-primary btn-sm"/><spring:message code="app.or"/><a href="<c:url value='/list' />"><spring:message code="app.cancel"/></a>
						</c:when>
						<c:otherwise>
							<input type="submit" value="<spring:message code="app.register"/>" class="btn btn-primary btn-sm"/><spring:message code="app.or"/><a href="<c:url value='/list' />"><spring:message code="app.cancel"/></a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>