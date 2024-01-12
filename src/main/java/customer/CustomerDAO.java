package customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {

    private Connection connection;

    // Constructor to initialize the connection
    public CustomerDAO(Connection connection) {
        this.connection = connection;
    }

    // Method to save customer
    public void saveCustomer(CustomerDTO customer) throws SQLException {
        String query = "INSERT INTO customer_table (customer_number, customer_name, phone_number, " +
                       "resident_registration_number, email, password, address) " +
                       "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, customer.getCustomerNumber());
            preparedStatement.setString(2, customer.getCustmerName());
            preparedStatement.setString(3, customer.getPhoneNumber());
            preparedStatement.setString(4, customer.getResidentRegistrationNumber());
            preparedStatement.setString(5, customer.getEmail());
            preparedStatement.setString(6, customer.getPassword());
            preparedStatement.setString(7, customer.getAddress());

            preparedStatement.executeUpdate();
        }
    }

    // Method to retrieve all customers
    public List<CustomerDTO> getAllCustomers() throws SQLException {
        List<CustomerDTO> customers = new ArrayList<>();
        String query = "SELECT * FROM customer_table";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            while (resultSet.next()) {
                CustomerDTO customer = new CustomerDTO();
                customer.setCustomerNumber(resultSet.getString("customer_number"));
                customer.setCustmerName(resultSet.getString("customer_name"));
                customer.setPhoneNumber(resultSet.getString("phone_number"));
                customer.setResidentRegistrationNumber(resultSet.getString("resident_registration_number"));
                customer.setEmail(resultSet.getString("email"));
                customer.setPassword(resultSet.getString("password"));
                customer.setAddress(resultSet.getString("address"));

                customers.add(customer);
            }
        }

        return customers;
    }

    // Additional methods for updating, deleting, or querying customers can be added here
}
