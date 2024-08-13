package com.Control;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@RequiredArgsConstructor
@Entity
@Table(name = "emp")
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sno;
	private String name;
	private String email;
	private String mobile;
	private String password;
	private String cpassword;
	@OneToOne(fetch = FetchType.LAZY)
	public entitylogin login;
	public Object getPassword() {
		// TODO Auto-generated method stub
		return null;
	}
	public Object getCpassword() {
		// TODO Auto-generated method stub
		return null;
	}
	public Object getEmail() {
		// TODO Auto-generated method stub
		return null;
	}
	public void setLogin(entitylogin el) {
		// TODO Auto-generated method stub
		
	}
}
