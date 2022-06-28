package com.example.demo.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.RegisterForm;

@Repository
public interface RegisterRepository extends JpaRepository<RegisterForm,String>{

	@Query("From RegisterForm where USER_NAME =?1 and PASSWORD=?2")
	List<RegisterForm> loginCheck(String user_Name, String password);
}

