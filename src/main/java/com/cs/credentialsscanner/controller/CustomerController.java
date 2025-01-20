package com.cs.credentialsscanner.controller;


import com.cs.credentialsscanner.entity.Customer;
import com.cs.credentialsscanner.service.CustomerService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/customers")
@RequiredArgsConstructor
public class CustomerController {

  private final CustomerService customerService;

  @GetMapping
  public List<Customer> fetchCustomers() {
    return customerService.getCustomers();
  }
}
