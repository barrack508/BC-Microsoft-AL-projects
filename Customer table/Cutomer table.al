table 50100 "customer data"
{
    Caption = 'Customer data';
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "Customer no"; Code[20])
        {
            Caption = 'Customer No';
            DataClassification = ToBeClassified;
        }
        field(2; "customer name"; Text[50])
        {
            Caption = 'Customer Name';
            DataClassification = ToBeClassified;
        }
        field(3; "contacts"; Code[20])
        {
            Caption = 'Contacts';
            DataClassification = ToBeClassified;
        }
        field(4; "Status"; Option)
        {
            OptionMembers = Active,Inactive;
            Caption = 'Status';
            DataClassification = ToBeClassified;
        }
        field(5; "Created Date"; Date)
        {
            Caption = 'Created Date';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Customer no")
        {
            Clustered = true;
        }
    }

}
