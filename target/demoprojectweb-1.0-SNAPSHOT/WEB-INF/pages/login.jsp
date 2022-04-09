<%-- 
    Document   : login
    Created on : Mar 22, 2022, 10:14:28 PM
    Author     : huynh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <c:if test="${msg.equals('SUCCESSFUL')==true}">
            <h1 style="color: darkblue;">${msg}</h1>
        </c:if>
        <c:if test="${msg.equals('FAIL')==true}">
            <h1 style="color: red;">${msg}</h1>
        </c:if>
          
        <form:form method="post" action="/demoprojectweb/login" modelAttribute="User" >
            Username: <form:input path="username" />
            Password: <form:password path="password"/>
           <input type="submit" value="Login" />
        </form:form>   
    </body>
</html>
