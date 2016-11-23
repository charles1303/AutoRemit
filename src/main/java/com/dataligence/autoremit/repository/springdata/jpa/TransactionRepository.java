package com.dataligence.autoremit.repository.springdata.jpa;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.dataligence.autoremit.model.Agency;
import com.dataligence.autoremit.model.Payer;
import com.dataligence.autoremit.model.Transaction;

//@Qualifier("transactionRepositoryBean")
public interface TransactionRepository extends BaseRepository<Transaction> {

	Collection<Transaction> findByAgencyAndAgencyStaffIsNull(Agency agency);
	
	@Query("SELECT t FROM Transaction t WHERE t.agency.id = :agencyId and t.agencyStaff IS NULL")
	List<Transaction> find(@Param("agencyId") Long agencyId);
}
