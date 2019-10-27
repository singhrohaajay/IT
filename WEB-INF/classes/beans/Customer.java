package beans;

import java.io.*;

public class Customer implements Serializable {

	// Form Fields
	String name;
	String email;
	String age;
	// String course;
	// String roll;
	// String gender;

	// Validation Flags
	boolean nameValid = false;
	boolean emailValid = false;
	boolean ageValid = false;
	// boolean courseValid = false;
	// boolean rollValid = false;

	// Getter functions for properties
	public boolean getNameValid() {
		return nameValid;
	}
	public boolean getEmailValid() {
		return emailValid;
	}
	public boolean getAgeValid() {
		return ageValid;
	}
	// public boolean getCourseValid() {
	// 	return courseValid;
	// }
	// public boolean getRollValid() {
	// 	return rollValid;
	// }

	// Getter for form fields
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getAge() {
		return age;
	}
	// public String getCourse() {
	// 	return course;
	// }
	// public String getRoll() {
	// 	return roll;
	// }
	// public String getGender() {
	// 	return gender;
	// }


	// Setter Functions for properties
	public void setName(String name) {
		if (!name.isEmpty() && name.matches("^[aA-zZ]{3,30}$")) {
			nameValid = true;
			this.name = name;
		}
	}
	public void setEmail(String emailAddr) {
		if (!emailAddr.isEmpty() && emailAddr.matches("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")) {
			emailValid = true;
			this.email = emailAddr;
		}
	}
	public void setAge(String age) {
		System.out.print(age);
		int parsedAge = 0;
		try {
			parsedAge = Integer.parseInt(age);
			if (parsedAge > 17 && parsedAge <= 25)
				ageValid = true;
		} catch (Exception e) {
			ageValid = false;
		}
		this.age = age;
	}
	// public void setCourse(String course) {
	// 	if (!course.isEmpty() && course.matches("^[a-zA-Z. ]+$")) {
	// 		courseValid = true;
	// 		this.course = course;
	// 	}
	// }
	// public void setRoll(String roll) {
	// 	if (!roll.isEmpty()&& roll.matches("^[0-9]{4}$")){
	// 		rollValid = true;
	// 		this.roll = roll;
	// 	}		
	// }
	// public void setGender(String gender) {
	// 		this.gender = gender;		
	// }

}