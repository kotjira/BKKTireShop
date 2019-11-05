package net.bkkgp.dao;

import net.bkkgp.model.Employee;
import java.sql.DriverManager;
import java.sql.*;

public class LoginDao {

    public static int loginEmployee(String userName, String password) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection dbConn = DriverManager
                .getConnection("jdbc:mysql://167.99.76.137:3306/BKK GROUP?useSSL=false", "bkkgroup", "212224236248");

        int rowsAffected;
        String queryStr = "SELECT * " + "FROM employees " + "WHERE Em_Username = ? and Em_Password= ?";
        PreparedStatement sqlprep = dbConn.prepareStatement(queryStr);
        sqlprep.setString(1, userName);
        sqlprep.setString(2, password);

        //Statement queryStmt = dbConn.createStatement();
        //Statement queryStmt = dbConn.prepareStatement(sqlprep);
        ResultSet results;

        int st;


        //results = queryStmt.executeQuery(queryStr);
        results = sqlprep.executeQuery();
        if (results.last()) {
            rowsAffected = results.getRow();
        } else {
            rowsAffected = 0; //just cus I like to always do some kinda else statement.
        }

        if (rowsAffected != 1) {
            st = 0;
        } else {



            // Free resources
            results.close();
            sqlprep.close();
            //sqlprep.close();
            dbConn.close();
            st = 1;
            System.out.println("welcome " + userName + " Login Sucessful !! ");
            return st;
        }
        return st;
    }

}
