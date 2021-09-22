/* Dimensions */
\c warehouse;

CREATE TABLE user_D (
    id INTEGER,
    age INTEGER,
    gender TEXT,
    country TEXT,
    is_active BOOLEAN,
    registration_ts TIMESTAMP
);

CREATE TABLE product_D (
    id INTEGER,
    product_name TEXT,
    category TEXT
);

CREATE TABLE supplier_D (
    id INTEGER,
    supplier_name TEXT
);

CREATE TABLE campaign_D (
    id INTEGER,
    campaign_name TEXT,
    campaign_category TEXT,
    started_on DATE,
    ended_on DATE
);

/* Facts */
CREATE TABLE sales_F (
    id INTEGER,
    user_id INTEGER,
    product_id INTEGER,
    supplier_id INTEGER,
    campaign_id DATE,
    sale_price FLOAT,
    sales_ts TIMESTAMP
);

CREATE TABLE daily_sales_A (
    sales_date DATE,
    unique_users INTEGER,
    total_sales INTEGER
);

CREATE TABLE daily_campaign_conversion_A (
    conversion_date DATE,
    campaign TEXT,
    country TEXT,
    users INT,
    total_purchases INT,
    total_sales FLOAT
);