package businessowner;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BusinessOwnerDAO {

    private Connection connection;

    // Constructor to initialize the connection
    public BusinessOwnerDAO(Connection connection) {
        this.connection = connection;
    }

    // Method to save business owner
    public void saveBusinessOwner(BusinessOwnerDTO businessOwner) throws SQLException {
        String query = "INSERT INTO business_owner_table (business_owner_number, business_owner_name, " +
                       "business_registration_number, business_owner_resident_registration_number, " +
                       "phone_number, business_owner_email, business_owner_password) " +
                       "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, businessOwner.getBusinessOwnerNumber());
            preparedStatement.setString(2, businessOwner.getBusinessOwnerName());
            preparedStatement.setString(3, businessOwner.getBusinessRegistrationNumber());
            preparedStatement.setString(4, businessOwner.getBusinessOwnerResidentRegistrationNumber());
            preparedStatement.setString(5, businessOwner.getPhoneNumber());
            preparedStatement.setString(6, businessOwner.getBusinessOwnerEmail());
            preparedStatement.setString(7, businessOwner.getBusinessOwnerPassword());

            preparedStatement.executeUpdate();
        }
    }

    // Method to retrieve all business owners
    public List<BusinessOwnerDTO> getAllBusinessOwners() throws SQLException {
        List<BusinessOwnerDTO> businessOwners = new ArrayList<>();
        String query = "SELECT * FROM business_owner_table";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            while (resultSet.next()) {
                BusinessOwnerDTO businessOwner = new BusinessOwnerDTO();
                businessOwner.setBusinessOwnerNumber(resultSet.getString("business_owner_number"));
                businessOwner.setBusinessOwnerName(resultSet.getString("business_owner_name"));
                businessOwner.setBusinessRegistrationNumber(resultSet.getString("business_registration_number"));
                businessOwner.setBusinessOwnerResidentRegistrationNumber(resultSet.getString("business_owner_resident_registration_number"));
                businessOwner.setPhoneNumber(resultSet.getString("phone_number"));
                businessOwner.setBusinessOwnerEmail(resultSet.getString("business_owner_email"));
                businessOwner.setBusinessOwnerPassword(resultSet.getString("business_owner_password"));

                businessOwners.add(businessOwner);
            }
        }

        return businessOwners;
    }

    // Additional methods for updating, deleting, or querying business owners can be added here
}
