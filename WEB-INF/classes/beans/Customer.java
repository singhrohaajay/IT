package beans;

import java.io.Serializable;
import java.util.regex.Pattern;
import java.util.regex.Matcher; 


public class Customer implements Serializable {
	String username;
	String emailAddress;
	String age;
	String password;
	String food[];
	
	
	/**
	 * @return the food
	 */
	public String[] getFood() {
		return food;
	}
	/**
	 * @param food the food to set
	 */
	public void setFood(String[] food) {
		this.food = food;
	}
	boolean userNameValid = false;
	boolean emailAddressValid = false;
	boolean ageValid = false;
	boolean passwordValid = false;
	
	
	/**
	 * @return the userNameValid
	 */
	public boolean getUserNameValid() {
		return userNameValid;
	}
	/**
	 * @return the emailAddressValid
	 */
	public boolean getEmailAddressValid() {
		return emailAddressValid;
	}
	/**
	 * @return the ageValid
	 */
	public boolean getAgeValid() {
		return ageValid;
	}
	/**
	 * @return the passwordValid
	 */
	public boolean getPasswordValid() {
		return passwordValid;
	}

	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
		if(!username.isEmpty())
		{
			try {
				int x = Integer.parseInt(username);
			}catch(Exception e) {
				userNameValid = true;
			}
		}
	
	}
	/**
	 * @return the emailAddress
	 */
	public String getEmailAddress() {
		return emailAddress;
	}
	/**
	 * @param emailAddress the emailAddress to set
	 */
	public void setEmailAddress(String emailAddress) {
		
	String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+ 
                "[a-zA-Z0-9_+&*-]+)*@" + 
                "(?:[a-zA-Z0-9-]+\\.)+[a-z" + 
                "A-Z]{2,7}$"; 
                  
	Pattern pat = Pattern.compile(emailRegex); 
	if (emailAddress != null && pat.matcher(emailAddress).matches()) 
	{
			emailAddressValid = true;
	}

			
			
			
			
			
		this.emailAddress = emailAddress;
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
			if(age1>0&&age1<100)
				ageValid = true;
		}catch(Exception e) {
			System.out.print("Error");
			ageValid = false;
		}
		
		
		this.age = age;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		if(password.length()>=6)
			passwordValid = true;
		this.password = password;
	}

	
	

}
