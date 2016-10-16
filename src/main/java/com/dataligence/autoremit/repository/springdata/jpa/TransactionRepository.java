package com.dataligence.autoremit.repository.springdata.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dataligence.autoremit.model.Transaction;

public interface TransactionRepository extends JpaRepository<Transaction, Long> {

}
