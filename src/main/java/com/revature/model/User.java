package com.revature.model;

public class User {

	private String userLogin;
	private String userPass;
	private String role;
	private String patientName;
	private String email;
	private String phoneNo;
	private String birthDate;
	private int age;
	private String physicalDisability;
	private String identityProof;
	private String address;
	
	public User(String userLogin, String userPass, String role) {
		super();
		this.userLogin = userLogin;
		this.userPass = userPass;
		this.role = role;
	}


	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(String userLogin, String userPass, String patientName, String email, String phoneNo,
			String birthDate, int age, String physicalDisability, String identityProof, String address) {
		super();
		this.userLogin = userLogin;
		this.userPass = userPass;
		this.patientName = patientName;
		this.email = email;
		this.phoneNo = phoneNo;
		this.birthDate = birthDate;
		this.age = age;
		this.physicalDisability = physicalDisability;
		this.identityProof = identityProof;
		this.address = address;
	}


	

	public User(String userLogin, String userPass, String role, String patientName, String email, String phoneNo,
			String birthDate, int age, String physicalDisability, String identityProof, String address) {
		super();
		this.userLogin = userLogin;
		this.userPass = userPass;
		this.role = role;
		this.patientName = patientName;
		this.email = email;
		this.phoneNo = phoneNo;
		this.birthDate = birthDate;
		this.age = age;
		this.physicalDisability = physicalDisability;
		this.identityProof = identityProof;
		this.address = address;
	}

	public String getUserLogin() {
		return userLogin;
	}

	public void setUserLogin(String userLogin) {
		this.userLogin = userLogin;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhysicalDisability() {
		return physicalDisability;
	}

	public void setPhysicalDisability(String physicalDisability) {
		this.physicalDisability = physicalDisability;
	}

	public String getIdentityProof() {
		return identityProof;
	}

	public void setIdentityProof(String identityProof) {
		this.identityProof = identityProof;
	}

	@Override
	public String toString() {
		return "User [userLogin=" + userLogin + ", userPass=" + userPass + ", role=" + role + ", patientName="
				+ patientName + ", email=" + email + ", phoneNo=" + phoneNo + ", birthDate=" + birthDate + ", age="
				+ age + ", physicalDisability=" + physicalDisability + ", identityProof=" + identityProof + ", address="
				+ address + "]";
	}

	
	
}
