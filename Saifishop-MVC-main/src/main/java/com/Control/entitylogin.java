package com.Control;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
@Entity
public class entitylogin {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String username;
	private String password;
	public Object getPassword() {
		// TODO Auto-generated method stub
		return null;
	}
	public Object getUsername() {
		// TODO Auto-generated method stub
		return null;
	}
	public void setPassword(Object password2) {
		// TODO Auto-generated method stub
		
	}
	public void setUsername(Object email) {
		// TODO Auto-generated method stub
		
	}
}
