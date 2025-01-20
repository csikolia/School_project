package com.cs.credentialsscanner.repo;

import com.cs.credentialsscanner.entity.Customer;
import java.util.List;
import org.springframework.data.repository.CrudRepository;

public interface CustomerRepo extends CrudRepository<Customer, Long> {

  List<Customer> findAll();
}
