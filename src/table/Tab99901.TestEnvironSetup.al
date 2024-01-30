table 99901 "Test Environ. Setup"
{
    Caption = 'Environment Setup';
    DataClassification = ToBeClassified;
    DataPerCompany = false;

    fields
    {

        field(1; "Primary Key"; Code[10])
        {
            DataClassification = SystemMetadata;
            Caption = 'Primary Key';
        }
        field(2; "Src Eval.Company"; Text[30])
        {
            DataClassification = SystemMetadata;
            Caption = 'Source Evaluation Company';
            TableRelation = Company.Name;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }
}
