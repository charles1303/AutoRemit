package com.dataligence.autoremit.repository.springdata.jpa;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dataligence.autoremit.model.Agency;
import com.dataligence.autoremit.model.Payer;

public interface AgencyRepository extends JpaRepository<Agency, Long>{
	
	List<Agency> findByNameContaining(String searchString);

}
