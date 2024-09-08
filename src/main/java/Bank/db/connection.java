



package Bank.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connection {
    private static String driver = "com.mysql.cj.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/MavenBankDB";
    private static String userName = "root"; // or your MySQL username
    private static String password = "8888"; // or your MySQL password

    static {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getconnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, userName, password);
            System.out.println("connection " + conn);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
}
