package reservationhistory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReservationhistoryDAO {

    private Connection connection;

    // Constructor to initialize the connection
    public ReservationhistoryDAO(Connection connection) {
        this.connection = connection;
    }

    // Method to save reservation history
    public void saveReservationhistory(ReservationhistoryDTO reservationhistory) throws SQLException {
        String query = "INSERT INTO reservationhistory_table (reservation_number, serial_number, customer_number, " +
                       "reservation_start_date, reservation_end_date, number_of_people, payment_method) " +
                       "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, reservationhistory.getReservationNumber());
            preparedStatement.setString(2, reservationhistory.getSerialNumber());
            preparedStatement.setString(3, reservationhistory.getCustomerNumber());
            preparedStatement.setDate(4, new java.sql.Date(reservationhistory.getReservationStartDate().getTime()));
            preparedStatement.setDate(5, new java.sql.Date(reservationhistory.getReservationEndDate().getTime()));
            preparedStatement.setInt(6, reservationhistory.getNumberOfPeople());
            preparedStatement.setString(7, reservationhistory.getPaymentMethod());

            preparedStatement.executeUpdate();
        }
    }

    // Method to retrieve all reservation histories
    public List<ReservationhistoryDTO> getAllReservationhistories() throws SQLException {
        List<ReservationhistoryDTO> reservationhistories = new ArrayList<>();
        String query = "SELECT * FROM reservationhistory_table";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            while (resultSet.next()) {
                ReservationhistoryDTO reservationhistory = new ReservationhistoryDTO();
                reservationhistory.setReservationNumber(resultSet.getString("reservation_number"));
                reservationhistory.setSerialNumber(resultSet.getString("serial_number"));
                reservationhistory.setCustomerNumber(resultSet.getString("customer_number"));
                reservationhistory.setReservationStartDate(resultSet.getDate("reservation_start_date"));
                reservationhistory.setReservationEndDate(resultSet.getDate("reservation_end_date"));
                reservationhistory.setNumberOfPeople(resultSet.getInt("number_of_people"));
                reservationhistory.setPaymentMethod(resultSet.getString("payment_method"));

                reservationhistories.add(reservationhistory);
            }
        }

        return reservationhistories;
    }

    // Additional methods for updating, deleting, or querying reservation histories can be added here
}
