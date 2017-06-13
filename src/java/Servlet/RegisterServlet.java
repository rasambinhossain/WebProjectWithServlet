/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Servlet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Tushar
 */
public class RegisterServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet resister</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet resister at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected  void doPost(HttpServletRequest request, HttpServletResponse response)
                                 throws ServletException, IOException{
    response.setContentType("text/html");
    PrintWriter pw = response.getWriter();
    String connectionURL = "jdbc:mysql://localhost:3306/music_shop";// newData is the database
    Connection connection;
    try{
      String Username = request.getParameter("username");
      String Password = request.getParameter("password");
      String Fullname = request.getParameter("fullname");
      String Phone = request.getParameter("phone");
      String Address = request.getParameter("address");
      


      Class.forName("com.mysql.jdbc.Driver");
      connection = (Connection) DriverManager.getConnection(connectionURL, "root", "");
      PreparedStatement pst = (PreparedStatement) connection.prepareStatement("insert into user values(?,?,?,?,?)");//try2 is the name of the table
      pst.setString(1,Username);
      pst.setString(2,Fullname);
      pst.setString(3,Phone);
      pst.setString(4,Address);
      pst.setString(5,Password);


      int i = pst.executeUpdate();
      if(i!=0){
        
            response.sendRedirect("Success");
      }
      else{
        pw.println("failed to insert the data");
       }
    }
    catch (Exception e){
      pw.println(e);
    }
  }
}

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
  

