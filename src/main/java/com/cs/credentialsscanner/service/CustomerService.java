package com.cs.credentialsscanner.service;

import com.cs.credentialsscanner.entity.Customer;
import com.cs.credentialsscanner.repo.CustomerRepo;
import java.util.List;
import java.util.Map;
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

  public String createCustomer(Map<String, String> request){
    log.info("Received a request to create {}", request);
    // validate
    // save in db
    // email
    Customer customer = new Customer();
    customer.setEmail(request.get("email"));

    customerRepo.save(customer);
    return "Created";
  }
}
