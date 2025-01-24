package com.cs.credentialsscanner.service;

import com.cs.credentialsscanner.entity.Card;
import com.cs.credentialsscanner.repo.CardRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class CardService {
    
    private final CardRepository cardRepository;
    
    @Autowired
    public CardService(CardRepository cardRepository) {
        this.cardRepository = cardRepository;
    }
    
    public Page<Card> getCards(int page, int size, String sortBy, String direction) {
        Sort.Direction sortDirection = direction.equalsIgnoreCase("desc") ? 
            Sort.Direction.DESC : Sort.Direction.ASC;
            
        Pageable pageable = PageRequest.of(
            page, 
            size, 
            Sort.by(sortDirection, sortBy)
        );
        
        return cardRepository.findAll(pageable);
    }
} 