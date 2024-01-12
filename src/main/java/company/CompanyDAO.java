package company;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lombok.Data;
@Data
public class CompanyDAO 
{
    private Connection connection;

    public CompanyDAO(Connection connection) 
    {
        this.connection = connection;
    }

    // Insert a new board entry
    public void insertBoard(CompanyDTO company) 
    {
        try 
        {
            String query = "INSERT INTO board (title, content, author, create_date) VALUES (?, ?, ?, ?)";
            try (PreparedStatement pst = connection.prepareStatement(query)) {
                pst.setString(1, company.getCompanyName());
                pst.setString(2, company.getPhoneNumber());
                pst.setString(3, company.getCompanyEmail());
                pst.setString(4, company.getRepresentative());
                pst.setString(5, company.getHeadquartersLocation());
                pst.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception according to your application's needs
        }
    }

    // Retrieve all board entries
    public List<Board> getAllBoards() {
        List<Board> boards = new ArrayList<>();
        try {
            String query = "SELECT * FROM board";
            try (PreparedStatement pst = connection.prepareStatement(query)) {
                try (ResultSet rs = pst.executeQuery()) {
                    while (rs.next()) {
                        Board board = new Board();
                        board.setId(rs.getInt("id"));
                        board.setTitle(rs.getString("title"));
                        board.setContent(rs.getString("content"));
                        board.setAuthor(rs.getString("author"));
                        board.setCreateDate(rs.getTimestamp("create_date"));
                        boards.add(board);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception according to your application's needs
        }
        return boards;
    }

    // Other methods like updateBoard, deleteBoard, getBoardById, etc. can be added based on your requirements
}

