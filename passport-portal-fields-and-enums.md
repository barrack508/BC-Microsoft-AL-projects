# Passport Portal Fields and Enums

This document lists all fields from `passportmain table.al` and highlights the enum fields with their values from `Enums.al`.

## Passport Main Table Fields

1. `field(1)` — `Application No.` — `Code[20]`
2. `field(2)` — `Passport Owner` — `Enum "Passport Owner Type"`
3. `field(3)` — `Dual Nationality Status` — `Enum "Dual Nationality Type"`
4. `field(4)` — `Country of Second Nationality` — `Text[50]`
5. `field(5)` — `Ordinary Application Type` — `Enum "Ordinary Application Type"`
6. `field(6)` — `Passport Page Count` — `Enum "Passport Page Count"`
7. `field(7)` — `Submission Location` — `Enum "Submission Location"`
8. `field(8)` — `Surname` — `Text[50]`
9. `field(9)` — `Other Names` — `Text[100]`
10. `field(10)` — `Date of Birth` — `Date`
11. `field(11)` — `Special Peculiarities` — `Text[150]`
12. `field(12)` — `Gender` — `Enum "Gender Type"`
13. `field(13)` — `Colour of Eyes` — `Enum "Eye Color"`
14. `field(14)` — `Height - Feet` — `Enum "Height Feet"`
15. `field(15)` — `Height - Inches` — `Enum "Height Inches"`
16. `field(16)` — `Country of Birth Code` — `Code[10]`
17. `field(17)` — `Home County` — `Text[50]`
18. `field(18)` — `Place of Birth` — `Text[100]`
19. `field(19)` — `Citizen By` — `Enum "Citizenship Basis"`
20. `field(20)` — `KRA PIN` — `Code[30]`
21. `field(21)` — `Birth Entry Number` — `Code[30]`
22. `field(22)` — `Profession/Occupation` — `Text[100]`
23. `field(23)` — `Marital Status` — `Enum "Marital Status Portal"`
24. `field(24)` — `Reason for Travel` — `Enum "Travel Reason"`
25. `field(25)` — `Country of Residence Code` — `Code[10]`
26. `field(26)` — `Postal Address` — `Text[100]`
27. `field(27)` — `Phone Number` — `Text[30]`
28. `field(28)` — `E-mail Address` — `Text[80]`
29. `field(29)` — `Estate / Sublocation` — `Text[100]`
30. `field(30)` — `Hse. No./ Kijiji/ Village` — `Text[100]`
31. `field(31)` — `Fathers Status` — `Enum "Parent Status"`
32. `field(32)` — `Fathers Full Name` — `Text[150]`
33. `field(33)` — `Fathers ID Card Number` — `Code[30]`
34. `field(34)` — `Fathers Passport Number` — `Code[30]`
35. `field(35)` — `Fathers Place Of Birth` — `Text[100]`
36. `field(36)` — `Fathers Postal Address` — `Text[100]`
37. `field(37)` — `Fathers Postal Code` — `Code[20]`
38. `field(38)` — `Fathers Phone Number` — `Text[30]`
39. `field(39)` — `Mothers Status` — `Enum "Mother Status"`
40. `field(40)` — `Mothers Full Name` — `Text[150]`
41. `field(41)` — `Mothers ID Card Number` — `Code[30]`
42. `field(42)` — `Mothers Passport Number` — `Code[30]`
43. `field(43)` — `Mothers Place Of Birth` — `Text[100]`
44. `field(44)` — `Mothers Postal Address` — `Text[100]`
45. `field(45)` — `Mothers Postal Code` — `Code[20]`
46. `field(46)` — `Mothers Phone Number` — `Text[30]`
47. `field(47)` — `Do you have children?` — `Enum "Children Status"`
48. `field(48)` — `Recent Passport Photo` — `Media`
49. `field(49)` — `Applicants Signature` — `Media`
50. `field(50)` — `Applicants ID Copy Front` — `Media`
51. `field(51)` — `Applicants ID Copy Back` — `Media`
52. `field(52)` — `Applicants Birth Cert Copy` — `Media`
53. `field(53)` — `Fathers ID Copy` — `Media`
54. `field(54)` — `Mothers ID Copy` — `Media`

## Enum Fields and Values

### Passport Owner Type
- `0` = `" "` — `Caption = ' '` 
- `1` = `"Adult"` — `Caption = 'Adult (Over 18 Years)'`
- `2` = `"Minor"` — `Caption = 'Minor (Under 18 Years)'`

### Dual Nationality Type
- `0` = `" "` — `Caption = ' '` 
- `1` = `"No"` — `Caption = 'No'`
- `2` = `"Yes"` — `Caption = 'Yes'`

### Ordinary Application Type
- `0` = `" "` — `Caption = ' '` 
- `1` = `"New"` — `Caption = 'New Application'`
- `2` = `"Renewal"` — `Caption = 'Renewal Application'`
- `3` = `"Replacement"` — `Caption = 'Replacement (Lost/Damaged)'`

### Passport Page Count
- `0` = `" "` — `Caption = ' '` 
- `1` = `"34 Pages"` — `Caption = '34 Pages (A-Series)'`
- `2` = `"50 Pages"` — `Caption = '50 Pages (B-Series)'`
- `3` = `"66 Pages"` — `Caption = '66 Pages (C-Series)'`

### Submission Location
- `0` = `" "` — `Caption = ' '` 
- `1` = `"Nairobi"` — `Caption = 'Nairobi (Nyayo House)'`
- `2` = `"Mombasa"` — `Caption = 'Mombasa'`
- `3` = `"Kisumu"` — `Caption = 'Kisumu'`
- `4` = `"Eldoret"` — `Caption = 'Eldoret'`
- `5` = `"Nakuru"` — `Caption = 'Nakuru'`
- `6` = `"Kisii"` — `Caption = 'Kisii'`

### Gender Type
- `0` = `" "` — `Caption = ' '` 
- `1` = `"Male"` — `Caption = 'Male'`
- `2` = `"Female"` — `Caption = 'Female'`

### Eye Color
- `0` = `" "` — `Caption = ' '` 
- `1` = `"Brown"` — `Caption = 'Brown'`
- `2` = `"Black"` — `Caption = 'Black'`
- `3` = `"Blue"` — `Caption = 'Blue'`
- `4` = `"Green"` — `Caption = 'Green'`

### Height Feet
- `0` = `" "` — `Caption = ' '` 
- `1` = `"3"` — `Caption = '3 ft'`
- `2` = `"4"` — `Caption = '4 ft'`
- `3` = `"5"` — `Caption = '5 ft'`
- `4` = `"6"` — `Caption = '6 ft'`
- `5` = `"7"` — `Caption = '7 ft'`

### Height Inches
- `0` = `"0"` — `Caption = '0 in'`
- `1` = `"1"` — `Caption = '1 in'`
- `2` = `"2"` — `Caption = '2 in'`
- `3` = `"3"` — `Caption = '3 in'`
- `4` = `"4"` — `Caption = '4 in'`
- `5` = `"5"` — `Caption = '5 in'`
- `6` = `"6"` — `Caption = '6 in'`
- `7` = `"7"` — `Caption = '7 in'`
- `8` = `"8"` — `Caption = '8 in'`
- `9` = `"9"` — `Caption = '9 in'`
- `10` = `"10"` — `Caption = '10 in'`
- `11` = `"11"` — `Caption = '11 in'`

### Citizenship Basis
- `0` = `" "` — `Caption = ' '` 
- `1` = `"Birth"` — `Caption = 'Birth'`
- `2` = `"Registration"` — `Caption = 'Registration'`
- `3` = `"Naturalization"` — `Caption = 'Naturalization'`

### Marital Status Portal
- `0` = `" "` — `Caption = ' '` 
- `1` = `"Single"` — `Caption = 'Single'`
- `2` = `"Married"` — `Caption = 'Married'`
- `3` = `"Divorced"` — `Caption = 'Divorced'`
- `4` = `"Widowed"` — `Caption = 'Widowed'`

### Travel Reason
- `0` = `" "` — `Caption = ' '` 
- `1` = `"Tourism"` — `Caption = 'Tourism / Holiday'`
- `2` = `"Business"` — `Caption = 'Business'`
- `3` = `"Education"` — `Caption = 'Education / Studies'`
- `4` = `"Medical"` — `Caption = 'Medical Treatment'`

### Parent Status
- `0` = `" "` — `Caption = ' '` 
- `1` = `"Available"` — `Caption = 'Available'`
- `2` = `"Deceased"` — `Caption = 'Deceased'`
- `3` = `"Unknown"` — `Caption = 'Unknown / Missing'`

### Mother Status
- `0` = `" "` — `Caption = ' '` 
- `1` = `"Available"` — `Caption = 'Available'`
- `2` = `"Deceased"` — `Caption = 'Deceased'`
- `3` = `"Unknown"` — `Caption = 'Unknown / Missing'`

### Children Status
- `0` = `" "` — `Caption = ' '` 
- `1` = `"No"` — `Caption = 'No'`
- `2` = `"Yes"` — `Caption = 'Yes'`
