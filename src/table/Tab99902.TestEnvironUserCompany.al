table 99902 "Test. Environ. User Company"
{
    Caption = 'Test. Environ. User Company';
    DataClassification = CustomerContent;
    LookupPageId = "Test. Environ. User Companies";
    DrillDownPageId = "Test. Environ. User Companies";
    DataPerCompany = false;

    fields
    {
        field(1; "User Name"; Code[50])
        {
            Caption = 'User Name';
            NotBlank = true;
            Editable = false;
            TableRelation = User."User Name";
            ValidateTableRelation = false;
        }
        field(2; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            NotBlank = true;
            TableRelation = Company.Name;
        }
        field(3; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
    }
    keys
    {
        key(PK; "User Name", "Company Name")
        {
            Clustered = true;
        }
    }
}
