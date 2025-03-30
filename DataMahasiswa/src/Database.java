import javax.swing.*;
import java.sql.*;

public class Database {
    private Connection connection;
    private Statement statement;

    public Database() {
        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_mahasiswa", "root", "");
            statement = connection.createStatement();
        } catch (SQLException e) {
            throw new RuntimeException("Database connection failed!", e);
        }
    }

    public ResultSet selectQuery(String sql) {
        try {
            return statement.executeQuery(sql);
        } catch (SQLException e) {
            throw new RuntimeException("Error executing SELECT query!", e);
        }
    }

    public int insertUpdateDeleteQuery(String sql) {
        try {
            return statement.executeUpdate(sql);
        } catch (SQLException e) {
            System.out.println(e);
            String[] err = e.toString().split(" ");
            if (err[1].equals("Duplicate") ) {
                JOptionPane.showMessageDialog(null, "NIM sudah ada!");
            }
            throw new RuntimeException("Error executing INSERT/UPDATE/DELETE query!", e);
        }
    }

    public void close() {
        try {
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        } catch (SQLException e) {
            throw new RuntimeException("Error closing database resources!", e);
        }
    }
}
