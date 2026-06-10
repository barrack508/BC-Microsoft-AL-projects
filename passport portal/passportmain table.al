table 50102 "ECitizen Passport App"
{
    DataClassification = CustomerContent;
    Caption = 'eCitizen Passport Application';

    field
    {
        field(1; "Application No."; Code[20]) { Caption = 'Application No.'; }
        field(2; "Passport Owner"; Enum "Passport Owner Type") { Caption = 'Passport Owner'; }

        field(3; "Dual Nationality Status"; Enum "Dual Nationality Type")
        {
            Caption = 'Dual Nationality';
            trigger OnValidate()
            begin
                if "Dual Nationality Status" <> "Dual Nationality Type"::Yes then
                    "Country of Second Nationality" := '';
            end;
        }
        field(4; "Country of Second Nationality"; Text[50]) { Caption = 'Specify Second Country'; }

        field(5; "Ordinary Application Type"; Enum "Ordinary Application Type") { Caption = 'Ordinary Application Type'; }
        field(6; "Passport Page Count"; Enum "Passport Page Count") { Caption = 'Passport Page Count'; }

        field(7; "Submission Location"; Enum "Submission Location") { Caption = 'Select Location to Submit Application'; }
        field(8; "Surname"; Text[50]) { Caption = 'Surname'; }
        field(9; "Other Names"; Text[100]) { Caption = 'Other Names'; }
        field(10; "Date of Birth"; Date) { Caption = 'Date of Birth'; }
        field(11; "Special Peculiarities"; Text[150]) { Caption = 'Special peculiarities'; }
        field(12; "Gender"; Enum "Gender Type") { Caption = 'Gender'; }
        field(13; "Colour of Eyes"; Enum "Eye Color") { Caption = 'Colour of eyes'; }
        field(14; "Height - Feet"; Enum "Height Feet") { Caption = 'Height (Feet)'; }
        field(15; "Height - Inches"; Enum "Height Inches") { Caption = 'Height (Inches)'; }
        field(16; "Country of Birth Code"; Code[10]) { TableRelation = "Country/Region"; Caption = 'Country of birth'; }
        field(17; "Home County"; Text[50]) { Caption = 'Home County'; }
        field(18; "Place of Birth"; Text[100]) { Caption = 'Place of Birth'; }
        field(19; "Citizen By"; Enum "Citizenship Basis") { Caption = 'Citizen By'; }
        field(20; "KRA PIN"; Code[30]) { Caption = 'KRA Personal Identification Number (PIN)'; }
        field(21; "Birth Entry Number"; Code[30]) { Caption = 'Birth Entry Number'; }
        field(22; "Profession/Occupation"; Text[100]) { Caption = 'Profession/Occupation'; }
        field(23; "Marital Status"; Enum "Marital Status Portal") { Caption = 'Marital Status'; }
        field(24; "Reason for Travel"; Enum "Travel Reason") { Caption = 'Reason for travel'; }
        field(25; "Country of Residence Code"; Code[10]) { TableRelation = "Country/Region"; Caption = 'Country of Residence'; }
        field(26; "Postal Address"; Text[100]) { Caption = 'Postal Address'; }
        field(27; "Phone Number"; Text[30]) { Caption = 'Phone Number'; }
        field(28; "E-mail Address"; Text[80]) { Caption = 'E-mail Address'; }
        field(29; "Estate / Sublocation"; Text[100]) { Caption = 'Estate /Sublocation'; }
        field(30; "Hse. No./ Kijiji/ Village"; Text[100]) { Caption = 'Hse. No./ Kijiji/ Village'; }

        // --- Step 6: Parents Track ---
        field(31; "Fathers Status"; Enum "Parent Status")
        {
            Caption = 'Fathers Status';
            trigger OnValidate()
            begin
                if "Fathers Status" <> "Parent Status"::Available then begin
                    "Fathers Full Name" := '';
                    "Fathers ID Card Number" := '';
                    "Fathers Passport Number" := '';
                    "Fathers Place Of Birth" := '';
                    "Fathers Postal Address" := '';
                    "Fathers Postal Code" := '';
                    "Fathers Phone Number" := '';
                    Clear("Fathers ID Copy");
                end;
            end;
        }
        field(32; "Fathers Full Name"; Text[150]) { Caption = 'Fathers Full Name'; }
        field(33; "Fathers ID Card Number"; Code[30]) { Caption = 'Fathers ID Card Number'; }
        field(34; "Fathers Passport Number"; Code[30]) { Caption = 'Fathers Passport Number'; }
        field(35; "Fathers Place Of Birth"; Text[100]) { Caption = 'Fathers Place Of Birth'; }
        field(36; "Fathers Postal Address"; Text[100]) { Caption = 'Postal Address'; }
        field(37; "Fathers Postal Code"; Code[20]) { Caption = 'Postal Code'; TableRelation = "Post Code"; ValidateTableRelation = false; }
        field(38; "Fathers Phone Number"; Text[30]) { Caption = 'Fathers Phone Number'; }

        field(39; "Mothers Status"; Enum "Mother Status")
        {
            Caption = 'Mothers Status';
            trigger OnValidate()
            begin
                if "Mothers Status" <> "Mother Status"::Available then begin
                    "Mothers Full Name" := '';
                    "Mothers ID Card Number" := '';
                    "Mothers Passport Number" := '';
                    "Mothers Place Of Birth" := '';
                    "Mothers Postal Address" := '';
                    "Mothers Postal Code" := '';
                    "Mothers Phone Number" := '';
                    Clear("Mothers ID Copy");
                end;
            end;
        }
        field(40; "Mothers Full Name"; Text[150]) { Caption = 'Mothers Full Name'; }
        field(41; "Mothers ID Card Number"; Code[30]) { Caption = 'Mothers ID Card Number'; }
        field(42; "Mothers Passport Number"; Code[30]) { Caption = 'Mothers Passport Number'; }
        field(43; "Mothers Place Of Birth"; Text[100]) { Caption = 'Mothers Place Of Birth'; }
        field(44; "Mothers Postal Address"; Text[100]) { Caption = 'Postal Address'; }
        field(45; "Mothers Postal Code"; Code[20]) { Caption = 'Postal Code'; TableRelation = "Post Code"; ValidateTableRelation = false; }
        field(46; "Mothers Phone Number"; Text[30]) { Caption = 'Mothers Phone Number'; }

        // --- Step 8: Dependents Toggle ---
        field(47; "Do you have children?"; Enum "Children Status")
        {
            Caption = 'Do you have children?';
            trigger OnValidate()
            var
                AppChild: Record "ECitizen App Child";
            begin
                if "Do you have children?" <> "Children Status"::Yes then begin
                    AppChild.SetRange("Application No.", "Application No.");
                    if not AppChild.IsEmpty() then
                        AppChild.DeleteAll(true);
                end;
            end;
        }

        // --- Step 9: Storage Blobs ---
        field(48; "Recent Passport Photo"; Media) { Caption = 'Recent Passport Size Photo on a white Back Ground'; }
        field(49; "Applicants Signature"; Media) { Caption = 'Applicants Signature on a white Back Ground'; }
        field(50; "Applicants ID Copy Front"; Media) { Caption = 'Applicants ID Copy Front'; }
        field(51; "Applicants ID Copy Back"; Media) { Caption = 'Applicants ID Copy Back'; }
        field(52; "Applicants Birth Cert Copy"; Media) { Caption = 'Applicants Birth Certificate Copy'; }
        field(53; "Fathers ID Copy"; Media) { Caption = 'Fathers ID Copy'; }
        field(54; "Mothers ID Copy"; Media) { Caption = 'Mothers ID Copy'; }
    }

    keys
    {
        key(PK; "Application No.") { Clustered = true; }
    }
}

table 50103 "ECitizen App Kin"
{
    DataClassification = CustomerContent;
    Caption = 'eCitizen Application Next of Kin';

    fields
    {
        field(1; "Application No."; Code[20]) { Caption = 'Application No.'; TableRelation = "ECitizen Passport App"; }
        field(2; "Line No."; Integer) { Caption = 'Line No.'; }
        field(3; "Full Name"; Text[150]) { Caption = 'Full Name'; }
        field(4; "ID Card Number"; Code[30]) { Caption = 'ID Card Number'; }
        field(5; "Division"; Text[50]) { Caption = 'Division'; }
        field(6; "Location"; Text[50]) { Caption = 'Location'; }
        field(7; "Relationship"; Enum "Kin Relationship") { Caption = 'Relationship'; }
        field(8; "P. O. Box"; Text[50]) { Caption = 'P. O. Box'; }
        field(9; "Postal Code"; Code[20]) { Caption = 'Postal Code'; TableRelation = "Post Code"; ValidateTableRelation = false; }
        field(10; "Phone Number"; Text[30]) { Caption = 'Phone Number'; }
        field(11; "E-mail"; Text[80]) { Caption = 'E-mail'; }
    }

    keys
    {
        key(PK; "Application No.", "Line No.") { Clustered = true; }
    }
}

table 50104 "ECitizen App Child"
{
    DataClassification = CustomerContent;
    Caption = 'eCitizen Application Child';

    fields
    {
        field(1; "Application No."; Code[20]) { Caption = 'Application No.'; TableRelation = "ECitizen Passport App"; }
        field(2; "Line No."; Integer) { Caption = 'Line No.'; }
        field(3; "Child Full Name"; Text[150]) { Caption = 'Child Full Name'; }
        field(4; "Date of Birth"; Date) { Caption = 'Date of Birth'; }
        field(5; "Gender"; Enum "Gender Type") { Caption = 'Gender'; }
        field(6; "Birth Certificate No."; Code[30]) { Caption = 'Birth Certificate Number'; }
    }

    keys
    {
        key(PK; "Application No.", "Line No.") { Clustered = true; }
    }
}