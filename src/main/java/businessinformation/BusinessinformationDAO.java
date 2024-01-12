package businessinformation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BusinessInformationDAO {

    private Connection connection;

    // Constructor to initialize the connection
    public BusinessInformationDAO(Connection connection) {
        this.connection = connection;
    }

    // Method to save business information
    public void saveBusinessInformation(BusinessInformationDTO businessInformation) throws SQLException {
        String query = "INSERT INTO business_information_table (serial_number, business_address, room_type, room_count, fee) " +
                       "VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, businessInformation.getSeriaNumber());
            preparedStatement.setString(2, businessInformation.getBusinessAddress());
            preparedStatement.setString(3, businessInformation.getRoomType());
            preparedStatement.setInt(4, businessInformation.getRoomCount());
            preparedStatement.setInt(5, businessInformation.getFee());

            preparedStatement.executeUpdate();
        }
    }

    // Method to retrieve all business information
    public List<BusinessInformationDTO> getAllBusinessInformation() throws SQLException {
        List<BusinessInformationDTO> businessInformationList = new ArrayList<>();
        String query = "SELECT * FROM business_information_table";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            while (resultSet.next()) {
                BusinessInformationDTO businessInformation = new BusinessInformationDTO();
                businessInformation.setSeriaNumber(resultSet.getString("serial_number"));
                businessInformation.setBusinessAddress(resultSet.getString("business_address"));
                businessInformation.setRoomType(resultSet.getString("room_type"));
                businessInformation.setRoomCount(resultSet.getInt("room_count"));
                businessInformation.setFee(resultSet.getInt("fee"));

                businessInformationList.add(businessInformation);
            }
        }

        return businessInformationList;
    }

    // Additional methods for updating, deleting, or querying business information can be added here
}
