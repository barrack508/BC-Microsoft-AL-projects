
page 50100 "CustomerList"
{
    Caption = 'Customer Data';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "customer data";
    Editable = true; // Usually list pages are read-only; cards are editable

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Customer no"; Rec."Customer no")
                {
                    ApplicationArea = All;
                    Caption = 'Customer No.';
                    ToolTip = 'Specifies the unique ID assigned to the customer.';
                }
                field("customer name"; Rec."customer name")
                {
                    ApplicationArea = All;
                    Caption = 'Customer Name';
                    ToolTip = 'Specifies the full name of the customer.';
                }
                field("contacts"; Rec."contacts")
                {
                    ApplicationArea = All;
                    Caption = 'Contacts';
                    ToolTip = 'Specifies the contact information for the customer.';
                }
            }
        }
        area(FactBoxes)
        {
            // Optional: You can attach FactBox pages on the right side here
            systempart(Links; Links) { ApplicationArea = All; }
            systempart(Notes; Notes) { ApplicationArea = All; }
        }
    }

    actions
    {
        area(Processing)
        {
            action(MarkActive)
            {
                ApplicationArea = All;
                Caption = 'Set Active';
                ToolTip = 'Quickly change this customer''s status to active.';
                Image = Approve;

                trigger OnAction()
                begin
                    Rec."customer name" := 'Active';
                    Rec.Modify();
                end;
            }
        }
    }
}