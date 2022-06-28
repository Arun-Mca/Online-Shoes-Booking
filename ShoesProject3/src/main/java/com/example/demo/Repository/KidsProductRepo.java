package com.example.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.KidsProduct;


@Repository
public interface KidsProductRepo extends JpaRepository<KidsProduct,Integer>{
	
}
