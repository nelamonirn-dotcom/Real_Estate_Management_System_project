🏢 EstateFlow – Complete Real Estate Management System

> A personal full-stack web development project for managing properties, customers, agents, bookings, rentals, sales, payments, and maintenance in one place.

Project Owner: nelamoni
Project ID: 1297020
Project Status: Planning / Development
Project Type: Personal Project
Proposed Stack: HTML, CSS, JavaScript, React, PHP, Laravel, MySQL

> **Note:** This README describes the planned system. Features, endpoints, and database tables below are design targets, not claims that they are already implemented.

📌 1. Introduction

EstateFlow is a proposed web-based Real Estate Management System designed to simplify property listing, customer communication, booking, sales, rent collection, and payment tracking. It will provide a public property discovery website and role-based dashboards for administrators, property owners, agents, customers, and tenants.

🎯 2. Project Purpose

Real estate operations often depend on spreadsheets, paper records, and disconnected messaging. EstateFlow aims to centralize property records and related transactions, reduce repetitive manual work, make property availability easier to track, and provide a clearer customer experience.

Objectives

• Manage properties, images, prices, locations, and availability.
• Allow customers to search, filter, view, and request property visits.
• Track bookings, rental agreements, sales, invoices, and payments.
• Maintain customer, owner, agent, and tenant records.
• Support payment status, receipts, refunds, and audit history.
• Provide role-based dashboards and operational reports.
• Offer a responsive interface for desktop and mobile devices.

👥 3. Target Users

|Role            |Main activities                                                          |
|----------------|-------------------------------------------------------------------------|
|Administrator   |Manage users, listings, bookings, payments, and reports                  |
|Property Owner  |View and manage owned properties and associated records                  |
|Agent           |Manage assigned listings, leads, visits, and commissions                 |
|Customer / Buyer|Browse properties, inquire, book visits, and track purchases             |
|Tenant          |View rental agreements, rent invoices, payments, and maintenance requests|

✨ 4. Planned Features

Phase 1 — Minimum Viable Product (MVP)

• Registration, login, and role-based access.
• Property create/read/update/delete (CRUD) for authorized users.
• Property listing with search and filters.
• Property details, photos, and availability status.
• Customer profiles, inquiries, and visit booking requests.
• Basic admin dashboard.

Phase 2 — Business Operations

• Rental agreements, monthly rent invoices, and due-date tracking.
• Property sales, buyer records, and installment schedules.
• Agent assignment and commission tracking.
• Maintenance requests and status updates.
• Notifications and downloadable payment receipts.

Phase 3 — Advanced Features

• Secure online payment gateway integration.
• Payment refunds and reconciliation.
• Analytics and exportable reports.
• Map-based property discovery.
• Automated reminders and document management.

🏠 5. Homepage Design

The proposed homepage will include:

1. Navigation bar: Logo, Home, Properties, About, Contact, Login/Register.
2. Hero section: Property-themed banner, headline, and search controls.
3. Search/filter bar: Location, type, budget, bedrooms, and sale/rent category.
4. Featured properties: Responsive cards with images, price, area, and status.
5. Why EstateFlow: Key advantages for customers and owners.
6. How it works: Search → View details → Request visit → Confirm transaction.
7. Call to action: List a property or contact an agent.
8. Footer: Contact information, useful links, and legal pages.

Visual direction: Clean modern layout, navy/blue primary colors, white backgrounds, teal highlights, accessible typography, and mobile-first responsive components.

🛠️ 6. Technology Stack

|Layer         |Technologies                                |Purpose                                            |
|--------------|--------------------------------------------|---------------------------------------------------|
|Frontend      |HTML, CSS, JavaScript, React                |Responsive UI and interactive pages                |
|Backend       |PHP, Laravel                                |REST API, validation, authorization, business rules|
|Database      |MySQL                                       |Relational data storage                            |
|Authentication|Laravel Sanctum (proposed)                  |Secure session/API authentication                  |
|Charts        |Chart.js (optional)                         |Dashboard visualization                            |
|Tools         |VS Code, Git, GitHub, Composer, Node.js, npm|Development and collaboration                      |

Architecture: React frontend → Laravel API → MySQL database. PHP is used through Laravel; a separate PHP backend is not required.

🧱 7. Proposed Project Structure

estateflow/
├── frontend/                  # React application
│   ├── public/
│   ├── src/
│   │   ├── components/
│   │   ├── pages/
│   │   ├── layouts/
│   │   ├── services/
│   │   ├── hooks/
│   │   └── App.jsx
│   └── package.json
├── backend/                   # Laravel application
│   ├── app/
│   ├── database/
│   │   ├── migrations/
│   │   └── seeders/
│   ├── routes/
│   │   └── api.php
│   └── composer.json
├── docs/
│   ├── er-diagram.md
│   └── api-spec.md
└── README.md

🗄️ 8. Database Model

Core tables

|Table                 |Key fields / relationships                                                  |
|----------------------|----------------------------------------------------------------------------|
|`users`               |`id` PK, name, email, password, role                                        |
|`customer_profiles`   |`id` PK, `user_id` FK → users                                               |
|`owner_profiles`      |`id` PK, `user_id` FK → users                                               |
|`agent_profiles`      |`id` PK, `user_id` FK → users                                               |
|`properties`          |`id` PK, `owner_id` FK → owner_profiles, title, price, status               |
|`property_images`     |`id` PK, `property_id` FK → properties                                      |
|`bookings`            |`id` PK, `property_id` FK, `customer_id` FK → customer_profiles             |
|`rental_agreements`   |`id` PK, `property_id` FK, `tenant_user_id` FK → users                      |
|`sales`               |`id` PK, `property_id` FK, `buyer_customer_id` FK → customer_profiles       |
|`invoices`            |`id` PK, `customer_id` FK, optional `agreement_id` FK, optional `sale_id` FK|
|`payments`            |`id` PK, `invoice_id` FK, amount, status, paid_at                           |
|`payment_transactions`|`id` PK, `payment_id` FK, gateway_reference, status                         |
|`refunds`             |`id` PK, `payment_id` FK, amount, status                                    |
|`maintenance_requests`|`id` PK, `property_id` FK, `reported_by_user_id` FK                         |
|`notifications`       |`id` PK, `user_id` FK, message, read_at                                     |

> This is a proposed logical model. Final constraints, ownership handling, indexes, and invoice relationships will be finalized during database design. Use decimal types for money and database transactions for payment-related updates.

Customer & Payment ER Diagram

erDiagram
    USERS ||--o| CUSTOMER_PROFILES : has
    USERS ||--o| OWNER_PROFILES : has
    OWNER_PROFILES ||--o{ PROPERTIES : owns
    PROPERTIES ||--o{ PROPERTY_IMAGES : contains
    CUSTOMER_PROFILES ||--o{ BOOKINGS : requests
    PROPERTIES ||--o{ BOOKINGS : receives
    CUSTOMER_PROFILES ||--o{ SALES : purchases
    PROPERTIES ||--o{ SALES : sold_through
    USERS ||--o{ RENTAL_AGREEMENTS : rents
    PROPERTIES ||--o{ RENTAL_AGREEMENTS : leased_under
    CUSTOMER_PROFILES ||--o{ INVOICES : billed
    SALES ||--o{ INVOICES : generates
    RENTAL_AGREEMENTS ||--o{ INVOICES : generates
    INVOICES ||--o{ PAYMENTS : paid_by
    PAYMENTS ||--o{ PAYMENT_TRANSACTIONS : processed_as
    PAYMENTS ||--o{ REFUNDS : may_have

    USERS {
      bigint id PK
      string name
      string email UK
      string password
      string role
    }
    CUSTOMER_PROFILES {
      bigint id PK
      bigint user_id FK
      string phone
    }
    OWNER_PROFILES {
      bigint id PK
      bigint user_id FK
    }
    PROPERTIES {
      bigint id PK
      bigint owner_id FK
      string title
      decimal price
      string status
    }
    PROPERTY_IMAGES {
      bigint id PK
      bigint property_id FK
      string image_path
    }
    BOOKINGS {
      bigint id PK
      bigint customer_id FK
      bigint property_id FK
      datetime visit_at
      string status
    }
    SALES {
      bigint id PK
      bigint buyer_customer_id FK
      bigint property_id FK
      decimal sale_price
    }
    RENTAL_AGREEMENTS {
      bigint id PK
      bigint tenant_user_id FK
      bigint property_id FK
      date start_date
      date end_date
    }
    INVOICES {
      bigint id PK
      bigint customer_id FK
      bigint sale_id FK
      bigint agreement_id FK
      decimal total_amount
      string status
    }
    PAYMENTS {
      bigint id PK
      bigint invoice_id FK
      decimal amount
      string status
    }
    PAYMENT_TRANSACTIONS {
      bigint id PK
      bigint payment_id FK
      string gateway_reference
      string status
    }
    REFUNDS {
      bigint id PK
      bigint payment_id FK
      decimal amount
      string status
    }

Important modeling note: Tenant invoices may require a tenant-specific billing profile or a shared customer profile; this must be resolved before implementing migrations. Each invoice should identify exactly one billing context (such as rent or sale) with explicit validation.

💳 9. Payment Management Workflow

1. Authorized user creates a booking deposit, rent, or sales invoice.
2. Customer views invoice details and selects a supported payment method.
3. Backend creates a payment attempt with a unique reference.
4. Payment gateway processes the transaction (or an authorized admin records an offline payment).
5. Backend verifies the gateway callback/webhook server-side.
6. Verified successful payment updates invoice balances and generates a receipt.
7. Failed or pending payments remain visible for retry or reconciliation.
8. Authorized refund requests follow a separate approval and audit workflow.

Payment safeguards: Never store raw card details, never trust frontend payment-success messages, verify webhook signatures, use idempotency keys, and prevent duplicate receipts or overpayments. Gateway credentials must remain on the server.

🔌 10. Proposed REST API

|Method|Endpoint                    |Purpose                       |
|------|----------------------------|------------------------------|
|POST  |`/api/register`             |Create account                |
|POST  |`/api/login`                |Authenticate user             |
|GET   |`/api/properties`           |List/filter properties        |
|GET   |`/api/properties/{id}`      |View property details         |
|POST  |`/api/properties`           |Create property (authorized)  |
|PUT   |`/api/properties/{id}`      |Update property (authorized)  |
|DELETE|`/api/properties/{id}`      |Remove property (authorized)  |
|POST  |`/api/bookings`             |Request property visit        |
|GET   |`/api/my/bookings`          |View own bookings             |
|GET   |`/api/invoices`             |View permitted invoices       |
|POST  |`/api/payments/initialize`  |Start payment attempt         |
|POST  |`/api/payments/webhook`     |Receive verified gateway event|
|GET   |`/api/payments/{id}/receipt`|Retrieve authorized receipt   |
|GET   |`/api/admin/dashboard`      |Admin summary                 |

These are planned routes and will only work after their Laravel controllers, policies, and database migrations are implemented.

🚀 11. Development Setup (After Code Is Created)

Prerequisites

• PHP and Composer compatible with the selected Laravel release.
• Node.js and npm compatible with the selected React/Vite release.
• MySQL server.
• Git and a code editor.

Suggested initial scaffolding

# Create the repository folder
mkdir estateflow
cd estateflow

# Create a Laravel backend
composer create-project laravel/laravel backend

# Create a React frontend with Vite
npm create vite@latest frontend -- --template react
cd frontend
npm install

Backend configuration (planned)

1. Create a MySQL database named estateflow.
2. Set DB_CONNECTION=mysql, DB_HOST, DB_PORT, DB_DATABASE, DB_USERNAME, and DB_PASSWORD in backend/.env.
3. Implement the proposed database migrations and seeders.
4. From backend/, run:

php artisan migrate
php artisan serve

5. From frontend/, run:

npm run dev

> The commands above scaffold starter projects; they **do not** automatically implement EstateFlow features. Configure CORS, authentication, and API base URLs before connecting frontend and backend. Never commit `.env` secrets.

🗓️ 12. Development Roadmap

|Stage                  |Target weeks|Deliverables                                       |
|-----------------------|------------|---------------------------------------------------|
|Planning & UI sketches |1–2         |Requirements, user flows, wireframes, ERD          |
|Frontend foundation    |3–4         |Layout, homepage, listing and auth screens         |
|Laravel backend        |5–6         |Database migrations, authentication, roles         |
|Property & booking     |7–8         |Property CRUD, search, booking workflow            |
|Rental, sales & payment|9–10        |Agreements, invoices, payment records, receipts    |
|Quality & release      |11–12       |Testing, security review, documentation, deployment|

MVP release goal: A working login, property management, listing/search, and booking flow before implementing live payments.

🔐 13. Security & Quality

• Hash passwords using Laravel’s supported hashing mechanisms.
• Enforce authorization on every sensitive API route and object.
• Validate requests server-side and use parameterized database access/Eloquent.
• Protect authentication cookies/tokens and configure CORS appropriately.
• Validate uploaded file type, size, and storage permissions.
• Use HTTPS in production and keep secrets in environment configuration.
• Write unit, feature, and end-to-end tests for core workflows.
• Back up the database and log administrative/payment changes.

🧪 14. Test Scenarios

• Customer cannot edit another owner’s property.
• Booking cannot be confirmed for an unavailable property.
• Duplicate payment webhooks do not double-credit an invoice.
• Failed payments do not generate paid receipts.
• Invoice totals and remaining balances calculate correctly.
• Unauthorized users cannot access another customer’s invoices.
• Mobile homepage and forms remain usable on narrow screens.

🌱 15. Future Improvements

• Interactive map and neighborhood search.
• Email/SMS reminders.
• Document e-signature integration.
• Property recommendation engine.
• Multi-company support and localization.
• Advanced revenue and occupancy analytics.

📍 16. Current Status & Next Steps

Current stage: Proposal and system design. The repository structure, API, and database schema are planned and need implementation.

Recommended next steps:

1. Finalize the feature scope for MVP.
2. Create homepage and dashboard wireframes.
3. Review the ER diagram and settle tenant/customer billing rules.
4. Initialize the React and Laravel projects.
5. Create Laravel migrations for users, properties, and bookings.
6. Implement authentication and property CRUD.

────────

Developed by: nelamoni
ID: 1297020
Project: EstateFlow – Complete Real Estate Management System
