package net.bkkgp.dao;

import net.bkkgp.model.Customerr;
import net.bkkgp.model.Employee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CustomerrDao {

    public int registerCustomerr(Customerr customerr) throws ClassNotFoundException{
        String INSERT_USERS_SQL = "INSERT INTO customer" +
                "  (Cu_Name,Cu_Surname, Cu_Gender,Cu_Address,Cu_Nationality,Cu_Tel,Cu_Email,Cu_PostId) VALUES " +
                " (?,?,?,?,?,?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://167.99.76.137:3306/BKK GROUP?useSSL=false", "bkkgroup", "212224236248");

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, customerr.getFirstName1());
            preparedStatement.setString(2, customerr.getLastName1());
            preparedStatement.setString(3, customerr.getSex1());
            preparedStatement.setString(4, customerr.getHomeID1());
            preparedStatement.setString(5, customerr.getNationality1());
            preparedStatement.setString(6,customerr.getPhoneMe1());
            preparedStatement.setString(7, customerr.getEmail1());
            preparedStatement.setString(8, customerr.getPost1());
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}