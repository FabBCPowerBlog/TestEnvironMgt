page 99902 "Test. Environ. User Companies"
{
    ApplicationArea = All;
    Caption = 'Test. Environ. User Companies';
    PageType = List;
    SourceTable = "Test. Environ. User Company";
    UsageCategory = None;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("User Name"; Rec."User Name")
                {
                    ToolTip = 'Specifies the value of the User Name field.';
                }
                field("Company Name"; Rec."Company Name")
                {
                    ToolTip = 'Specifies the value of the Company Name field.';
                }
                field("Creation Date"; Rec."Creation Date")
                {
                    ToolTip = 'Specifies the value of the Company Name field.';
                }
            }
        }
    }
}
