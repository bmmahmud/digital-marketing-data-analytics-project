-- =====================================================
-- DIGITAL MARKETING ANALYTICS PROJECT DATABASE
-- =====================================================
USE digital_data;

-- Drop database if exists
DROP DATABASE IF EXISTS digital_marketing_db;

-- Create database
CREATE DATABASE digital_marketing_db;
USE digital_marketing_db;

-- =====================================================
-- TABLE 1: campaigns
-- =====================================================

CREATE TABLE campaigns (
    campaign_id INT AUTO_INCREMENT PRIMARY KEY,
    campaign_name VARCHAR(100),
    channel VARCHAR(50),  -- Google, Meta, TikTok
    product_type VARCHAR(50), -- Health, Pet, Car
    start_date DATE,
    end_date DATE,
    total_budget DECIMAL(12,2)
);

-- =====================================================
-- TABLE 2: ads
-- =====================================================

CREATE TABLE ads (
    ad_id INT AUTO_INCREMENT PRIMARY KEY,
    campaign_id INT,
    ad_name VARCHAR(100),
    target_audience VARCHAR(100),
    device_type VARCHAR(50), -- Mobile, Desktop
    FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id)
);

-- =====================================================
-- TABLE 3: daily_performance
-- =====================================================

CREATE TABLE daily_performance (
    performance_id INT AUTO_INCREMENT PRIMARY KEY,
    ad_id INT,
    performance_date DATE,
    impressions INT,
    clicks INT,
    conversions INT,
    revenue DECIMAL(12,2),
    spend DECIMAL(12,2),
    FOREIGN KEY (ad_id) REFERENCES ads(ad_id)
);

-- =====================================================
-- TABLE 4: website_experiments
-- =====================================================

CREATE TABLE website_experiments (
    experiment_id INT AUTO_INCREMENT PRIMARY KEY,
    experiment_name VARCHAR(100),
    variant VARCHAR(10), -- A or B
    test_date DATE,
    users INT,
    conversions INT
);

-- =====================================================
-- INSERT CAMPAIGNS
-- =====================================================

INSERT INTO campaigns (campaign_name, channel, product_type, start_date, end_date, total_budget)
VALUES
('Health Insurance Jan', 'Google', 'Health', '2026-01-01', '2026-01-31', 50000),
('Pet Insurance Jan', 'Meta', 'Pet', '2026-01-01', '2026-01-31', 35000),
('Car Insurance Jan', 'TikTok', 'Car', '2026-01-01', '2026-01-31', 25000),
('Health Insurance Feb', 'Google', 'Health', '2026-02-01', '2026-02-28', 55000);

-- =====================================================
-- INSERT ADS
-- =====================================================

INSERT INTO ads (campaign_id, ad_name, target_audience, device_type)
VALUES
(1, 'Health Search Ad 1', 'Age 25-40', 'Mobile'),
(1, 'Health Display Ad 2', 'Age 40-60', 'Desktop'),
(2, 'Pet Owners Creative A', 'Pet Owners 20-50', 'Mobile'),
(2, 'Pet Owners Creative B', 'Pet Owners 30-60', 'Desktop'),
(3, 'Young Drivers Video', 'Age 18-30', 'Mobile'),
(4, 'Health Feb Search', 'Age 30-55', 'Mobile');

-- =====================================================
-- INSERT DAILY PERFORMANCE DATA
-- =====================================================

INSERT INTO daily_performance (ad_id, performance_date, impressions, clicks, conversions, revenue, spend)
VALUES
-- Health Campaign Jan
(1, '2026-01-01', 15000, 750, 90, 9000, 3000),
(1, '2026-01-02', 18000, 820, 100, 10000, 3500),
(2, '2026-01-01', 12000, 500, 60, 6000, 2500),

-- Pet Campaign
(3, '2026-01-01', 20000, 900, 110, 11000, 4000),
(3, '2026-01-02', 22000, 950, 120, 12000, 4200),
(4, '2026-01-01', 17000, 600, 70, 7000, 2800),

-- Car Campaign
(5, '2026-01-01', 30000, 1200, 150, 15000, 6000),
(5, '2026-01-02', 28000, 1100, 140, 14000, 5500),

-- Health Campaign Feb
(6, '2026-02-01', 16000, 800, 95, 9500, 3200),
(6, '2026-02-02', 17000, 850, 100, 10000, 3400);

-- =====================================================
-- INSERT WEBSITE EXPERIMENT DATA
-- =====================================================

INSERT INTO website_experiments (experiment_name, variant, test_date, users, conversions)
VALUES
('Homepage CTA Test', 'A', '2026-01-10', 2000, 160),
('Homepage CTA Test', 'B', '2026-01-10', 2000, 210),
('Checkout Page Test', 'A', '2026-01-15', 1500, 120),
('Checkout Page Test', 'B', '2026-01-15', 1500, 180);

-- =====================================================
-- END OF SCRIPT
-- =====================================================
customer