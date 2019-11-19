<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:message code=""/>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title><spring:message code="app.loginpage"/></title>
		<link href="<c:url value='/resources/css/bootstrap.css' />"  rel="stylesheet"></link>
		<link href="<c:url value='/resources/css/app.css' />" rel="stylesheet"></link>
                	<link href="<c:url value='/resources/css/bootstrap2.css' />"  rel="stylesheet"></link>
		<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
	</head>

	<body>
            
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
                 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
                 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
            
            
		<div id="mainWrapper">
			<div class="login-container">
				<div class="login-card">
					<div class="login-form">
						<c:url var="loginUrl" value="/login" />
						<form action="${loginUrl}" method="post" class="form-horizontal">
							<c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p><spring:message code="app.failpwd"/></p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success">
									<p><spring:message code="app.loginout"/></p>
								</div>
							</c:if>
							<div class="input-group input-sm">
								<label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
								<input type="text" class="form-control" id="username" name="ssoId" placeholder="<spring:message code="app.user"/>" required>
							</div>
							<div class="input-group input-sm">
								<label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
								<input type="password" class="form-control" id="password" name="password" placeholder="<spring:message code="app.pwd"/>" required>
							</div>
							<div class="input-group input-sm">
                              <div class="checkbox">
                                
                                  
                <div class="dropdown">
                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><spring:message code="app.lang.title"/></button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                       <a class="dropdown-item" href="?lang=en"><spring:message code="app.lang.english"/></a> 
                       <a class="dropdown-item" href="?lang=hi"><spring:message code="app.lang.hindi"/></a>
                    </div>
                </div>
                                  
                                  
                                  <!--<label><input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label> --> 
                              </div>
                            </div>
							<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
								
							<div class="form-actions">
								<input type="submit"
									class="btn btn-block btn-primary btn-default" value="<spring:message code="app.entrar"/>">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>