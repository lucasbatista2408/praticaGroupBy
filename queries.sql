// QUESTÃO 1
SELECT COUNT("endDate") AS "currentExperiences" FROM experiences WHERE "endDate" IS NOT NULL;

// QUESTÃO 2
SELECT "userId" AS id, COUNT("courseId") AS educations FROM educations GROUP BY "userId";

// QUESTÃO 3
SELECT users.name as writer, COUNT("message") AS "testimonailCount" FROM testimonials 
JOIN users ON users.id = testimonials."writerId"
GROUP BY writer;

//QUESTÃO 4
SELECT MAX(salary) as maximumSalary, roles.name AS role FROM jobs
JOIN roles ON roles.id = jobs."roleId"
WHERE jobs.active=true
GROUP BY roles.name
ORDER BY maximumSalary DESC;