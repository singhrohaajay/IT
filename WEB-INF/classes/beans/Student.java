package beans;

import java.io.*;

public class Student implements Serializable {

	// beans properties
	String firstName;
	String lastName;
	String subjects[];
	String emailAddr;
	String gender;
	String age;
	String course;

	// validation properties
	boolean firstNameValid = false;
	boolean lastNameValid = false;
	boolean emailAddrValid = false;
	boolean CSSelected = false;
	boolean phySelected = false;
	boolean mathsSelected = false;
	boolean isMale = false;
	boolean isFemale = false;
	boolean ageValid = false;

	boolean courseValid=false;

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		if (gender.equals("male"))
			isMale = true;
		else
			isFemale = true;
		this.gender = gender;
	}

	public boolean getIsMale() {
		return isMale;
	}

	public boolean getIsFemale() {
		return isFemale;
	}

	/**
	 * @return the firstNameValid
	 */
	public boolean getFirstNameValid() {
		return firstNameValid;
	}

	/**
	 * @return the ageValid
	 */
	public boolean getAgeValid() {
		return ageValid;
	}
	/**
	 * @return the ageValid
	 */
	public boolean getCourseValid() {
		return courseValid;
	}

	/**
	 * @return the age
	 */
	public String getAge() {
		return age;
	}

	/**
	 * @param age the age to set
	 */
	public void setAge(String age) {
		System.out.print(age);
		int age1 = 0;
		try {
			age1 = Integer.parseInt(age);
			if (age1 > 0 && age1 < 100)
				ageValid = true;
		} catch (Exception e) {
			System.out.print("Error");
			ageValid = false;
		}

		this.age = age;
	}

	/**
	 * @return the age
	 */
	public String getCourse() {
		return course;
	}

	/**
	 * @param age the age to set
	 */
	public void setCourse(String course) {
		System.out.print(course);
		this.course = course;
	}

	/**
	 * @return the lastNameValid
	 */
	public boolean getLastNameValid() {
		return lastNameValid;
	}

	/**
	 * @return the emailAddrValid
	 */
	public boolean getEmailAddrValid() {
		return emailAddrValid;
	}

	/**
	 * @return the cSSelected
	 */
	public boolean getCSSelected() {
		return CSSelected;
	}

	/**
	 * @return the phySelected
	 */
	public boolean getPhySelected() {
		return phySelected;
	}

	/**
	 * @return the mathsSelected
	 */
	public boolean getMathsSelected() {
		return mathsSelected;
	}

	public String getEmailAddr() {
		return emailAddr;
	}

	public void setEmailAddr(String emailAddr) {
		if (!emailAddr.isEmpty())
			emailAddrValid = true;
		this.emailAddr = emailAddr;
	}

	public Student() {

	}

	public String[] getSubjects() {

		return subjects;
	}

	public void setSubjects(String[] subjects) {

		for (int i = 0; i < subjects.length; i++) {

			if (subjects[i].contentEquals("CS")) {
				System.out.println("Selected");
				CSSelected = true;
			}

			else if (subjects[i].contentEquals("phy")) {
				phySelected = true;
			}

			else if (subjects[i].contentEquals("maths")) {
				mathsSelected = true;
			}

		}

		this.subjects = subjects;
	}

	public void setFirstName(String firstName) {
		if (!firstName.isEmpty())
			firstNameValid = true;
		this.firstName = firstName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setLastName(String lastName) {
		if (!lastName.isEmpty())
			lastNameValid = true;
		this.lastName = lastName;
	}

	public String getLastName() {
		return lastName;
	}
}