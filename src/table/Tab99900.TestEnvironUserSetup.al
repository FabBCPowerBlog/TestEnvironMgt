table 99900 "Test Environ. User Setup"
{
    Caption = 'Environment User Setup ';
    DataClassification = ToBeClassified;
    LookupPageId = "Test Environ. User Setup";
    DrillDownPageId = "Test Environ. User Setup";
    DataPerCompany = false;

    fields
    {
        field(1; "User Name"; Code[50])
        {
            DataClassification = SystemMetadata;
            Caption = 'User Name';
            NotBlank = true;
            TableRelation = User."User Name";
            ValidateTableRelation = false;
        }
        field(2; Name; Text[50])
        {
            DataClassification = SystemMetadata;
            Caption = 'Name';
        }
        field(3; "Internal ID"; Code[3])
        {
            DataClassification = SystemMetadata;
            Caption = 'Internal ID';
        }
        field(4; "E-mails"; Text[250])
        {
            DataClassification = SystemMetadata;
            Caption = 'E-mails';
        }
        field(5; Companies; Integer)
        {
            Caption = 'Companies';
            FieldClass = FlowField;
            CalcFormula = Count("Test. Environ. User Company" WHERE("User Name" = FIELD("User Name")));
        }
    }
    keys
    {
        key(PK; "User Name")
        {
            Clustered = true;
        }
    }
}
