<%-- 
    Document   : user
    Created on : Sep 2, 2012, 10:49:30 AM
    Author     : Offfice
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${message}</title>
    </head>
    <body>
        <h3>${message}</h3>
        <br/>
        <table>
            <tr>
                <th>Username</th>
                <th>Fullname</th>
                <th>Phone</th>
                <th>Address</th>
                <th>Password</th>
                
            </tr>
            <c:forEach items="${User}" var="user">
                <tr>
                    <td><c:out value="${user.username}"></c:out></td>
                    <td><c:out value="${user.fullname}"></c:out></td>
                    <td><c:out value="${user.phone}"></c:out></td>
                    <td><c:out value="${user.address}"></c:out></td>
                    <td><c:out value="${user.password}"></c:out></td>
                   
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

    </body>
</html>
