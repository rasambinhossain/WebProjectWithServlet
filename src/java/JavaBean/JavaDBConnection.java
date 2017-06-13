package JavaBean;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author AuMi
 */
public class JavaDBConnection {

    private String url = "jdbc:mysql://localhost:3306/music_shop";
    private String username = "root";
    private String password = "";

    public Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connect = (Connection) DriverManager.getConnection(url, username, password);
        return connect;

    }
}
