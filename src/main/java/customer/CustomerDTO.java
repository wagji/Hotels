package customer;

import java.sql.*; 

import lombok.Data;

@Data

public class CustomerDTO 
{
    private String CustomerNumber;
    private String CustmerName;
    private String PhoneNumber;
    private String ResidentRegistrationNumber;
    private String Email;
    private String password;
    private String Address ;
    
	public String getCustomerNumber() {
		return CustomerNumber;
	}
	public void setCustomerNumber(String customerNumber) {
		CustomerNumber = customerNumber;
	}
	public String getCustmerName() {
		return CustmerName;
	}
	public void setCustmerName(String custmerName) {
		CustmerName = custmerName;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getResidentRegistrationNumber() {
		return ResidentRegistrationNumber;
	}
	public void setResidentRegistrationNumber(String residentRegistrationNumber) {
		ResidentRegistrationNumber = residentRegistrationNumber;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
    
    
    
	
}
