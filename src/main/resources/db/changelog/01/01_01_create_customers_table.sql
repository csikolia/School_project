--liquibase formatted sql
--changeset collis-sikolia:01-01

CREATE TABLE customers (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    dob DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO customers (name, email, phone_number, dob, created_at, updated_at)
VALUES
    ('John Odhiambo', 'john.odhiambo@example.com', '+254712345678', '1985-03-10', NOW(), NOW()),
    ('Mary Wanjiru', 'mary.wanjiru@example.com', '+254700112233', '1990-05-12', NOW(), NOW()),
    ('James Mwangi', 'james.mwangi@example.com', '+254711223344', '1982-11-07', NOW(), NOW()),
    ('Sarah Otieno', 'sarah.otieno@example.com', '+254722334455', '1995-01-19', NOW(), NOW()),
    ('David Kimani', 'david.kimani@example.com', '+254733445566', '1978-12-03', NOW(), NOW()),
    ('Lucy Wafula', 'lucy.wafula@example.com', '+254744556677', '1988-06-25', NOW(), NOW()),
    ('Grace Achieng', 'grace.achieng@example.com', '+254755667788', '1992-09-15', NOW(), NOW()),
    ('Brian Mutua', 'brian.mutua@example.com', '+254766778899', '1994-04-22', NOW(), NOW()),
    ('Cynthia Njoki', 'cynthia.njoki@example.com', '+254777889900', '1986-10-10', NOW(), NOW()),
    ('Daniel Mbugua', 'daniel.mbugua@example.com', '+254788990011', '1975-07-30', NOW(), NOW()),
    ('Nancy Njeri', 'nancy.njeri@example.com', '+254799001122', '1993-02-16', NOW(), NOW()),
    ('Kevin Omondi', 'kevin.omondi@example.com', '+254701112234', '1989-11-29', NOW(), NOW()),
    ('Esther Kiprotich', 'esther.kiprotich@example.com', '+254712223345', '1983-03-05', NOW(), NOW()),
    ('Paul Kilonzo', 'paul.kilonzo@example.com', '+254723334456', '1991-12-11', NOW(), NOW()),
    ('Carol Wambui', 'carol.wambui@example.com', '+254734445567', '1987-08-08', NOW(), NOW()),
    ('Joseph Ochieng', 'joseph.ochieng@example.com', '+254745556678', '1979-05-20', NOW(), NOW()),
    ('Faith Kariuki', 'faith.kariuki@example.com', '+254756667789', '1996-07-18', NOW(), NOW()),
    ('Mark Muthoni', 'mark.muthoni@example.com', '+254767778890', '1992-01-01', NOW(), NOW()),
    ('Jane Atieno', 'jane.atieno@example.com', '+254778889901', '1984-10-27', NOW(), NOW()),
    ('Simon Kosgey', 'simon.kosgey@example.com', '+254789990012', '1977-02-14', NOW(), NOW());

-- rollback DROP TABLE customers;