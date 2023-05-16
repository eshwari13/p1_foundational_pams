package com.revature.util;

public class QueryConstants {
	public static final String INSERT_USER = "INSERT INTO `pams`.`registration`(login_id,password,role) VALUES(?,?,?)";
	public static final String UPDATE_USER = "UPDATE `pams`.`registration` SET LOGIN_ID=?,PASSWORD=?,USERNAME=?,EMAIL=?,PHONE_NO=?,DATE_OF_BIRTH=?,AGE=?,physical_disability=?,IDENTITY_PROOF=?,ADRESS=? WHERE  LOGIN_ID=?";	
	public static final String DELETE_USER = "DELETE FROM `pams`.`registration` WHERE LOGIN_ID=?";
	public static final String SELECT_USER = "SELECT * FROM `pams`.`registration` WHERE LOGIN_ID=? AND PASSWORD=?";
	public static final String SELECT_USER_BY_ID = "SELECT * FROM `pams`.`registration` WHERE LOGIN_ID=?";
	public static final String SELECT_ALL_USER = "SELECT * FROM `pams`.`registration` ORDER BY ROLE";
	public static final String SELECT_USERS_BY_ID_PATTERN = "SELECT * FROM `pams`.`registration` WHERE LOGIN_ID LIKE ?";

}

