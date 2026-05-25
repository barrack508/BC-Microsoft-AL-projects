codeunit 50110 CustomerCreatorMgt
{
    procedure CreateNewCustomer(CustName: Text[100]; CustEmail: Text[80])
    var
        CustomerRec: Record Customer;
    begin
        // 1. Initialize record and automatically pull the next number from the Number Series setup
        CustomerRec.Init();
        CustomerRec.Insert(true); // Set to true to trigger the automatic ID creation logic

        // 2. Assign the explicit data parameters
        CustomerRec.Validate(Name, CustName); // Validate triggers native field rules safely
        CustomerRec.Validate("E-Mail", CustEmail);

        // 3. Set standard accounting variables mandatory for transactions
        CustomerRec.Validate("Gen. Bus. Posting Group", 'DOMESTIC');
        CustomerRec.Validate("Customer Posting Group", 'DOMESTIC');
        CustomerRec.Validate("Payment Terms Code", '14 DAYS');

        // 4. Update the database entry
        CustomerRec.Modify(true);
        Message('Customer %1 (%2) successfully created!', CustomerRec."No.", CustomerRec.Name);
    end;
}
