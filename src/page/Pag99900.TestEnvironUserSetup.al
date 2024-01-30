page 99900 "Test Environ. User Setup"
{
    ApplicationArea = All;
    Caption = 'Environnement User Setup';
    PageType = List;
    SourceTable = "Test Environ. User Setup";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("User Name"; Rec."User Name")
                {
                    ApplicationArea = Basic, Suite;
                    ShowMandatory = true;
                    ToolTip = 'User Name';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = Basic, Suite;
                    ShowMandatory = true;
                    ToolTip = 'Name.';
                }

                field("Internal ID"; Rec."Internal ID")
                {
                    ApplicationArea = Basic, Suite;
                    ShowMandatory = true;
                    ToolTip = 'Internal ID';
                }

                field("E-mails"; Rec."E-mails")
                {
                    ApplicationArea = Basic, Suite;
                    ShowMandatory = true;
                    ToolTip = 'E-mails';
                }
                field(Companies; Rec.Companies)
                {
                    ApplicationArea = Basic, Suite;
                    ShowMandatory = true;
                    ToolTip = 'companies';
                }
            }
        }
    }
    actions
    {
        area(navigation)
        {
            action("User Card")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'User Card';
                Image = User;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                RunObject = Page "User Card";
                RunPageLink = "User Name" = field("User Name");
                ToolTip = 'View the selected User.';
            }
            action("Test Environ. Setup")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Environnement Setup';
                Image = Company;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                RunObject = Page "Test Environ. Setup";
                ToolTip = 'View the Environnement Setup.';
            }
            action(CreateCompany)
            {
                AccessByPermission = TableData Company = RI;
                ApplicationArea = Basic, Suite;
                Caption = 'Create Company ';
                Image = Copy;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                ToolTip = 'Copy an existing company to a new company.';

                trigger OnAction()
                var
                    FromCompany: Record Company;
                    EnvironnementSetup: record "Test Environ. Setup";
                    CopyCompany: Report "Copy Company";
                begin

                    EnvironnementSetup.Get();
                    EnvironnementSetup.TestField("Src Eval.Company");

                    FromCompany.SetRange(Name, EnvironnementSetup."Src Eval.Company");
                    CopyCompany.SetTableView(FromCompany);
                    CopyCompany.RunModal();
                end;
            }
        }
    }
}
