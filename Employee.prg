* File: Employee.prg
PROCEDURE AddEmployee
    LOCAL lcFirstName, lcLastName, lnDepartmentId
    lcFirstName = THISFORM.txtFirstName.Value
    lcLastName = THISFORM.txtLastName.Value
    lnDepartmentId = THISFORM.cboDepartment.Value

    INSERT INTO Employees (FirstName, LastName, DepartmentId) ;
        VALUES (lcFirstName, lcLastName, lnDepartmentId)
ENDPROC

PROCEDURE RemoveEmployee
    LOCAL lnEmployeeId
    lnEmployeeId = THISFORM.grdEmployees.Value

    DELETE FROM Employees WHERE Id = lnEmployeeId
ENDPROC

PROCEDURE UpdateEmployee
    LOCAL lnEmployeeId, lcFirstName, lcLastName, lnDepartmentId
    lnEmployeeId = THISFORM.grdEmployees.Value
    lcFirstName = THISFORM.txtFirstName.Value
    lcLastName = THISFORM.txtLastName.Value
    lnDepartmentId = THISFORM.cboDepartment.Value

    UPDATE Employees SET ;
        FirstName = lcFirstName, ;
        LastName = lcLastName, ;
        DepartmentId = lnDepartmentId ;
    WHERE Id = lnEmployeeId
ENDPROC
