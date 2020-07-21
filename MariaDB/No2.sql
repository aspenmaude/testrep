SELECT SUM(mount) HQ,
(SELECT SUM(mount)  FROM salary WHERE user_id IN (SELECT id FROM user WHERE dprtmt_id = (SELECT id FROM dprtmt WHERE name = 'management support team' ))) managementSupportTeam , 
(SELECT SUM(mount) FROM salary WHERE user_id IN (SELECT id FROM user WHERE dprtmt_id = (SELECT id FROM dprtmt WHERE NAME = 'HR team' ))) HRTeam, 
(SELECT SUM(mount) FROM salary WHERE user_id IN (SELECT id FROM user WHERE dprtmt_id = (SELECT id FROM dprtmt WHERE name = 'R&D team' ))) RDTeam

FROM salary WHERE user_id IN (SELECT id FROM user WHERE dprtmt_id = (SELECT id FROM dprtmt WHERE name = 'HQ' )) 


 