package com.dataligence.autoremit.repository.springdata.jpa;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dataligence.autoremit.model.Payer;

public interface PayerRepository extends JpaRepository<Payer, Long>{
	
	List<Payer> findByPinContaining(String searchString);

}
