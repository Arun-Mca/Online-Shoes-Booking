package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.demo.Repository.RegisterRepository;
import com.example.demo.model.RegisterForm;

public class ServiceLayer {

	@Autowired
	RegisterRepository repo;
	
	public void saveRegisterDetails(RegisterForm register)
	{
		repo.save(register);
	}
	
	
	
}
