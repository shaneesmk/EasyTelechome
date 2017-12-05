package com.lxisoft.easytelechome.reppo;

import java.util.List;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.lxisoft.easytelechome.model.Customer;




	@Repository
	public interface CustomerReppo extends JpaRepository<Customer, Long> {
		

		
		List<Customer> findByEmail(String email);
		Customer findById(long id);
		
	
		
		

	}



