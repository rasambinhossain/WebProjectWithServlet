<%-- 
    Document   : Cart
    Created on : Aug 10, 2012, 2:38:18 AM
    Author     : zunaid
--%>

<%@page import="Model.product"%>
<%@page session="true" import="java.util.*,Model.product" %>
<%
    Vector buylist = (Vector) session.getAttribute("shopping.shoppingcart");
    if (buylist != null && (buylist.size() > 0)) {
%>
<center>
    <table border="2" cellpadding="0" width="80%" bgcolor="#FFFFFF">
        <tr>
            <td><b>BRAND</b></td>
            <td><b>MODEL</b></td>
            <td><b>PRICE</b></td>
            <td><b>QUANTITY</b></td>
            <td></td>
        </tr>
        <%
            for (int index = 0; index < buylist.size(); index++) {
                product anOrder = (product) buylist.elementAt(index);
        %>
        <tr>
            <td><b><%= anOrder.getBrand()%></b></td>
            <td><b><%= anOrder.getModel()%></b></td>
            <td><b><%= anOrder.getPrice()%></b></td>
            <td><b><%= anOrder.getQuantity()%></b></td>
            <td>
                <form name="deleteForm"
                      action="ShoppingServlet"
                      method="POST">
                    <input type="submit" value="Delete">
                    <input type="hidden" name= "delindex" value='<%= index%>'>
                    <input type="hidden" name="action" value="DELETE">
                </form>
            </td>
        </tr>
        <%
            }
        %>
    </table>
    <p>
    <form name="checkoutForm"
          action="ShoppingServlet"
          method="POST">
        <input type="hidden" name="action" value="CHECKOUT">
        <input type="submit" name="Checkout" value="Checkout" >
    </form>
</center>
<%
    }
%>

