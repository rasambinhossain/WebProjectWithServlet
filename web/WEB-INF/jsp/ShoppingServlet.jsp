<%-- 
    Document   : ShoppingServlet
    Created on : Sep 8, 2012, 9:55:02 AM
    Author     : AuMi
--%>

<%@page import="Model.product"%>
<%@page import="Model.Option"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session = request.getSession(false);
    if (session == null) {
        response.sendRedirect("error");
    }

    Vector buylist = (Vector) session.getAttribute("shopping.shoppingcart");
    String action = request.getParameter("action");
    Option test = new Option();
    if (!action.equals("CHECKOUT")) {
        if (action.equals("DELETE")) {
            String del = request.getParameter("delindex");
            int d = (new Integer(del)).intValue();
            buylist = test.delete(d, buylist);
        } else if (action.equals("ADD")) {
            String myCd = request.getParameter("CD");
            String qty = request.getParameter("qty");
            product aCD = test.getCD(myCd, qty);
            buylist = test.add(aCD, buylist);
        }
        session.setAttribute("shopping.shoppingcart", buylist);
        response.sendRedirect("Product");

    } else if (action.equals("CHECKOUT")) {
        String amount = test.check(buylist);
        session.setAttribute("amount", amount);
        //String usr = session.getAttribute("usr").toString();
        //if(usr!=null){
           
        //}
        //else{
            response.sendRedirect("Login");
        }
   
%>
