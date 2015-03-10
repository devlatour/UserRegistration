package com.github.devlatour.mappers;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import com.github.devlatour.model.User;

public interface UserMapper {
	@Insert("INSERT INTO users(emailAddress, password, firstName, "
			+ "lastName, dateOfBirth, gender, phoneNumber, altPhoneNumber) VALUES"
			+ "(#{emailAddress},#{password}, #{firstName}, #{lastName},"
			+ "#{dateOfBirth}, #{gender}, #{phoneNumber}, #{altPhoneNumber})")
	@Options(useGeneratedKeys=true, keyProperty="id", flushCache=true, keyColumn="id")
	public void insertUser(User user);
		
	@Select("SELECT EMAILADDRESS as emailAddress, PASSWORD as password, "
			+ "FIRSTNAME as firstName, LASTNAME as lastName, "
			+ "DATEOFBIRTH as dateOfBirth, GENDER as gender, "
			+ "PHONENUMBER as phoneNumber, ALTPHONENUMBER as altPhoneNumber "
			+ "FROM users WHERE emailAddress = #{emailAddress}")
	public User getUserByEmail(String emailAddress);


}
