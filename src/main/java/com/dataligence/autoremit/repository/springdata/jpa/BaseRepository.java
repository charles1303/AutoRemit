package com.dataligence.autoremit.repository.springdata.jpa;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

import com.dataligence.autoremit.model.BaseModel;

@NoRepositoryBean
//@Qualifier("baseRepositoryBean")
public interface BaseRepository<T extends BaseModel> extends JpaRepository<T, Long> {

	public BaseModel findById(Long id);
	
	
}
