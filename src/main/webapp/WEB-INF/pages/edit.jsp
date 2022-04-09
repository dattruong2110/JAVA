<%-- 
    Document   : edit
    Created on : Apr 7, 2022, 6:52:49 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
    </head>
    <body>
        <h1>Edit</h1>
    <c:if test="${msg.equals('SUCCESSFUL')==true}">
        <h1 style="color: darkblue;">${msg}</h1>
    </c:if>
    <c:if test="${msg.equals('FAIL')==true}">
        <h1 style="color: red;">${msg}</h1>
    </c:if>
    
    <c:url value="/${tour.id}/edit" var="edit" />
    <form:form method="post" action="${edit}" modelAttribute="Tour" enctype="multipart/form-data" >
        Name: <form:input path="name" />
        Price: <form:input path="price"/>
        Description: <form:textarea path="description"/>
        
        Image: <form:input type="file" path="multipartFile" id="img" name="img" accept="image/*" />
        
        <input type="submit" value="Edit" />
    </form:form>   
</body>
</html>
