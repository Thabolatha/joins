
select *
from providers;

select p.patient_id, p.first_name, p.last_name
FROM patients p
INNER JOIN visits v ON p.patient_id = v.patient_id
INNER JOIN providers pr ON v.provider_id = pr.provider_id;

select p.patient_id, p.first_name,p.last_name, v.date_of_visit
from patients p
left join visits v on p. patient_id = v.patient_id;

SELECT  COUNT(v.visit_id) AS visit_count
FROM providers pr
LEFT JOIN visits v ON pr.provider_id = v.provider_id;

SELECT p.patient_id, p.first_name, p.last_name
FROM patients p
LEFT JOIN visits v ON p.patient_id = v.patient_id
UNION
SELECT p.first_name, p.last_name, v.date_of_visit
FROM patients p
RIGHT JOIN visits v ON p.patient_id = v.patient_id;

