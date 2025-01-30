CREATE TABLE categories (
	category_id VARCHAR(10) PRIMARY KEY,
	category VARCHAR(50) NOT NULL
);

CREATE TABLE subcategories (
	subcategory_id VARCHAR (10) PRIMARY KEY,
	subcategory VARCHAR(50) NOT NULL
);

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL
);

CREATE TABLE campigns (
	cf_id INT PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description TEXT NOT NULL,
	goal DECIMAL(10,2) NOT NULL,
	pledge DECIMAL(10,2) NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backer_count INT NOT NULL,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES categories (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategories (subcategory_id)
);