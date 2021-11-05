package edu.fa.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String userName;
	private String email;
	private String password;
	@OneToOne
	private Profile profile;
	@OneToMany(fetch = FetchType.EAGER)
	private List<Content> contents=new ArrayList<>();

	public Account() {
	}

	public Account(String userName, String email, String password) {
		this.userName = userName;
		this.email = email;
		this.password = password;
	}

	public Account(String userName, String email, String password, Profile profile) {
		this.userName = userName;
		this.email = email;
		this.password = password;
		this.profile = profile;
	}

	public Account(int id, String userName, String email, String password) {
		this.id = id;
		this.userName = userName;
		this.email = email;
		this.password = password;
	}

	

	public Account(String userName, String email, String password, List<Content> contents) {
		this.userName = userName;
		this.email = email;
		this.password = password;
		this.contents = contents;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Profile getProfile() {
		return profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}

	public List<Content> getContents() {
		return contents;
	}

	public void setContents(List<Content> contents) {
		this.contents = contents;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", userName=" + userName + ", email=" + email + ", password=" + password
				+ ", profile=" + profile + ", contents=" + contents + "]";
	}

	

	
}
