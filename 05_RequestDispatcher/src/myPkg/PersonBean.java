package myPkg;

import java.util.Arrays;

public class PersonBean {
	private String name;
	private String age;
	private String gender;
	private String[] hobby;
	
	public PersonBean(String name, String age, String gender, String[] hobby) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.hobby = hobby;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String[] getHobby() {
		return hobby;
	}
	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}
	
	@Override
	public String toString() {
		return "PersonBean [name=" + name + ", age=" + age + ", gender=" + gender + ", hobby=" + Arrays.toString(hobby)
				+ "]";
	}
	
	
}
