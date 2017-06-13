<%-- 
    Document   : Logout
    Created on : Sep 8, 2012, 11:06:28 PM
    Author     : zunaid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
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
                <td> <%
        session.invalidate();
         %>
        <h1>You are now logged out. go to our home page</h1>
        <a href="Eshop">Go to our home page</a>
                       
            <br><br><br>
                </td>
                <td bgcolor = "" align="center">
                    
                </td>
            </tr>
            <tr>
                
            </tr>
            
        
        
            
            </table>
    </body>
</html>
