package beans;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.ParseException;

public class Customer implements Serializable {

	// Form Fields
	String name;
	String email;
	String age;
	String date;
	String products = "";
	boolean[] id = new boolean[6];

	
	// String course;
	// String roll;
	// String gender;

	// Validation Flags
	boolean nameValid = false;
	boolean emailValid = false;
	boolean ageValid = false;
	boolean dateValid = false;
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

	public boolean getDateValid() {
		return dateValid;
	}
	// public boolean getCourseValid() {
	// return courseValid;
	// }
	// public boolean getRollValid() {
	// return rollValid;
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

	public String getDate() {
		return date;
	}

	public String getProducts() {
		return products;
	}

	public boolean getId(int index) {
		return id[index];
	}

	// Setter Functions for properties
	public void setName(String name) {
		if (!name.isEmpty() && name.matches("^[aA-zZ]{3,30}$")) {
			nameValid = true;
			this.name = name;
		}
	}

	public void setEmail(String emailAddr) {
		if (!emailAddr.isEmpty() && emailAddr
				.matches("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")) {
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

	public void setDate(String date) {
		SimpleDateFormat sdfrmt = new SimpleDateFormat("dd/MM/yyyy");
		sdfrmt.setLenient(false);
		try {
			Date javaDate = sdfrmt.parse(date);
			dateValid = true;
			this.date = date;
		} catch (ParseException e) {
			dateValid = false;
		}

	}

	public void setProducts(String p) {
		this.products = p;
	}

	public void setId(int ids) {
		if(this.id[ids]==false){
			this.id[ids]=true;
			return;
		}

	}



}