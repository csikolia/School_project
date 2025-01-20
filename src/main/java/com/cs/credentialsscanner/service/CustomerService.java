package com.cs.credentialsscanner.service;

import com.cs.credentialsscanner.entity.Customer;
import com.cs.credentialsscanner.repo.CustomerRepo;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class CustomerService {

  private final CustomerRepo customerRepo;


  public List<Customer> getCustomers() {

    List<Customer> customers = customerRepo.findAll();
    for (Customer customer : customers) {
      log.info("Fetching customer {} email {} phone number {}", customer.getName(),
          customer.getEmail(), customer.getPhoneNumber());
    }

    return customers;
  }
}
