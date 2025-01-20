--liquibase formatted sql
--changeset collis-sikolia:01-02

CREATE TABLE cards (
    id SERIAL PRIMARY KEY,
    card_number VARCHAR(16) NOT NULL,
    cvv VARCHAR(4) NOT NULL,
    expiry DATE NOT NULL,
    customer_id INT NOT NULL REFERENCES customers(id),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO cards (card_number, cvv, expiry, customer_id, created_at, updated_at)
VALUES
    ('4539571234567890', '123', '2026-06-30', 1, NOW(), NOW()),
    ('5291040987654321', '456', '2025-12-31', 2, NOW(), NOW()),
    ('4024007101234567', '789', '2027-03-31', 3, NOW(), NOW()),
    ('4539571111222233', '110', '2028-01-15', 4, NOW(), NOW()),
    ('5365922233445566', '221', '2029-10-20', 5, NOW(), NOW()),
    ('4539009998887777', '332', '2030-09-10', 6, NOW(), NOW()),
    ('5291041234123412', '443', '2025-07-25', 7, NOW(), NOW()),
    ('4539575556667777', '554', '2026-11-05', 8, NOW(), NOW()),
    ('4024007778889999', '665', '2028-02-28', 9, NOW(), NOW()),
    ('4539078912345678', '776', '2027-08-15', 10, NOW(), NOW()),
    ('5333567890123456', '887', '2029-04-05', 11, NOW(), NOW()),
    ('4539755554443333', '998', '2030-12-31', 12, NOW(), NOW()),
    ('5291777776665555', '111', '2025-05-09', 13, NOW(), NOW()),
    ('4024555512341234', '222', '2026-08-20', 14, NOW(), NOW()),
    ('4539222233334444', '333', '2027-01-01', 15, NOW(), NOW()),
    ('5291444411112222', '444', '2028-10-11', 16, NOW(), NOW()),
    ('4024222255556666', '555', '2030-03-17', 17, NOW(), NOW()),
    ('4539000122334455', '666', '2029-07-22', 18, NOW(), NOW()),
    ('5291049876543210', '777', '2025-11-30', 19, NOW(), NOW()),
    ('4539576665554444', '888', '2026-04-14', 20, NOW(), NOW());
-- rollback DROP TABLE cards;