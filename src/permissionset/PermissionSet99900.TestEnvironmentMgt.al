permissionset 99900 TestEnvironmentMgt
{
    Assignable = true;
    Caption = 'TestEnvironmentMgt', MaxLength = 30;
    Permissions =
        table "Test Environ. User Setup" = X,
        tabledata "Test Environ. User Setup" = RMID,
        table "Test Environ. Setup" = X,
        tabledata "Test Environ. Setup" = RMID,
        table "Test. Environ. User Company" = X,
        tabledata "Test. Environ. User Company" = RMID,
        codeunit TestEnvironMgt = X,
        page "Test. Environ. User Companies" = X,
        page "Test Environ. Setup" = X,
        page "Test Environ. User Setup" = X;
}
