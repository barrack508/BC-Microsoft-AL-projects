table 50101 "CSD Seminar Setup"
{
    Caption = 'Seminar Setup';
    DataClassification = CustomerContent;

    fields
    {
        // No. 10 – Primary Key
        field(10; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = CustomerContent;
        }

        // No. 20 – Seminar Nos.
        field(20; "Seminar Nos."; Code[20])
        {
            Caption = 'Seminar Nos.';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }

        // No. 30 – Seminar Registration Nos.
        field(30; "Seminar Registration Nos."; Code[20])
        {
            Caption = 'Seminar Registration Nos.';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }

        // No. 40 – Posted Seminar Reg. Nos.
        field(40; "Posted Seminar Reg. Nos."; Code[20])
        {
            Caption = 'Posted Seminar Reg. Nos.';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}

