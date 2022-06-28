package com.example.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.ContactUs;

public interface ContactRepository extends JpaRepository<ContactUs,Integer>{

}
