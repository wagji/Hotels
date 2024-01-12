package businessnameandlocation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BusinessNameAndLocationDAO {

    private Connection connection;

    // Constructor to initialize the connection
    public BusinessNameAndLocationDAO(Connection connection) {
        this.connection = connection;
    }

    // Method to save business name and location
    public void saveBusinessNameAndLocation(BusinessNameAndLocationDTO businessNameAndLocation) throws SQLException {
        String query = "INSERT INTO business_name_and_location_table (business_owner_number, business_name, business_address) " +
                       "VALUES (?, ?, ?)";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, businessNameAndLocation.getBusinessOwnerNumber());
            preparedStatement.setString(2, businessNameAndLocation.getBusinessName());
            preparedStatement.setString(3, businessNameAndLocation.getBusinessAddress());

            preparedStatement.executeUpdate();
        }
    }

    // Method to retrieve all business names and locations
    public List<BusinessNameAndLocationDTO> getAllBusinessNamesAndLocations() throws SQLException {
        List<BusinessNameAndLocationDTO> businessNamesAndLocations = new ArrayList<>();
        String query = "SELECT * FROM business_name_and_location_table";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            while (resultSet.next()) {
                BusinessNameAndLocationDTO businessNameAndLocation = new BusinessNameAndLocationDTO();
                businessNameAndLocation.setBusinessOwnerNumber(resultSet.getString("business_owner_number"));
                businessNameAndLocation.setBusinessName(resultSet.getString("business_name"));
                businessNameAndLocation.setBusinessAddress(resultSet.getString("business_address"));

                businessNamesAndLocations.add(businessNameAndLocation);
            }
        }

        return businessNamesAndLocations;
    }

    // Additional methods for updating, deleting, or querying business names and locations can be added here
}
