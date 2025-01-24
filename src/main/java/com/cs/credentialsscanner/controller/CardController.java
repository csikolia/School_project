package com.cs.credentialsscanner.controller;

import com.cs.credentialsscanner.entity.Card;
import com.cs.credentialsscanner.service.CardService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/cards")
@Slf4j
public class CardController {
    
    private final CardService cardService;
    
    @Autowired
    public CardController(CardService cardService) {
        this.cardService = cardService;
    }
    
    @GetMapping
    public ResponseEntity<Page<Card>> getCards(
        @RequestParam(defaultValue = "0") int page,
        @RequestParam(defaultValue = "10") int size,
        @RequestParam(defaultValue = "id") String sortBy,
        @RequestParam(defaultValue = "asc") String direction
    ) {
        log.info("Fetching cards page {} with size {}", page, size);
        Page<Card> cards = cardService.getCards(page, size, sortBy, direction);
        return ResponseEntity.ok(cards);
    }
}