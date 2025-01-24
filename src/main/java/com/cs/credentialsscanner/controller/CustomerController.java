package com.cs.credentialsscanner.controller;


import com.cs.credentialsscanner.entity.Customer;
import com.cs.credentialsscanner.service.CustomerService;
import java.util.List;
import java.util.Map;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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

  @PostMapping
  public ResponseEntity<String> create(@RequestBody Map<String, String> request) {

    return new ResponseEntity<>(customerService.createCustomer(request), HttpStatus.OK);
  }
}
