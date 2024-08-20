use quanlyhocviencodegym;

SELECT c.name AS class_name, COUNT(s.id) AS student_count
FROM Students s
JOIN Classes c ON s.classes_id = c.id
GROUP BY c.name;

SELECT a.address, COUNT(s.id) AS student_count
FROM Students s
JOIN Address a ON s.address_id = a.id
GROUP BY a.address;

SELECT c.name AS course_name, AVG(p.point) AS average_point
FROM Point p
JOIN Course c ON p.course_id = c.id
GROUP BY c.name;

-- Điểm cao nhất
SELECT MAX(point) AS highest_point FROM Point;

-- Điểm thấp nhất
SELECT MIN(point) AS lowest_point FROM Point;


SELECT UPPER(fullname) AS student_name_uppercase
FROM Students;

SELECT c.name AS course_name, AVG(p.point) AS average_point
FROM Point p
JOIN Course c ON p.course_id = c.id
GROUP BY c.name
ORDER BY average_point DESC
LIMIT 1;

SELECT AVG(point) AS overall_average_point
FROM Point;
