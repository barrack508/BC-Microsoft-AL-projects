page 50102 "ECitizen Passport Card"
{
    PageType = Document;
    SourceTable = "ECitizen Passport App";
    Caption = 'eCitizen Passport Portal';
    ApplicationArea = All;
    UsageCategory = Tasks;

    layout
    {
        area(Content)
        {
            group("Application Details Summary")
            {
                Caption = 'Core Identification';
                field("Application No."; Rec."Application No.") { ApplicationArea = All; }
            }

            group("Step 1: Category Selection")
            {
                Caption = 'Category';
                field("Passport Owner"; Rec."Passport Owner") { ApplicationArea = All; ShowMandatory = true; }
            }

            group("Step 3: Dual Nationality Status")
            {
                Caption = 'Dual Nationality';
                field("Dual Nationality Status"; Rec."Dual Nationality Status") { ApplicationArea = All; ShowMandatory = true; trigger OnValidate() begin CurrPage.Update(true); end; }
            }
            group("Step 3: Country Specification")
            {
                Caption = 'Second Citizenship';
                Visible = (Rec."Dual Nationality Status" = Rec."Dual Nationality Status"::Yes);
                field("Country of Second Nationality"; Rec."Country of Second Nationality") { ApplicationArea = All; ShowMandatory = true; }
            }

            group("Step 4: Application Type")
            {
                Caption = 'Ordinary Application Specification';
                field("Ordinary Application Type"; Rec."Ordinary Application Type") { ApplicationArea = All; ShowMandatory = true; }
            }
            group("Step 4: Booklet Capacity")
            {
                Caption = 'Passport Booklet Specifications';
                field("Passport Page Count"; Rec."Passport Page Count") { ApplicationArea = All; ShowMandatory = true; }
            }

            group("Step 5: Location Specification")
            {
                Caption = 'Application Center';
                field("Submission Location"; Rec."Submission Location") { ApplicationArea = All; ShowMandatory = true; }
            }

            group("Step 5: Applicant Personal Details")
            {
                Caption = 'Applicant Identity Fields';
                grid(IdentityGrid)
                {
                    GridLayout = Columns;
                    group(LeftColumn)
                    {
                        ShowCaption = false;
                        field("Surname"; Rec."Surname") { ApplicationArea = All; ShowMandatory = true; }
                        field("Date of Birth"; Rec."Date of Birth") { ApplicationArea = All; ShowMandatory = true; }
                        field("Gender"; Rec."Gender") { ApplicationArea = All; ShowMandatory = true; }
                    }
                    group(RightColumn)
                    {
                        ShowCaption = false;
                        field("Other Names"; Rec."Other Names") { ApplicationArea = All; ShowMandatory = true; }
                        field("Special Peculiarities"; Rec."Special Peculiarities") { ApplicationArea = All; ShowMandatory = true; }
                        field("Colour of Eyes"; Rec."Colour of Eyes") { ApplicationArea = All; ShowMandatory = true; }
                    }
                }
            }

            group("Step 5: Height Measurement")
            {
                Caption = 'Height';
                grid(HeightGrid)
                {
                    GridLayout = Columns;
                    group(FeetColumn) { ShowCaption = false; field("Height - Feet"; Rec."Height - Feet") { ApplicationArea = All; Caption = 'Feet'; ShowMandatory = true; } }
                    group(InchesColumn) { ShowCaption = false; field("Height - Inches"; Rec."Height - Inches") { ApplicationArea = All; Caption = 'Inches'; ShowMandatory = true; } }
                }
            }

            group("Step 5: Birth Location details")
            {
                Caption = 'Birth Location';
                field("Country of Birth Code"; Rec."Country of Birth Code") { ApplicationArea = All; ShowMandatory = true; }
                field("Home County"; Rec."Home County") { ApplicationArea = All; ShowMandatory = true; }
                field("Place of Birth"; Rec."Place of Birth") { ApplicationArea = All; ShowMandatory = true; }
            }

            group("Step 5: Legal & Profile Configurations")
            {
                Caption = 'Legal Identifiers & Travel Profile';
                field("Citizen By"; Rec."Citizen By") { ApplicationArea = All; ShowMandatory = true; }
                field("KRA PIN"; Rec."KRA PIN") { ApplicationArea = All; }
                field("Birth Entry Number"; Rec."Birth Entry Number") { ApplicationArea = All; ShowMandatory = true; }
                field("Profession/Occupation"; Rec."Profession/Occupation") { ApplicationArea = All; ShowMandatory = true; }
                field("Marital Status"; Rec."Marital Status") { ApplicationArea = All; ShowMandatory = true; }
                field("Reason for Travel"; Rec."Reason for Travel") { ApplicationArea = All; ShowMandatory = true; }
            }

            group("Step 5: Primary Residence Base")
            {
                Caption = 'Residential Location';
                field("Country of Residence Code"; Rec."Country of Residence Code") { ApplicationArea = All; ShowMandatory = true; }
                field("Postal Address"; Rec."Postal Address") { ApplicationArea = All; ShowMandatory = true; }
            }

            group("Step 5: Residence Contact & Grid Details")
            {
                Caption = 'Residential Contacts & Sublocations';
                grid(ResidentialGrid)
                {
                    GridLayout = Columns;
                    group(ResLeftColumn)
                    {
                        ShowCaption = false;
                        field("Phone Number"; Rec."Phone Number") { ApplicationArea = All; ShowMandatory = true; }
                        field("Estate / Sublocation"; Rec."Estate / Sublocation") { ApplicationArea = All; ShowMandatory = true; }
                    }
                    group(ResRightColumn)
                    {
                        ShowCaption = false;
                        field("E-mail Address"; Rec."E-mail Address") { ApplicationArea = All; ShowMandatory = true; }
                        field("Hse. No./ Kijiji/ Village"; Rec."Hse. No./ Kijiji/ Village") { ApplicationArea = All; ShowMandatory = true; }
                    }
                }
            }

            group("Step 6: Parents Details Section")
            {
                Caption = 'Parents Details';

                group("Fathers Configuration")
                {
                    Caption = 'Fathers Status Setup';
                    field("Fathers Status"; Rec."Fathers Status") { ApplicationArea = All; ShowMandatory = true; trigger OnValidate() begin CurrPage.Update(true); end; }
                }
                group("Fathers Input Forms")
                {
                    Caption = 'Fathers Details Form';
                    Visible = (Rec."Fathers Status" = Rec."Fathers Status"::Available);
                    field("Fathers Full Name"; Rec."Fathers Full Name") { ApplicationArea = All; ShowMandatory = true; }
                    grid(FathersGrid1)
                    {
                        GridLayout = Columns;
                        group(FathersLeft1) { ShowCaption = false; field("Fathers ID Card Number"; Rec."Fathers ID Card Number") { ApplicationArea = All; ShowMandatory = true; } }
                        group(FathersRight1) { ShowCaption = false; field("Fathers Passport Number"; Rec."Fathers Passport Number") { ApplicationArea = All; } }
                    }
                    field("Fathers Place Of Birth"; Rec."Fathers Place Of Birth") { ApplicationArea = All; ShowMandatory = true; }
                    grid(FathersGrid2)
                    {
                        GridLayout = Columns;
                        group(FathersLeft2) { ShowCaption = false; field("Fathers Postal Address"; Rec."Fathers Postal Address") { ApplicationArea = All; ShowMandatory = true; } }
                        group(FathersRight2) { ShowCaption = false; field("Fathers Postal Code"; Rec."Fathers Postal Code") { ApplicationArea = All; ShowMandatory = true; } }
                    }
                    field("Fathers Phone Number"; Rec."Fathers Phone Number") { ApplicationArea = All; ShowMandatory = true; }
                }

                group("Mothers Configuration")
                {
                    Caption = 'Mothers Status Setup';
                    field("Mothers Status"; Rec."Mothers Status") { ApplicationArea = All; ShowMandatory = true; trigger OnValidate() begin CurrPage.Update(true); end; }
                }
                group("Mothers Input Forms")
                {
                    Caption = 'Mothers Details Form';
                    Visible = (Rec."Mothers Status" = Rec."Mothers Status"::Available);
                    field("Mothers Full Name"; Rec."Mothers Full Name") { ApplicationArea = All; ShowMandatory = true; }
                    grid(MothersGrid1)
                    {
                        GridLayout = Columns;
                        group(MothersLeft1) { ShowCaption = false; field("Mothers ID Card Number"; Rec."Mothers ID Card Number") { ApplicationArea = All; ShowMandatory = true; } }
                        group(MothersRight1) { ShowCaption = false; field("Mothers Passport Number"; Rec."Mothers Passport Number") { ApplicationArea = All; } }
                    }
                    field("Mothers Place Of Birth"; Rec."Mothers Place Of Birth") { ApplicationArea = All; ShowMandatory = true; }
                    grid(MothersGrid2)
                    {
                        GridLayout = Columns;
                        group(MothersLeft2) { ShowCaption = false; field("Mothers Postal Address"; Rec."Mothers Postal Address") { ApplicationArea = All; ShowMandatory = true; } }
                        group(MothersRight2) { ShowCaption = false; field("Mothers Postal Code"; Rec."Mothers Postal Code") { ApplicationArea = All; ShowMandatory = true; } }
                    }
                    field("Mothers Phone Number"; Rec."Mothers Phone Number") { ApplicationArea = All; ShowMandatory = true; }
                }
            }

            group("Step 7: Next of Kin Setup")
            {
                Caption = 'Next of Kin Matrix (Adult Passport Applications Only)';
                part(NextOfKinSubpage; "ECitizen App Kin Subpage")
                {
                    ApplicationArea = All;
                    SubPageLink = "Application No." = field("Application No.");
                }
            }

            group("Step 8: Particulars of Children Setup")
            {
                Caption = 'Particulars of Children';
                field("Do you have children?"; Rec."Do you have children?") { ApplicationArea = All; ShowMandatory = true; trigger OnValidate() begin CurrPage.Update(true); end; }
            }
            group("Step 8: Children Breakdown List")
            {
                Caption = 'Children Specifics Matrix';
                Visible = (Rec."Do you have children?" = Rec."Do you have children?"::Yes);
                part(ChildrenSubpage; "ECitizen App Child Subpage")
                {
                    ApplicationArea = All;
                    SubPageLink = "Application No." = field("Application No.");
                }
            }

            group("Step 9: Uploads")
            {
                Caption = 'Required Application Attachments';
                field("Recent Passport Photo"; Rec."Recent Passport Photo") { ApplicationArea = All; ShowMandatory = true; }
                field("Applicants Signature"; Rec."Applicants Signature") { ApplicationArea = All; ShowMandatory = true; }
                field("Applicants ID Copy Front"; Rec."Applicants ID Copy Front") { ApplicationArea = All; ShowMandatory = true; }
                field("Applicants ID Copy Back"; Rec."Applicants ID Copy Back") { ApplicationArea = All; ShowMandatory = true; }
                field("Applicants Birth Cert Copy"; Rec."Applicants Birth Cert Copy") { ApplicationArea = All; ShowMandatory = true; }
                field("Fathers ID Copy"; Rec."Fathers ID Copy") { ApplicationArea = All; Visible = (Rec."Fathers Status" = Rec."Fathers Status"::Available); ShowMandatory = true; }
                field("Mothers ID Copy"; Rec."Mothers ID Copy") { ApplicationArea = All; Visible = (Rec."Mothers Status" = Rec."Mothers Status"::Available); ShowMandatory = true; }
            }
        }
    }
}

page 50103 "ECitizen App Kin Subpage"
{
    PageType = ListPart;
    SourceTable = "ECitizen App Kin";
    Caption = 'Next of Kin Details Line Matrix';
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(KinLineGroup)
            {
                field("Full Name"; Rec."Full Name") { ApplicationArea = All; ShowMandatory = true; }
                field("ID Card Number"; Rec."ID Card Number") { ApplicationArea = All; ShowMandatory = true; }
                field("Division"; Rec."Division") { ApplicationArea = All; }
                field("Location"; Rec."Location") { ApplicationArea = All; }
                field("Relationship"; Rec."Relationship") { ApplicationArea = All; ShowMandatory = true; }
                field("P. O. Box"; Rec."P. O. Box") { ApplicationArea = All; }
                field("Postal Code"; Rec."Postal Code") { ApplicationArea = All; }
                field("Phone Number"; Rec."Phone Number") { ApplicationArea = All; ShowMandatory = true; }
                field("E-mail"; Rec."E-mail") { ApplicationArea = All; }
            }
        }
    }
}

page 50104 "ECitizen App Child Subpage"
{
    PageType = ListPart;
    SourceTable = "ECitizen App Child";
    Caption = 'Children Details Line Matrix';
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(ChildLineGroup)
            {
                field("Child Full Name"; Rec."Child Full Name") { ApplicationArea = All; ShowMandatory = true; }
                field("Date of Birth"; Rec."Date of Birth") { ApplicationArea = All; }
                field("Gender"; Rec."Gender") { ApplicationArea = All; }
                field("Birth Certificate No."; Rec."Birth Certificate No.") { ApplicationArea = All; ShowMandatory = true; }
            }
        }
    }
}