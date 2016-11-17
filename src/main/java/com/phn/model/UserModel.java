package com.phn.model;
 
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
 
/**
 * 
 * @author Knight
 *
 */
@Table(name="user")
@Entity
public class UserModel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false, length = 9)
	private int id;
	@Column(name = "username", nullable = false, length = 20)
	private String username;
	@Column(name = "password", nullable = false, length = 32)
	private String password;
	@Column(name = "type", nullable = false, length = 9)
	private int type;
 
	public int getId() {
		return id;
	}
 
	public void setId(int id) {
		this.id = id;
	}
 
	
	public String getUsername() {
		return username;
	}
 
	public void setUsername(String username) {
		this.username = username;
	}
 
	
	public String getPassword() {
		return password;
	}
 
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "User [ \nid : " + this.id + "\nusername : " + this.username
				+ "\npassword : " + this.password + " ]";
	}
 
}
