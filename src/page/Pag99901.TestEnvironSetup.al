page 99901 "Test Environ. Setup"
{
    ApplicationArea = All;
    Caption = 'Environment Setup';
    PageType = Card;
    SourceTable = "Test Environ. Setup";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Src Eval.Company"; Rec."Src Eval.Company")
                {
                    ToolTip = 'Specifies the value of the Src Eval.Company field.';
                }
            }
        }
    }


    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
