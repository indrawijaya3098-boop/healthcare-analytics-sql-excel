-- Revenue by Diagnosis
SELECT
    diagnosis,
    SUM(treatment_cost) AS total_revenue
FROM hospital_master
GROUP BY diagnosis
ORDER BY total_revenue DESC;
-- Revenue by Specialty
SELECT
    specialty,
    SUM(treatment_cost) AS total_revenue
FROM hospital_master
GROUP BY specialty
ORDER BY total_revenue DESC;
-- Revenue by City
SELECT
    city,
    SUM(treatment_cost) AS total_revenue
FROM hospital_master
GROUP BY city
ORDER BY total_revenue DESC;
-- Monthly Revenue Trend
SELECT
    strftime('%Y-%m', admission_date) AS month,
    SUM(treatment_cost) AS revenue
FROM hospital_master
GROUP BY month
ORDER BY month;
-- Average LOS by Diagnosis
SELECT
    diagnosis,
    ROUND(AVG(length_of_stay),2) AS avg_los
FROM hospital_master
GROUP BY diagnosis
ORDER BY avg_los DESC;
-- Top Revenue Doctor
SELECT
    doctor_name,
    SUM(treatment_cost) AS revenue
FROM hospital_master
GROUP BY doctor_name
ORDER BY revenue DESC;