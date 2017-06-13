<%-- 
    Document   : Eshop
    Created on : Aug 10, 2012, 2:38:05 AM
    Author     : AuMi
--%>

<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection"%>
<%@page session="true" %>
<html>
    <head>
        <title>Gadgets</title>
    </head>
    <body  background="Untitled.jpg">
        <table>
        <tr>
            <td bgcolor="" ></td>
            <td bgcolor="#000000 " ></td>
            <td bgcolor="" ></td>

            </tr>
            <tr>
                <td width="385"></td>
                <font face="Times New Roman,Times" size="+3">
        Gadget and Gear Online Shopping
        </font>
        <hr><p>

    <center>
         <a href="Eshop">Go to our home page</a>
        <form name="shoppingForm" action="ShoppingServlet" method="post">
            <b>Gadgets:</b>
            <select name=CD>

                <jsp:useBean   id="db"  class="JavaBean.JavaDBConnection"  />
                <%
                    Connection connect = db.getConnection();
                    if (connect != null) {
                        System.out.println("Java DB Connection successful");
                    } else {
                        System.out.println("Java DB Connection unsuccessful");
                    }
                    java.sql.Statement stm = connect.createStatement();
                    String sql = "select * from music_shop.products";
                    ResultSet rs = (ResultSet) stm.executeQuery(sql);
                    while (rs.next()) {
                %>
                <option>
                    <%
                        out.println(rs.getString("brand") + " | ");
                        out.println(rs.getString("model") + " | ");                       
                        out.println(rs.getString("price"));
                    %>
                </option>
                <%
                    }
                %>
            </select>
            <b>Quantity: </b>
            <input type="text" name="qty" SIZE="3" value=1>
            <input type="hidden" name="action" value="ADD">
            <input type="submit" name="Submit" value="Add to Cart">
       
    </center>
    <p>
        <jsp:include page="Cart.jsp" flush="true" />
        <td></td>
            </tr>
            <tr>
                
            </tr>
        
        </table>
    </body>
</html>


