select Company.company_code as company, Company.founder, 
(select Count(lead_manager_code) from Lead_Manager where Lead_Manager.company_code = company), 
(select Count(senior_manager_code) from Senior_Manager where Senior_Manager.company_code = company),
(select Count(manager_code) from Manager where Manager.company_code = company), 
(select Count(employee_code) from Employee where Employee.employee_code = company) 
from Company, Lead_Manager,Senior_Manager,Manager, Employee order by company;
