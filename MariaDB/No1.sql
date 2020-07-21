SELECT NAME , (SELECT MAX(mount) FROM salary) hightestSalary
FROM user 
WHERE id =  
(SELECT user_id FROM salary WHERE mount =  
(SELECT MAX(mount) FROM salary))