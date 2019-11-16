package net.bkkgp.dao;

import net.bkkgp.model.Orderr;
import net.bkkgp.model.Orderr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderDao {

    public int registerOrder(Orderr orderr) throws ClassNotFoundException{
        String INSERT_USERS_SQL = "INSERT INTO orders" +
                "  (Product_ID,Customer_ID,Order_name,Order_surname,Order_brand,Quantity,Price,Total_amount,Order_date) VALUES " +
                " (?,?,?,?,?,?,?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://167.99.76.137:3306/BKK GROUP?useSSL=false", "bkkgroup", "212224236248");

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, orderr.getIdTire());
            preparedStatement.setString(2, orderr.getIdCustomer());
            preparedStatement.setString(2, orderr.getNameCustomer());
            preparedStatement.setString(3, orderr.getSurCustomer());
            preparedStatement.setString(3, orderr.getBrand2());
            preparedStatement.setString(1, orderr.getDateSend());
            preparedStatement.setString(3, orderr.getNumTire());
            preparedStatement.setString(4, orderr.getBrand2());
            preparedStatement.setString(5, orderr.getPrice2());
            preparedStatement.setString(6, orderr.getTotal());

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