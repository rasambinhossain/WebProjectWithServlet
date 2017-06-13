<%-- 
    Document   : Register
    Created on : Sep 8, 2012, 4:15:48 PM
    Author     : zunaid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <script type='text/javascript'>

       
            function func(){
                var fullname = freg.fullname.value.length;
                var phone = freg.phone.value.length;
                var address = freg.address.value.length;
                var username = freg.username.value.length;
                var password = freg.password.value.length;
                
                if(fullname == 0 || phone == 0 || address == 0 || username ==0 || password ==0 ){
                    alert('Please Fill up form correctly!');
                }
            }
        </script>

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
                    <h1>Register yourself</h1>
                    <FORM name="freg" ACTION="/SpringFormProcessing/RegisterServlet" method="post"> 
                    <br>Full name :
                    <input type="text" name="fullname" >
                    <br>Phone :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name="phone">
                    <br>Address :&nbsp;&nbsp;&nbsp;
                    <input type="text" name="address">
                    <br>Username :
                    <input type="text" name="username">
                    <br>Password :
                    <input type="password" name="password">                          
            <br><br><br>
             <input type="hidden" name="action" value="REGISTRATION"/>
             <button type="submit" onclick="func()">Register</button>
             </form>
                </td>
                <td bgcolor = "" align="center">
                    
                </td>
            </tr>
            <tr>
                
            </tr>
            
        
        
            
            </table>
    </body>
</html>
