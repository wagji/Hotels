package company;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CompanyDAO {

    private Connection connection;

    // Constructor to initialize the connection
    public CompanyDAO(Connection connection) {
        this.connection = connection;
    }

    // Method to save a company
    public void saveCompany(CompanyDTO company) throws SQLException {
        String query = "INSERT INTO company_table (company_name, phone_number, company_email, representative, headquarters_location) " +
                       "VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, company.getCompanyName());
            preparedStatement.setString(2, company.getPhoneNumber());
            preparedStatement.setString(3, company.getCompanyEmail());
            preparedStatement.setString(4, company.getRepresentative());
            preparedStatement.setString(5, company.getHeadquartersLocation());

            preparedStatement.executeUpdate();
        }
    }

    // Method to retrieve a company by name
    public CompanyDTO getCompanyByName(String companyName) throws SQLException {
        String query = "SELECT * FROM company_table WHERE company_name = ?";
        CompanyDTO company = null;

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, companyName);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    company = new CompanyDTO();
                    company.setCompanyName(resultSet.getString("company_name"));
                    company.setPhoneNumber(resultSet.getString("phone_number"));
                    company.setCompanyEmail(resultSet.getString("company_email"));
                    company.setRepresentative(resultSet.getString("representative"));
                    company.setHeadquartersLocation(resultSet.getString("headquarters_location"));
                }
            }
        }

        return company;
    }

    // Additional methods for updating, deleting, or querying companies can be added here
}
