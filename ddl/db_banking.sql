-- Adminer 5.3.0 PostgreSQL 16.9 dump

\connect "db_banking";

DROP TABLE IF EXISTS "account";
CREATE TABLE "public"."account" (
    "account_number" character varying(15) NOT NULL,
    "branch_name" character varying(15) NOT NULL,
    "balance" integer NOT NULL,
    CONSTRAINT "account_pkey" PRIMARY KEY ("account_number")
)
WITH (oids = false);

INSERT INTO "account" ("account_number", "branch_name", "balance") VALUES
('A-101',	'Downtown',	500),
('A-102',	'Perryridge',	400),
('A-201',	'Perryridge',	900),
('A-215',	'Mianus',	700),
('A-217',	'Brighton',	750),
('A-222',	'Redwood',	700),
('A-305',	'Round Hill',	350),
('A-333',	'Central',	850),
('A-444',	'North Town',	625);

DROP TABLE IF EXISTS "borrower";
CREATE TABLE "public"."borrower" (
    "customer_name" character varying(15) NOT NULL,
    "loan_number" character varying(15) NOT NULL,
    CONSTRAINT "borrower_pkey" PRIMARY KEY ("customer_name", "loan_number")
)
WITH (oids = false);

INSERT INTO "borrower" ("customer_name", "loan_number") VALUES
('Smith',	'L-11'),
('Jackson',	'L-14'),
('Hayes',	'L-15'),
('Adams',	'L-16'),
('Jones',	'L-17'),
('Williams',	'L-17'),
('McBride',	'L-20'),
('Smith',	'L-21'),
('Smith',	'L-23'),
('Curry',	'L-93');

DROP TABLE IF EXISTS "branch";
CREATE TABLE "public"."branch" (
    "branch_name" character varying(15) NOT NULL,
    "branch_city" character varying(15) NOT NULL,
    "assets" integer NOT NULL,
    CONSTRAINT "branch_pkey" PRIMARY KEY ("branch_name")
)
WITH (oids = false);

INSERT INTO "branch" ("branch_name", "branch_city", "assets") VALUES
('Brighton',	'Brooklyn',	7000000),
('Central',	'Rye',	400280),
('Downtown',	'Brooklyn',	900000),
('Mianus',	'Horseneck',	400200),
('North Town',	'Rye',	3700000),
('Perryridge',	'Horseneck',	1700000),
('Pownal',	'Bennington',	400000),
('Redwood',	'Palo Alto',	2100000),
('Round Hill',	'Horseneck',	8000000);

DROP TABLE IF EXISTS "customer";
CREATE TABLE "public"."customer" (
    "customer_name" character varying(15) NOT NULL,
    "customer_street" character varying(12) NOT NULL,
    "customer_city" character varying(15) NOT NULL,
    CONSTRAINT "customer_pkey" PRIMARY KEY ("customer_name")
)
WITH (oids = false);

INSERT INTO "customer" ("customer_name", "customer_street", "customer_city") VALUES
('Adams',	'Spring',	'Pittsfield'),
('Brooks',	'Senator',	'Brooklyn'),
('Curry',	'North',	'Rye'),
('Glenn',	'Sand Hill',	'Woodside'),
('Green',	'Walnut',	'Stamford'),
('Hayes',	'Main',	'Harrison'),
('Jackson',	'University',	'Salt Lake'),
('Johnson',	'Alma',	'Palo Alto'),
('Jones',	'Main',	'Harrison'),
('Lindsay',	'Park',	'Pittsfield'),
('Majeris',	'First',	'Rye'),
('McBride',	'Safety',	'Rye'),
('Smith',	'Main',	'Rye'),
('Turner',	'Putnam',	'Stamford'),
('Williams',	'Nassau',	'Princeton');

DROP TABLE IF EXISTS "depositor";
CREATE TABLE "public"."depositor" (
    "customer_name" character varying(15) NOT NULL,
    "account_number" character varying(15) NOT NULL,
    CONSTRAINT "depositor_pkey" PRIMARY KEY ("customer_name", "account_number")
)
WITH (oids = false);

INSERT INTO "depositor" ("customer_name", "account_number") VALUES
('Hayes',	'A-101'),
('Johnson',	'A-101'),
('Hayes',	'A-102'),
('Johnson',	'A-201'),
('Smith',	'A-215'),
('Jones',	'A-217'),
('Lindsay',	'A-222'),
('Turner',	'A-305'),
('Majeris',	'A-333'),
('Smith',	'A-444');

DROP TABLE IF EXISTS "loan";
CREATE TABLE "public"."loan" (
    "loan_number" character varying(15) NOT NULL,
    "branch_name" character varying(15) NOT NULL,
    "amount" integer NOT NULL,
    CONSTRAINT "loan_pkey" PRIMARY KEY ("loan_number")
)
WITH (oids = false);

INSERT INTO "loan" ("loan_number", "branch_name", "amount") VALUES
('L-11',	'Round Hill',	900),
('L-14',	'Downtown',	1500),
('L-15',	'Perryridge',	1500),
('L-16',	'Perryridge',	1300),
('L-17',	'Downtown',	1000),
('L-20',	'North Town',	7500),
('L-21',	'Central',	570),
('L-23',	'Redwood',	2000),
('L-93',	'Mianus',	500);

ALTER TABLE ONLY "public"."account" ADD CONSTRAINT "account_ibfk_1" FOREIGN KEY (branch_name) REFERENCES branch(branch_name) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."borrower" ADD CONSTRAINT "borrower_ibfk_1" FOREIGN KEY (customer_name) REFERENCES customer(customer_name) NOT DEFERRABLE;
ALTER TABLE ONLY "public"."borrower" ADD CONSTRAINT "borrower_ibfk_2" FOREIGN KEY (loan_number) REFERENCES loan(loan_number) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."depositor" ADD CONSTRAINT "depositor_ibfk_1" FOREIGN KEY (account_number) REFERENCES account(account_number) NOT DEFERRABLE;
ALTER TABLE ONLY "public"."depositor" ADD CONSTRAINT "depositor_ibfk_2" FOREIGN KEY (customer_name) REFERENCES customer(customer_name) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."loan" ADD CONSTRAINT "loan_ibfk_1" FOREIGN KEY (branch_name) REFERENCES branch(branch_name) NOT DEFERRABLE;

-- 2025-06-13 02:38:28 UTC