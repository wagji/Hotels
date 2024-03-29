package reservationhistory;

import jakarta.servlet.ServletException;  
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.Data;

import java.io.IOException;

import java.util.Date;

@Data
public class ReservationhistoryDTO 
{
	
    private String ReservationNumber ;
    private String SerialNumber;
    private String CustomerNumber;
    private Date ReservationStartDate;
    private Date ReservationEndDate;
    private int NumberOfPeople;
    private String PaymentMethod;
    
}