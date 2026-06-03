page 50101 "CSD Seminar Setup"
{
    Caption = 'Seminar Setup';
    PageType = Card;
    SourceTable = "CSD Seminar Setup";
    UsageCategory = Administration;
    ApplicationArea = All;
    DeleteAllowed = false;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(groupName)
            {
                Caption = 'Numbering';

                field("Seminar Nos."; Rec."Seminar Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number series used for seminars.';
                }

                field("Seminar Registration Nos."; Rec."Seminar Registration Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number series used for seminar registrations.';
                }

                field("Posted Seminar Reg. Nos."; Rec."Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number series used for posted seminar registrations.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(OpenNoSeries)
            {
                Caption = 'No. Series';
                ApplicationArea = All;
                Image = NumberSetup;
                ToolTip = 'Opens the No. Series list.';

                trigger OnAction()
                begin
                    Page.Run(Page::"No. Series");
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin

        if not Rec.Get('') then begin
            Rec.Init();
            Rec."Primary Key" := '';
            Rec.Insert();
        end;
    end;
}
