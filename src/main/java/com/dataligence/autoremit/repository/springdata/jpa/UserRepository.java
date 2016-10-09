package com.dataligence.autoremit.repository.springdata.jpa;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import com.dataligence.autoremit.model.User;

@Transactional
public interface UserRepository extends JpaRepository<User, Long>{
	
	public User findByUsername(String username);

}
