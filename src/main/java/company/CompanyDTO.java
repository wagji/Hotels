package company;

import lombok.Data;

@Data
public class CompanyDTO 
{
	
    private String CompanyName;
    private String PhoneNumber;
    private String CompanyEmail;
    private String Representative;
    private String HeadquartersLocation;
	public String getCompanyName() {
		return CompanyName;
	}
	public void setCompanyName(String companyName) {
		CompanyName = companyName;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getCompanyEmail() {
		return CompanyEmail;
	}
	public void setCompanyEmail(String companyEmail) {
		CompanyEmail = companyEmail;
	}
	public String getRepresentative() {
		return Representative;
	}
	public void setRepresentative(String representative) {
		Representative = representative;
	}
	public String getHeadquartersLocation() {
		return HeadquartersLocation;
	}
	public void setHeadquartersLocation(String headquartersLocation) {
		HeadquartersLocation = headquartersLocation;
	}

    // Constructors, getters, and setters
    
    // You can generate these using your IDE or write them manually
}
