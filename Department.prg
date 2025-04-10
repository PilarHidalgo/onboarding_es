* File: Department.prg
PROCEDURE AddDepartment
    LOCAL lcName
    lcName = THISFORM.txtName.Value

    INSERT INTO Departments (Name) VALUES (lcName)
ENDPROC

PROCEDURE RemoveDepartment
    LOCAL lnDepartmentId
    lnDepartmentId = THISFORM.grdDepartments.Value

    DELETE FROM Departments WHERE Id = lnDepartmentId
ENDPROC

PROCEDURE UpdateDepartment
    LOCAL lnDepartmentId, lcName
    lnDepartmentId = THISFORM.grdDepartments.Value
    lcName = THISFORM.txtName.Value

    UPDATE Departments SET Name = lcName WHERE Id = lnDepartmentId
ENDPROC
