--Questao1:
SELECT COUNT(experiences."endDate") AS "currentExperiences"  FROM experiences ;

--Questão 2:
SELECT COUNT(id) AS "Educations", educations."userId"  FROM educations Group by "userId";

--Questão 3:
SELECT COUNT(testimonials.message) AS "testimonailCount", users.name FROM testimonials JOIN users 
ON testimonials."writerId"=users.id WHERE testimonials."writerId"=435 GROUP BY testimonials."writerId", users.name;

--Questão 4:
SELECT MAX(salary) AS "maximumSalary",roles.name AS cargo FROM jobs JOIN roles ON jobs."roleId"=roles.id WHERE jobs.active=true  GROUP BY cargo ORDER BY "maximumSalary" ASC;