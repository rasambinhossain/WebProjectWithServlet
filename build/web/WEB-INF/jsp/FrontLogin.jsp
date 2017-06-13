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
    <body >
        <b>Enter your username and password.</b>

        <FORM ACTION="/SpringFormProcessing/loginServlet" method="post"> 
                    <br>Username :
                    <input type="text" name="username" >
                    <br>Password :
                    <input type="password" name="password">

            <br>
            <button type="submit" onclick="func(this.form)">Submit</button>
        </form>
</body>
</html>

