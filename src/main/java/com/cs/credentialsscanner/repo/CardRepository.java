package com.cs.credentialsscanner.repo;

import com.cs.credentialsscanner.entity.Card;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CardRepository extends JpaRepository<Card, Long> {
    // JpaRepository already includes pagination methods
    // You can add custom queries here if needed
} 