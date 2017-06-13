<%-- 
    Document   : Checkout
    Created on : Aug 10, 2012, 2:38:30 AM
    Author     : Zunaid
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.product"%>
<%@page session="true" import="java.util.*,Model.product" %>
<html>
    <head>
        <title>Music Checkout</title>
    </head>
    <body background="Untitled.jpg">
        <font face="Times New Roman,Times" size=+3>
        
    <center>
        <jsp:useBean   id="db"   class="JavaBean.JavaDBConnection"  />
        <%
            boolean flag = false;
            Connection connect = db.getConnection();
            if (connect != null) {
                System.out.println("Java DB Connection successful");
            } else {
                System.out.println("Java DB Connection unsuccessful");
            }
            java.sql.Statement stm = connect.createStatement();
            String sql = "select * from music_shop.user";
            String name = request.getParameter("username");
            String pass = request.getParameter("password");
                    ResultSet rs = (ResultSet) stm.executeQuery(sql);
            while (rs.next()) {
            if (rs.getString("username").equalsIgnoreCase(name) && rs.getString("password").equalsIgnoreCase(pass)) {
                flag = true;
                break;
              }
            }
                                       
            if (flag == true) {
        %>
        <tr>
            <td width="50"></td>
            <td bgcolor="#000000 " ></td>
            <td bgcolor="#000000 " ><img src="logo.jpg" width="700" ></td>
            <td bgcolor="#00000" ></td>
            </tr>
        <br>Your Gadget Online shopping cart
        </font>
        <hr><p>
        <center>
            <table border="2" cellpadding="0" width="100%" bgcolor="#FFFFFF">
                <tr>
                    <td><b>BRAND</b></td>
                    <td><b>MODEL</b></td> 
                    <td><b>PRICE</b></td>
                    <td><b>QUANTITY</b></td>
                    <td></td>
                </tr>
                <%
                    Vector buylist = (Vector) session.getAttribute("shopping.shoppingcart");
                    String amount = (String) session.getAttribute("amount");
                    
                    for (int i = 0; i < buylist.size(); i++) {
                        product anOrder = (product) buylist.elementAt(i);
                %>
                <tr>
                    <td><b><%= anOrder.getBrand()%></b></td>
                    <td><b><%= anOrder.getModel()%></b></td>
                    <td><b><%= anOrder.getPrice()%></b></td>
                    <td><b><%= anOrder.getQuantity()%></b></td>
                </tr>
                <%
                    }
                    session.invalidate();
                %>
                <tr>
                    <td>     </td>
                    
                    <td><b>TOTAL</b></td>
                    <td><b>$<%= amount%></b></td>
                    
                    <td>     </td>
                </tr>
            </table><br><br>
            <table>
            <td></td>
                <td bgsolor="#FFFFF">
            
            <a href="Product"><img src="ShopMore.jpg" width="150"></a>
            <br><br><br><br>
             <a href="Eshop">Go to our home page</a>
            
            
                </td>
            <td></td>
            </table>
        </center>

        <%
        }
         
         else {
           response.sendRedirect("ErrorLogin");          }
        %>
    </body>
</html>
