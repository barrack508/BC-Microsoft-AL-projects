pageextension 50100 CustomerListHelloExt extends "Customer List"
{
    trigger OnOpenPage()
    begin
        // Message displays a non-blocking popup to the user
        Message('Hello World! Welcome back to your Business Central Dashboard.');
    end;
}
