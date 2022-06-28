package com.example.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.MensProducts;

@Repository
public interface MensProductRepo extends JpaRepository<MensProducts,Integer>{

	
}
