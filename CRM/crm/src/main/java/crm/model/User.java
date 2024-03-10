package crm.model;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;

@Entity
public class User {

	@jakarta.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int Id;
	private String fname;
	private String lname;
	private String email;



	public int getId() {
		return Id;
	}



	public void setId(int id) {
		Id = id;
	}



	public String getFname() {
		return fname;
	}



	public void setFname(String fname) {
		this.fname = fname;
	}



	public String getLname() {
		return lname;
	}



	public void setLname(String lname) {
		this.lname = lname;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	@Override
	public String toString() {
		return "User [Id=" + Id + ", fname=" + fname + ", lname=" + lname + ", email=" + email + "]";
	}



}
