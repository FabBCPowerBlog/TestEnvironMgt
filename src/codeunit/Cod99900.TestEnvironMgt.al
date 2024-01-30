codeunit 99900 TestEnvironMgt
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Company Triggers", OnCompanyOpen, '', false, false)]
    local procedure OnCompanyOpen();
    var
        TestEnvironSetup: Record "Test Environ. Setup";
    begin
        if TestEnvironSetup.Get() then begin
            TestEnvironSetup.TestField("Src Eval.Company");
            if CompanyName = TestEnvironSetup."Src Eval.Company" then
                if GuiAllowed then
                    Message('This template company should not be modified.');
        end;
    end;

}
