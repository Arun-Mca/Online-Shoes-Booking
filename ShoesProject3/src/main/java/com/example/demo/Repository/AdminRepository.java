package com.example.demo.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin,String> {

	@Query("From Admin where USER_NAME =?1 and PASSWORD=?2")
	List<Admin> adminLoginCheck(String userName, String password);

}
