package com.dataligence.autoremit.repository.springdata.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dataligence.autoremit.model.Astate;

public interface StateRepository extends JpaRepository<Astate, Long> {

}
