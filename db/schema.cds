namespace employee;
using { managed } from '@sap/cds/common';

entity Employees : managed {
    key ID : UUID @(Core.Computed : true);
    name : String(100);
    position : String(100);
    room : String(5);
    department : Association to Departments;
}

entity Departments : managed {
    key ID : UUID @(Core.Computed : true);
    name : String(100);
    head: String(100);
    employees : Association to many Employees on employees.department = $self;
}