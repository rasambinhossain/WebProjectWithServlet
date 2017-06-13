<%-- 
    Document   : Login
    Created on : Aug 11, 2012, 7:55:09 PM
    Author     : AuMi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <HEAD> 
        <TITLE>Login</TITLE>
        <script language="javascript">
            function func(form)
            {
                var len= form.username.value.length;
                var len2=form.password.value.length;
                if(len == 0 || len2 ==0)
                    alert(' Please fill the user login form correctly\n    Do not keep any Blank  fields ');
            }
      </script>
    </HEAD> 
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
                     <b>Enter your username and password.</b>

        <FORM ACTION="Checkout"> 
                    <br>Username :
                    <input type="text" name="username" >
                    <br>Password :
                    <input type="password" name="password">

            <br>
            <button type="submit" onclick="func(this.form)">Submit</button>
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

