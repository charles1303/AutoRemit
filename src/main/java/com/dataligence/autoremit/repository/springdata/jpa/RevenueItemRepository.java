package com.dataligence.autoremit.repository.springdata.jpa;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dataligence.autoremit.model.RevenueItem;

public interface RevenueItemRepository extends JpaRepository<RevenueItem, Long>{

	List<RevenueItem> findByNameContaining(String searchString);
}
