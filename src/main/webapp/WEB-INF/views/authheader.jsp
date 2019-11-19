<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:message code=""/>
<div class="authbar">
    <button type="button" class="btn  ml-2 w3ls-btn" data-toggle="modal" data-target="#exampleModal1"><span><spring:message code="app.login"/><strong>${loggedinuser}</strong>.</span> <span class="floatRight"><a href="<c:url value="/logout" />"><spring:message code="app.out"/></a></span></button>
	</div>
