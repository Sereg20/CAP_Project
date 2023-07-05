using { employee } from '../db/schema';

@path: 'service/employee'
service RiskService {
    entity Employees as projection on employee.Employees;
    entity Departments as projection on employee.Departments;
}