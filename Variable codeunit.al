codeunit 50101 MyCodeunit
{

    trigger OnRun();
    begin
    end;

    local procedure MyProcedure();
    var
        Cust: Record "Customer data";
    begin
        Cust.Init();
        Cust."Customer no" := 'CUST001';
        Cust."customer name" := 'Acme Inc.';
        Cust."contacts" := '0701761055';
        Cust.Insert();
    end;

    local procedure SomeCode();
    begin
        // simple placeholder to resolve reference
    end;

    var
        GlobalTextVar: Text[50];
        GlobalLabel: Label 'Global label text';
        NewOption: Option FirstOption,"Second Option"
 ,"Third Option";
        Cust: Record Customer;
        TempCust: Record Customer temporary;
        CustNoArray: array[10] of Code[20];
        ShowDetails: Boolean;
}