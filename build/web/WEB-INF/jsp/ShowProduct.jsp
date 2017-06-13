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
    <body background="Untitled.jpg">
        
        <table> 
         <tr>
            <td bgcolor="" ></td>
            <td bgcolor="#000000 " ><img src="logo.jpg" width="700" ></td>
            <td bgcolor="" ></td>

            </tr>
            <tr>
                <td bgcolor = "" align="center" width="385">
                    
                </td>
                <td bgcolor = "#F0F0F0" align="center">
                     <h3>${message}</h3>
        <br/>
       
            <tr align="center">
                <th align="right">Brand</th>
                <th align="center">Model</th>
                <th align="left">Price</th>                
            </tr>
            <c:forEach items="${Products}" var="prod">
                <tr align="center">
                    <td align="right"><c:out value="${prod.brand}"></c:out></td>
                    <td align="center"><c:out value="${prod.model}"></c:out></td>
                    <td align="left"><c:out value="${prod.price}"></c:out></td>
                </tr>
            </c:forEach>

                </td>
                <td bgcolor = "" align="center">
                    
                </td>
                
            </tr>
            <tr>
                 <a align="center" href="Eshop">Go to our home page</a>
            </tr>

       
</table>
    </body>
</html>

    </body>
</html>
