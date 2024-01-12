package businessinformation;

import jakarta.servlet.ServletException;  
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.Data;

import java.io.IOException;

import java.util.Date;

@Data
public class BusinessInformationDTO 
{
	
    private String SeriaNumber;
    private String BusinessAddress;
    private String RoomType;
    private int RoomCount;
    private int Fee;
    
    
}