package net.bkkgp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.bkkgp.model.Employee;

public class EmployeeDao {

    public int registerEmployee(Employee employee) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO employees" +
                "  (Em_Name, Em_Surname, Em_Gender, Em_Date_of_Birth,Em_Address,Em_Tel,Em_Position,Em_Nationality,Em_Education,Em_Email,Em_Username,Em_Password) VALUES " +
                " (?,?,?,?,?,?,?,?,?,?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/BKK GROUP?useSSL=false", "root", "1809900912552");

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, employee.getFirstName());
            preparedStatement.setString(2, employee.getLastName());
            preparedStatement.setString(3, employee.getSex());
            preparedStatement.setString(4, employee.getBirthDay()+"/"+employee.getBirthMonth()+"/"+employee.getBirthYear());
            preparedStatement.setString(5, employee.getHomeID()+"/"+employee.getPost());
            preparedStatement.setString(6, employee.getPhoneMe());
            preparedStatement.setString(7, employee.getPosition());
            preparedStatement.setString(8, employee.getNationality());
            preparedStatement.setString(9, employee.getEducation());
            preparedStatement.setString(10, employee.getEmail());
            preparedStatement.setString(11, employee.getUserName());
            preparedStatement.setString(12, employee.getPassword1()+"/"+employee.getPassword2());

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