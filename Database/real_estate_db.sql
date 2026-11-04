CREATE DATABASE IF NOT EXISTS estateflow_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE estateflow_db;

CREATE TABLE roles (
 role_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 role_name VARCHAR(50) NOT NULL UNIQUE,
 description VARCHAR(255)
) ENGINE=InnoDB;

CREATE TABLE users (
 user_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 role_id BIGINT UNSIGNED NOT NULL,
 name VARCHAR(100) NOT NULL,
 email VARCHAR(100) NOT NULL UNIQUE,
 password_hash VARCHAR(255) NOT NULL,
 phone VARCHAR(20),
 status ENUM('active','inactive') NOT NULL DEFAULT 'active',
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_users_role FOREIGN KEY (role_id) REFERENCES roles(role_id)
) ENGINE=InnoDB;

CREATE TABLE customers (
 customer_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 user_id BIGINT UNSIGNED NOT NULL UNIQUE,
 customer_type ENUM('buyer','tenant') NOT NULL,
 preferred_location VARCHAR(100),
 budget DECIMAL(12,2),
 address TEXT,
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_customers_user FOREIGN KEY (user_id) REFERENCES users(user_id)
) ENGINE=InnoDB;

CREATE TABLE agents (
 agent_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 user_id BIGINT UNSIGNED NOT NULL UNIQUE,
 commission_rate DECIMAL(5,2) NOT NULL DEFAULT 0,
 status ENUM('active','inactive') NOT NULL DEFAULT 'active',
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_agents_user FOREIGN KEY (user_id) REFERENCES users(user_id),
 CONSTRAINT chk_agent_rate CHECK (commission_rate BETWEEN 0 AND 100)
) ENGINE=InnoDB;

CREATE TABLE properties (
 property_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 owner_id BIGINT UNSIGNED NOT NULL,
 title VARCHAR(100) NOT NULL,
 property_type ENUM('flat','land','commercial') NOT NULL,
 address VARCHAR(255) NOT NULL,
 area_sqft DECIMAL(10,2),
 price DECIMAL(12,2),
 monthly_rent DECIMAL(12,2),
 bedrooms INT,
 bathrooms INT,
 status ENUM('available','sold','rented') NOT NULL DEFAULT 'available',
 description TEXT,
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_properties_owner FOREIGN KEY (owner_id) REFERENCES users(user_id)
) ENGINE=InnoDB;

CREATE TABLE property_images (
 image_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 property_id BIGINT UNSIGNED NOT NULL,
 image_path VARCHAR(255) NOT NULL,
 is_primary BOOLEAN NOT NULL DEFAULT FALSE,
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_images_property FOREIGN KEY (property_id) REFERENCES properties(property_id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE agent_properties (
 assignment_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 agent_id BIGINT UNSIGNED NOT NULL,
 property_id BIGINT UNSIGNED NOT NULL,
 assigned_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 UNIQUE KEY uq_agent_property (agent_id, property_id),
 CONSTRAINT fk_ap_agent FOREIGN KEY (agent_id) REFERENCES agents(agent_id),
 CONSTRAINT fk_ap_property FOREIGN KEY (property_id) REFERENCES properties(property_id)
) ENGINE=InnoDB;

CREATE TABLE bookings (
 booking_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 property_id BIGINT UNSIGNED NOT NULL,
 customer_id BIGINT UNSIGNED NOT NULL,
 booking_date DATETIME NOT NULL,
 status ENUM('pending','approved','cancelled') NOT NULL DEFAULT 'pending',
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_bookings_property FOREIGN KEY (property_id) REFERENCES properties(property_id),
 CONSTRAINT fk_bookings_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
) ENGINE=InnoDB;

CREATE TABLE visits (
 visit_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 booking_id BIGINT UNSIGNED NOT NULL,
 property_id BIGINT UNSIGNED NOT NULL,
 customer_id BIGINT UNSIGNED NOT NULL,
 agent_id BIGINT UNSIGNED NOT NULL,
 visit_time DATETIME NOT NULL,
 status ENUM('scheduled','completed','cancelled') NOT NULL DEFAULT 'scheduled',
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_visits_booking FOREIGN KEY (booking_id) REFERENCES bookings(booking_id),
 CONSTRAINT fk_visits_property FOREIGN KEY (property_id) REFERENCES properties(property_id),
 CONSTRAINT fk_visits_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
 CONSTRAINT fk_visits_agent FOREIGN KEY (agent_id) REFERENCES agents(agent_id)
) ENGINE=InnoDB;

CREATE TABLE agreements (
 agreement_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 booking_id BIGINT UNSIGNED NOT NULL,
 property_id BIGINT UNSIGNED NOT NULL,
 customer_id BIGINT UNSIGNED NOT NULL,
 agreement_type ENUM('rent','sale') NOT NULL,
 start_date DATE NOT NULL,
 end_date DATE,
 amount DECIMAL(12,2) NOT NULL,
 document_path VARCHAR(255),
 status ENUM('active','expired','terminated') NOT NULL DEFAULT 'active',
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_agreements_booking FOREIGN KEY (booking_id) REFERENCES bookings(booking_id),
 CONSTRAINT fk_agreements_property FOREIGN KEY (property_id) REFERENCES properties(property_id),
 CONSTRAINT fk_agreements_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
) ENGINE=InnoDB;

CREATE TABLE payments (
 payment_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 agreement_id BIGINT UNSIGNED NOT NULL,
 amount DECIMAL(12,2) NOT NULL,
 due_date DATE NOT NULL,
 paid_at DATETIME,
 payment_type ENUM('rent','sale','advance') NOT NULL,
 payment_method VARCHAR(50),
 transaction_ref VARCHAR(100) UNIQUE,
 status ENUM('pending','paid','partial') NOT NULL DEFAULT 'pending',
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_payments_agreement FOREIGN KEY (agreement_id) REFERENCES agreements(agreement_id),
 CONSTRAINT chk_payment_amount CHECK (amount >= 0)
) ENGINE=InnoDB;

CREATE TABLE commissions (
 commission_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 agent_id BIGINT UNSIGNED NOT NULL,
 agreement_id BIGINT UNSIGNED NOT NULL,
 amount DECIMAL(12,2) NOT NULL,
 payment_status ENUM('pending','paid') NOT NULL DEFAULT 'pending',
 paid_at DATETIME,
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_commissions_agent FOREIGN KEY (agent_id) REFERENCES agents(agent_id),
 CONSTRAINT fk_commissions_agreement FOREIGN KEY (agreement_id) REFERENCES agreements(agreement_id)
) ENGINE=InnoDB;

CREATE TABLE maintenance (
 complaint_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 property_id BIGINT UNSIGNED NOT NULL,
 customer_id BIGINT UNSIGNED NOT NULL,
 title VARCHAR(100) NOT NULL,
 description TEXT,
 priority ENUM('low','medium','high') NOT NULL DEFAULT 'medium',
 status ENUM('open','in_progress','resolved') NOT NULL DEFAULT 'open',
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_maintenance_property FOREIGN KEY (property_id) REFERENCES properties(property_id),
 CONSTRAINT fk_maintenance_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
) ENGINE=InnoDB;

CREATE TABLE expenses (
 expense_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 recorded_by BIGINT UNSIGNED NOT NULL,
 category VARCHAR(100) NOT NULL,
 amount DECIMAL(12,2) NOT NULL,
 expense_date DATE NOT NULL,
 description TEXT,
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_expenses_user FOREIGN KEY (recorded_by) REFERENCES users(user_id),
 CONSTRAINT chk_expense_amount CHECK (amount >= 0)
) ENGINE=InnoDB;

CREATE TABLE notifications (
 notification_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 user_id BIGINT UNSIGNED NOT NULL,
 title VARCHAR(100) NOT NULL,
 message TEXT NOT NULL,
 is_read BOOLEAN NOT NULL DEFAULT FALSE,
 created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT fk_notifications_user FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
) ENGINE=InnoDB;
