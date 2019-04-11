** HEADER -----------------------------------------------------
**  DO-FILE METADATA
    //  algorithm name			    qeh_amp_001.do
    //  project:				        Lower Extremity Amputations (LEAs) at QEH
    //  analysts:						    Ian HAMBLETON
    // 	date last modified	    25-SEP-2018
    //  algorithm task			    Prepare amputation data from QEH

    ** General algorithm set-up
    version 15
    clear all
    macro drop _all
    set more 1
    set linesize 80

    ** Set working directories: this is for DATASET and LOGFILE import and export
    ** DATASETS to encrypted SharePoint folder
    local datapath "X:\The University of the West Indies\DataGroup - repo_data\data_p127"
    ** LOGFILES to unencrypted OneDrive folder
    local logpath X:\OneDrive - The University of the West Indies\repo_datagroup\repo_p127

    ** Close any open log fileand open a new log file
    capture log close
    cap log using "`logpath'\qeh_amp_001", replace
** HEADER -----------------------------------------------------

import delimited record_id type_source ot1 ot2 ot3 ot4a ot4b ot5 ot6a ot6b ot7a ot7b ot8 ot9a ot9b ot10 ot11 ot12 ot13 ot14a ot14b ot15a ot15b ot15c ot16a___1 ot16a___2 ot16a___3 ot16b ot17 ot18a___1 ot18a___2 ot18a___3 ot18a___4 ot18a___5 ot18a___6 ot18a___7 ot18a___8 ot18a___9 ot18a___10 ot18b ot19a ot19b ot19c ot20 dc1 dc2 dc3a dc3b dc4 dc5 dc6 dc7 dc8 dc9 dc10 dc11 dc12 dc13 dc14 dc15 pn1 pn2 pn3 pn4 pn5 pn6 pn7 pn8 pn9 pn10 pn11 pn12 pn13 pn14 pn15a pn15b pn16 pn17a pn17b pn18a pn18b pn18c pc18d pn18e pn19 pn20a pn20b pn21 pn22a___1 pn22a___2 pn22a___3 pn22a___4 pn22a___5 pn22a___6 pn22a___7 pn22a___8 pn22a___9 pn22a___10 pn22b pn23a pn23b pn23c pn24a___1 pn24a___2 pn24a___3 pn24a___4 pn24a___5 pn24a___6 pn24a___7 pn24a___8 pn24a___9 pn24a___10 pn24a___11 pn24a___12 pn24a___13 pn24a___14 pn24b pn24c pn25a pn25b pn25c pn25d pn25e pn26a pn26b pn26c pn26d pn26e pn26f pn26g pn26h pn26i pn26j pn26k pn26l pn27a pn27b pn27c pn27d pn27e pn27f pn28a pn28b pn28c pn28d pn28e pn29a pn29b___1 pn29b___2 pn29b___3 pn29b___4 pn29b___5 pn29b___6 pn29b___7 pn29b___8 pn29b___9 pn29b___10 pn29b___11 pn29b___12 pn29b___13 pn29b___14 pn29c pn29d pn30a pn30b pn30c abstraction_form_complete using "`datapath'\version01\1-input\Amputations2018_DATA_NOHDRS_2018-09-25_0111.csv", varnames(nonames)

label data "QEH Amputations 2015 (extracted from REDCap 25-SEP-2018)"

label define type_source_ 1 "OT logbook" 2 "Discharge form" 3 "Patient notes"
label define ot7a_ 1 "Yes" 0 "No"
label define ot8_ 1 "Christ Church" 2 "St. Andrew" 3 "St. George" 4 "St. James" 5 "St. John" 6 "St. Joseph" 7 "St. Lucy" 8 "St. Michael" 9 "St.Peter" 10 "St. Phillip" 11 "St. Thomas" 12 "No fixed abode" 13 "Non-national" 14 "Not stated"
label define ot9a_ 1 "Hospital" 2 "Barbados National" 3 "Not yet registered" 4 "Other" 5 "Not stated"
label define ot16a___1_ 0 "Unchecked" 1 "Checked"
label define ot16a___2_ 0 "Unchecked" 1 "Checked"
label define ot16a___3_ 0 "Unchecked" 1 "Checked"
label define ot17_ 1 "Left" 2 "Right" 3 "Not stated"
label define ot18a___1_ 0 "Unchecked" 1 "Checked"
label define ot18a___2_ 0 "Unchecked" 1 "Checked"
label define ot18a___3_ 0 "Unchecked" 1 "Checked"
label define ot18a___4_ 0 "Unchecked" 1 "Checked"
label define ot18a___5_ 0 "Unchecked" 1 "Checked"
label define ot18a___6_ 0 "Unchecked" 1 "Checked"
label define ot18a___7_ 0 "Unchecked" 1 "Checked"
label define ot18a___8_ 0 "Unchecked" 1 "Checked"
label define ot18a___9_ 0 "Unchecked" 1 "Checked"
label define ot18a___10_ 0 "Unchecked" 1 "Checked"
label define ot19a_ 1 "Yes" 0 "No"
label define dc7_ 1 "Yes" 0 "No"
label define dc9_ 1 "Male" 2 "Female" 3 "Not stated"
label define dc13_ 1 "Yes" 2 "No" 3 "Not stated"
label define dc14_ 1 "Yes" 2 "No" 3 "Not stated"
label define pn10_ 1 "Yes" 0 "No"
label define pn12_ 1 "Male" 2 "Female" 3 "Not stated"
label define pn20a_ 1 "Yes" 2 "No" 3 "Not stated"
label define pn21_ 1 "Left" 2 "Right" 3 "Not stated"
label define pn22a___1_ 0 "Unchecked" 1 "Checked"
label define pn22a___2_ 0 "Unchecked" 1 "Checked"
label define pn22a___3_ 0 "Unchecked" 1 "Checked"
label define pn22a___4_ 0 "Unchecked" 1 "Checked"
label define pn22a___5_ 0 "Unchecked" 1 "Checked"
label define pn22a___6_ 0 "Unchecked" 1 "Checked"
label define pn22a___7_ 0 "Unchecked" 1 "Checked"
label define pn22a___8_ 0 "Unchecked" 1 "Checked"
label define pn22a___9_ 0 "Unchecked" 1 "Checked"
label define pn22a___10_ 0 "Unchecked" 1 "Checked"
label define pn23a_ 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8" 9 "9" 10 "10" 11 "11" 12 "12" 13 "13" 14 "14" 15 "15" 16 "16" 17 "17" 18 "18" 19 "19" 20 "20" 21 "21" 22 "22" 23 "23" 24 "24" 25 "25" 26 "26" 27 "27" 28 "28" 29 "29" 30 "30" 31 "31" 32 "99"
label define pn23b_ 1 "Jan" 2 "Feb" 3 "Mar" 4 "Apr" 5 "May" 6 "Jun" 7 "Jul" 8 "Aug" 9 "Sep" 10 "Oct" 11 "Nov" 12 "Dec" 13 "99"
label define pn23c_ 1 "1999" 2 "2000" 3 "2001" 4 "2002" 5 "2003" 6 "2004" 7 "2005" 8 "2006" 9 "2007" 10 "2008" 11 "2009" 12 "2010" 13 "2011" 14 "2012" 15 "2013" 16 "2014" 17 "2015" 18 "2016" 19 "99"
label define pn24a___1_ 0 "Unchecked" 1 "Checked"
label define pn24a___2_ 0 "Unchecked" 1 "Checked"
label define pn24a___3_ 0 "Unchecked" 1 "Checked"
label define pn24a___4_ 0 "Unchecked" 1 "Checked"
label define pn24a___5_ 0 "Unchecked" 1 "Checked"
label define pn24a___6_ 0 "Unchecked" 1 "Checked"
label define pn24a___7_ 0 "Unchecked" 1 "Checked"
label define pn24a___8_ 0 "Unchecked" 1 "Checked"
label define pn24a___9_ 0 "Unchecked" 1 "Checked"
label define pn24a___10_ 0 "Unchecked" 1 "Checked"
label define pn24a___11_ 0 "Unchecked" 1 "Checked"
label define pn24a___12_ 0 "Unchecked" 1 "Checked"
label define pn24a___13_ 0 "Unchecked" 1 "Checked"
label define pn24a___14_ 0 "Unchecked" 1 "Checked"
label define pn25a_ 1 "Yes" 2 "No"
label define pn25c_ 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8" 9 "9" 10 "10" 11 "11" 12 "12" 13 "13" 14 "14" 15 "15" 16 "16" 17 "17" 18 "18" 19 "19" 20 "20" 21 "21" 22 "22" 23 "23" 24 "24" 25 "25" 26 "26" 27 "27" 28 "28" 29 "29" 30 "30" 31 "31" 32 "99"
label define pn25d_ 1 "Jan" 2 "Feb" 3 "Mar" 4 "Apr" 5 "May" 6 "Jun" 7 "Jul" 8 "Aug" 9 "Sep" 10 "Oct" 11 "Nov" 12 "Dec" 13 "99"
label define pn25e_ 1 "1999" 2 "2000" 3 "2001" 4 "2002" 5 "2003" 6 "2004" 7 "2005" 8 "2006" 9 "2007" 10 "2008" 11 "2009" 12 "2010" 13 "2011" 14 "2012" 15 "2013" 16 "2014" 17 "2015" 18 "2016" 19 "99"
label define pn26a_ 1 "Yes" 2 "No"
label define pn26b_ 1 "Positive" 2 "Negative" 3 "Not stated"
label define pn26c_ 1 "Positive" 2 "Negative" 3 "Not stated"
label define pn26d_ 1 "Positive" 2 "Negative" 3 "Not stated"
label define pn26e_ 1 "Positive" 2 "Negative" 3 "Not stated"
label define pn26f_ 1 "Positive" 2 "Negative" 3 "Not stated"
label define pn26g_ 1 "Positive" 2 "Negative" 3 "Not stated"
label define pn26h_ 1 "Positive" 2 "Negative" 3 "Not stated"
label define pn26i_ 1 "Positive" 2 "Negative" 3 "Not stated"
label define pn26j_ 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8" 9 "9" 10 "10" 11 "11" 12 "12" 13 "13" 14 "14" 15 "15" 16 "16" 17 "17" 18 "18" 19 "19" 20 "20" 21 "21" 22 "22" 23 "23" 24 "24" 25 "25" 26 "26" 27 "27" 28 "28" 29 "29" 30 "30" 31 "31" 32 "99"
label define pn26k_ 1 "Jan" 2 "Feb" 3 "Mar" 4 "Apr" 5 "May" 6 "Jun" 7 "Jul" 8 "Aug" 9 "Sep" 10 "Oct" 11 "Nov" 12 "Dec" 13 "99"
label define pn26l_ 1 "1999" 2 "2000" 3 "2001" 4 "2002" 5 "2003" 6 "2004" 7 "2005" 8 "2006" 9 "2007" 10 "2008" 11 "2009" 12 "2010" 13 "2011" 14 "2012" 15 "2013" 16 "2014" 17 "2015" 18 "2016" 19 "99"
label define pn27a_ 1 "Yes" 2 "No"
label define pn27d_ 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8" 9 "9" 10 "10" 11 "11" 12 "12" 13 "13" 14 "14" 15 "15" 16 "16" 17 "17" 18 "18" 19 "19" 20 "20" 21 "21" 22 "22" 23 "23" 24 "24" 25 "25" 26 "26" 27 "27" 28 "28" 29 "29" 30 "30" 31 "31" 32 "99"
label define pn27e_ 1 "Jan" 2 "Feb" 3 "Mar" 4 "Apr" 5 "May" 6 "Jun" 7 "Jul" 8 "Aug" 9 "Sep" 10 "Oct" 11 "Nov" 12 "Dec" 13 "99"
label define pn27f_ 1 "1999" 2 "2000" 3 "2001" 4 "2002" 5 "2003" 6 "2004" 7 "2005" 8 "2006" 9 "2007" 10 "2008" 11 "2009" 12 "2010" 13 "2011" 14 "2012" 15 "2013" 16 "2014" 17 "2015" 18 "2016" 19 "99"
label define pn28a_ 1 "Yes" 2 "No"
label define pn28c_ 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7" 8 "8" 9 "9" 10 "10" 11 "11" 12 "12" 13 "13" 14 "14" 15 "15" 16 "16" 17 "17" 18 "18" 19 "19" 20 "20" 21 "21" 22 "22" 23 "23" 24 "24" 25 "25" 26 "26" 27 "27" 28 "28" 29 "29" 30 "30" 31 "31" 32 "99"
label define pn28d_ 1 "Jan" 2 "Feb" 3 "Mar" 4 "Apr" 5 "May" 6 "Jun" 7 "Jul" 8 "Aug" 9 "Sep" 10 "Oct" 11 "Nov" 12 "Dec" 13 "99"
label define pn28e_ 1 "1999" 2 "2000" 3 "2001" 4 "2002" 5 "2003" 6 "2004" 7 "2005" 8 "2006" 9 "2007" 10 "2008" 11 "2009" 12 "2010" 13 "2011" 14 "2012" 15 "2013" 16 "2014" 17 "2015" 18 "2016" 19 "99"
label define pn29a_ 1 "Yes" 2 "No"
label define pn29b___1_ 0 "Unchecked" 1 "Checked"
label define pn29b___2_ 0 "Unchecked" 1 "Checked"
label define pn29b___3_ 0 "Unchecked" 1 "Checked"
label define pn29b___4_ 0 "Unchecked" 1 "Checked"
label define pn29b___5_ 0 "Unchecked" 1 "Checked"
label define pn29b___6_ 0 "Unchecked" 1 "Checked"
label define pn29b___7_ 0 "Unchecked" 1 "Checked"
label define pn29b___8_ 0 "Unchecked" 1 "Checked"
label define pn29b___9_ 0 "Unchecked" 1 "Checked"
label define pn29b___10_ 0 "Unchecked" 1 "Checked"
label define pn29b___11_ 0 "Unchecked" 1 "Checked"
label define pn29b___12_ 0 "Unchecked" 1 "Checked"
label define pn29b___13_ 0 "Unchecked" 1 "Checked"
label define pn29b___14_ 0 "Unchecked" 1 "Checked"
label define pn30a_ 1 "Yes" 2 "No"
label define abstraction_form_complete_ 0 "Incomplete" 1 "Unverified" 2 "Complete"

label values type_source type_source_
label values ot7a ot7a_
label values ot8 ot8_
label values ot9a ot9a_
label values ot16a___1 ot16a___1_
label values ot16a___2 ot16a___2_
label values ot16a___3 ot16a___3_
label values ot17 ot17_
label values ot18a___1 ot18a___1_
label values ot18a___2 ot18a___2_
label values ot18a___3 ot18a___3_
label values ot18a___4 ot18a___4_
label values ot18a___5 ot18a___5_
label values ot18a___6 ot18a___6_
label values ot18a___7 ot18a___7_
label values ot18a___8 ot18a___8_
label values ot18a___9 ot18a___9_
label values ot18a___10 ot18a___10_
label values ot19a ot19a_
label values dc7 dc7_
label values dc9 dc9_
label values dc13 dc13_
label values dc14 dc14_
label values pn10 pn10_
label values pn12 pn12_
label values pn20a pn20a_
label values pn21 pn21_
label values pn22a___1 pn22a___1_
label values pn22a___2 pn22a___2_
label values pn22a___3 pn22a___3_
label values pn22a___4 pn22a___4_
label values pn22a___5 pn22a___5_
label values pn22a___6 pn22a___6_
label values pn22a___7 pn22a___7_
label values pn22a___8 pn22a___8_
label values pn22a___9 pn22a___9_
label values pn22a___10 pn22a___10_
label values pn23a pn23a_
label values pn23b pn23b_
label values pn23c pn23c_
label values pn24a___1 pn24a___1_
label values pn24a___2 pn24a___2_
label values pn24a___3 pn24a___3_
label values pn24a___4 pn24a___4_
label values pn24a___5 pn24a___5_
label values pn24a___6 pn24a___6_
label values pn24a___7 pn24a___7_
label values pn24a___8 pn24a___8_
label values pn24a___9 pn24a___9_
label values pn24a___10 pn24a___10_
label values pn24a___11 pn24a___11_
label values pn24a___12 pn24a___12_
label values pn24a___13 pn24a___13_
label values pn24a___14 pn24a___14_
label values pn25a pn25a_
label values pn25c pn25c_
label values pn25d pn25d_
label values pn25e pn25e_
label values pn26a pn26a_
label values pn26b pn26b_
label values pn26c pn26c_
label values pn26d pn26d_
label values pn26e pn26e_
label values pn26f pn26f_
label values pn26g pn26g_
label values pn26h pn26h_
label values pn26i pn26i_
label values pn26j pn26j_
label values pn26k pn26k_
label values pn26l pn26l_
label values pn27a pn27a_
label values pn27d pn27d_
label values pn27e pn27e_
label values pn27f pn27f_
label values pn28a pn28a_
label values pn28c pn28c_
label values pn28d pn28d_
label values pn28e pn28e_
label values pn29a pn29a_
label values pn29b___1 pn29b___1_
label values pn29b___2 pn29b___2_
label values pn29b___3 pn29b___3_
label values pn29b___4 pn29b___4_
label values pn29b___5 pn29b___5_
label values pn29b___6 pn29b___6_
label values pn29b___7 pn29b___7_
label values pn29b___8 pn29b___8_
label values pn29b___9 pn29b___9_
label values pn29b___10 pn29b___10_
label values pn29b___11 pn29b___11_
label values pn29b___12 pn29b___12_
label values pn29b___13 pn29b___13_
label values pn29b___14 pn29b___14_
label values pn30a pn30a_
label values abstraction_form_complete abstraction_form_complete_



tostring ot2, replace
gen _date_ = date(ot2,"YMD")
drop ot2
rename _date_ ot2
format ot2 %dM_d,_CY

tostring ot4a, replace
gen _date_ = date(ot4a,"YMD")
drop ot4a
rename _date_ ot4a
format ot4a %dM_d,_CY

tostring ot4b, replace
gen _date_ = date(ot4b,"YMD")
drop ot4b
rename _date_ ot4b
format ot4b %dM_d,_CY

tostring ot5, replace
gen _date_ = date(ot5,"YMD")
drop ot5
rename _date_ ot5
format ot5 %dM_d,_CY

tostring ot11, replace
gen _date_ = date(ot11,"YMD")
drop ot11
rename _date_ ot11
format ot11 %dM_d,_CY

tostring dc2, replace
gen _date_ = date(dc2,"YMD")
drop dc2
rename _date_ dc2
format dc2 %dM_d,_CY

tostring pn2, replace
gen _date_ = date(pn2,"YMD")
drop pn2
rename _date_ pn2
format pn2 %dM_d,_CY

tostring pn9, replace
gen _date_ = date(pn9,"YMD")
drop pn9
rename _date_ pn9
format pn9 %dM_d,_CY

tostring pn15a, replace
gen _date_ = date(pn15a,"YMD")
drop pn15a
rename _date_ pn15a
format pn15a %dM_d,_CY

tostring pn15b, replace
gen _date_ = date(pn15b,"YMD")
drop pn15b
rename _date_ pn15b
format pn15b %dM_d,_CY

tostring pn30b, replace
gen _date_ = date(pn30b,"YMD")
drop pn30b
rename _date_ pn30b
format pn30b %dM_d,_CY

label variable record_id "Record ID"
label variable type_source "Type of form"
label variable ot1 "Initials of abstractor"
label variable ot2 "Date of abstraction"
label variable ot3 "Log book number"
label variable ot4a "Log book start date"
label variable ot4b "Log book end date"
label variable ot5 "Date of operation"
label variable ot6a "First name"
label variable ot6b "Surname"
label variable ot7a "Is age stated?"
label variable ot7b "Age"
label variable ot8 "Parish"
label variable ot9a "Type of identification number"
label variable ot9b "Type of identification number: other"
label variable ot10 "Identification number"
label variable ot11 "Date admitted"
label variable ot12 "Ward"
label variable ot13 "Diagnosis"
label variable ot14a "Surgeon"
label variable ot14b "Assisting surgeon"
label variable ot15a "Operation start time"
label variable ot15b "Operation end time"
label variable ot15c "Operation duration"
label variable ot16a___1 "Type of operation (choice=Amputation)"
label variable ot16a___2 "Type of operation (choice=Other)"
label variable ot16a___3 "Type of operation (choice=Not stated)"
label variable ot16b "Type of operation: other"
label variable ot17 "Leg for amputation"
label variable ot18a___1 "Level of amputation (choice=First (big) toe)"
label variable ot18a___2 "Level of amputation (choice=Second toe)"
label variable ot18a___3 "Level of amputation (choice=Third toe)"
label variable ot18a___4 "Level of amputation (choice=Fourth toe)"
label variable ot18a___5 "Level of amputation (choice=Fifth toe)"
label variable ot18a___6 "Level of amputation (choice=Transmetatarsal)"
label variable ot18a___7 "Level of amputation (choice=BKA)"
label variable ot18a___8 "Level of amputation (choice=AKA)"
label variable ot18a___9 "Level of amputation (choice=Other)"
label variable ot18a___10 "Level of amputation (choice=Not stated)"
label variable ot18b "Level of amputation: other"
label variable ot19a "Were specimens taken?"
label variable ot19b "Number of specimens taken"
label variable ot19c "Details of specimen analysis"
label variable ot20 "Comments"
label variable dc1 "Initials of abstractor"
label variable dc2 "Date of abstraction"
label variable dc3a "Year of discharge"
label variable dc3b "Month of discharge"
label variable dc4 "ICD code"
label variable dc5 "Diagnosis"
label variable dc6 "Hospital ID number"
label variable dc7 "Is age stated?"
label variable dc8 "Age"
label variable dc9 "Sex"
label variable dc10 "Hospital days"
label variable dc11 "Other diagnosis codes"
label variable dc12 "Operation codes"
label variable dc13 "Death"
label variable dc14 "Post-mortem"
label variable dc15 "Name of surgeon"
label variable pn1 "Initials of abstractor"
label variable pn2 "Date of abstraction"
label variable pn3 "Hospital ID number"
label variable pn4 "National ID number"
label variable pn5 "Patient ID number"
label variable pn6 "Surname"
label variable pn7 "First forename"
label variable pn8 "Second forename"
label variable pn9 "Date of birth"
label variable pn10 "Is age stated?"
label variable pn11 "Age"
label variable pn12 "Sex"
label variable pn13 "Ward"
label variable pn14 "Doctor"
label variable pn15a "Date of admission"
label variable pn15b "Date of discharge"
label variable pn16 "Length of hospital stay "
label variable pn17a "Admitting diagnosis"
label variable pn17b "Primary final diagnosis"
label variable pn18a "Secondary diagnosis 1"
label variable pn18b "Secondary diagnosis 2"
label variable pn18c "Secondary diagnosis 3"
label variable pc18d "Secondary diagnosis 4"
label variable pn18e "Complications"
label variable pn19 "ICD codes associated with all diagnoses (admitting, final, secondary, etc)"
label variable pn20a "Diabetes"
label variable pn20b "Diabetes duration (years)"
label variable pn21 "Side of amputation"
label variable pn22a___1 "Level of amputation (choice=First (big) toe)"
label variable pn22a___2 "Level of amputation (choice=Second toe)"
label variable pn22a___3 "Level of amputation (choice=Third toe)"
label variable pn22a___4 "Level of amputation (choice=Fourth toe)"
label variable pn22a___5 "Level of amputation (choice=Fifth toe)"
label variable pn22a___6 "Level of amputation (choice=Transmetatarsal)"
label variable pn22a___7 "Level of amputation (choice=Below the knee)"
label variable pn22a___8 "Level of amputation (choice=Above the knee)"
label variable pn22a___9 "Level of amputation (choice=Other)"
label variable pn22a___10 "Level of amputation (choice=Not stated)"
label variable pn22b "Level of amputation: other"
label variable pn23a "Date of amputation: DAY"
label variable pn23b "Date of amputation: MONTH"
label variable pn23c "Date of amputation: YEAR"
label variable pn24a___1 "Level of wound (choice=First (big) toe)"
label variable pn24a___2 "Level of wound (choice=Second toe)"
label variable pn24a___3 "Level of wound (choice=Third toe)"
label variable pn24a___4 "Level of wound (choice=Fourth toe)"
label variable pn24a___5 "Level of wound (choice=Fifth toe)"
label variable pn24a___6 "Level of wound (choice=Transmetatarsal)"
label variable pn24a___7 "Level of wound (choice=Sole of foot (Plantar))"
label variable pn24a___8 "Level of wound (choice=Top of foot (Dorsal))"
label variable pn24a___9 "Level of wound (choice=Heel)"
label variable pn24a___10 "Level of wound (choice=Ankle area)"
label variable pn24a___11 "Level of wound (choice=Below the knee and above the ankle)"
label variable pn24a___12 "Level of wound (choice=Above the knee)"
label variable pn24a___13 "Level of wound (choice=Other)"
label variable pn24a___14 "Level of wound (choice=Not stated)"
label variable pn24b "Level of wound: other"
label variable pn24c "Type of wound"
label variable pn25a "Ankle-brachial index (ABI) recorded"
label variable pn25b "ABI value"
label variable pn25c "Date of ABI: DAY"
label variable pn25d "Date of ABI: MONTH"
label variable pn25e "Date of ABI: YEAR"
label variable pn26a "Pulses recorded"
label variable pn26b "Left femoral"
label variable pn26c "Left popiteal"
label variable pn26d "Left posterior tibial"
label variable pn26e "Left dorsalis pedis"
label variable pn26f "Right femoral"
label variable pn26g "RIght popiteal"
label variable pn26h "Right posterior tibial"
label variable pn26i "Right dorsalis pedis"
label variable pn26j "Date of pulses: DAY"
label variable pn26k "Date of pulses: MONTH"
label variable pn26l "Date of pulses: YEAR"
label variable pn27a "Infection present"
label variable pn27b "Infection - location"
label variable pn27c "Infection - type"
label variable pn27d "Date of infection: DAY"
label variable pn27e "Date of infection: MONTH"
label variable pn27f "Date of infection: YEAR"
label variable pn28a "Osteomyelitis present"
label variable pn28b "Osteomyelitis - location"
label variable pn28c "Date of osteomyelitis: DAY"
label variable pn28d "Date of osteomyelitis: MONTH"
label variable pn28e "Date of osteomyelitis: YEAR"
label variable pn29a "Debridement performed within 1 year of amputation"
label variable pn29b___1 "Debridement - level  (choice=First (big) toe)"
label variable pn29b___2 "Debridement - level  (choice=Second toe)"
label variable pn29b___3 "Debridement - level  (choice=Third toe)"
label variable pn29b___4 "Debridement - level  (choice=Fourth toe)"
label variable pn29b___5 "Debridement - level  (choice=Fifth toe)"
label variable pn29b___6 "Debridement - level  (choice=Transmetatarsal)"
label variable pn29b___7 "Debridement - level  (choice=Sole of foot (Plantar))"
label variable pn29b___8 "Debridement - level  (choice=Top of foot (Dorsal))"
label variable pn29b___9 "Debridement - level  (choice=Heel)"
label variable pn29b___10 "Debridement - level  (choice=Ankle area)"
label variable pn29b___11 "Debridement - level  (choice=Below the knee and above the ankle)"
label variable pn29b___12 "Debridement - level  (choice=Above the knee)"
label variable pn29b___13 "Debridement - level  (choice=Other)"
label variable pn29b___14 "Debridement - level  (choice=Not stated)"
label variable pn29c "Debridement level: other "
label variable pn29d "Debridement - dates "
label variable pn30a "Patient dead"
label variable pn30b "Date of death"
label variable pn30c "Cause of death"
label variable abstraction_form_complete "Complete?"

order record_id type_source ot1 ot2 ot3 ot4a ot4b ot5 ot6a ot6b ot7a ot7b ot8 ot9a ot9b ot10 ot11 ot12 ot13 ot14a ot14b ot15a ot15b ot15c ot16a___1 ot16a___2 ot16a___3 ot16b ot17 ot18a___1 ot18a___2 ot18a___3 ot18a___4 ot18a___5 ot18a___6 ot18a___7 ot18a___8 ot18a___9 ot18a___10 ot18b ot19a ot19b ot19c ot20 dc1 dc2 dc3a dc3b dc4 dc5 dc6 dc7 dc8 dc9 dc10 dc11 dc12 dc13 dc14 dc15 pn1 pn2 pn3 pn4 pn5 pn6 pn7 pn8 pn9 pn10 pn11 pn12 pn13 pn14 pn15a pn15b pn16 pn17a pn17b pn18a pn18b pn18c pc18d pn18e pn19 pn20a pn20b pn21 pn22a___1 pn22a___2 pn22a___3 pn22a___4 pn22a___5 pn22a___6 pn22a___7 pn22a___8 pn22a___9 pn22a___10 pn22b pn23a pn23b pn23c pn24a___1 pn24a___2 pn24a___3 pn24a___4 pn24a___5 pn24a___6 pn24a___7 pn24a___8 pn24a___9 pn24a___10 pn24a___11 pn24a___12 pn24a___13 pn24a___14 pn24b pn24c pn25a pn25b pn25c pn25d pn25e pn26a pn26b pn26c pn26d pn26e pn26f pn26g pn26h pn26i pn26j pn26k pn26l pn27a pn27b pn27c pn27d pn27e pn27f pn28a pn28b pn28c pn28d pn28e pn29a pn29b___1 pn29b___2 pn29b___3 pn29b___4 pn29b___5 pn29b___6 pn29b___7 pn29b___8 pn29b___9 pn29b___10 pn29b___11 pn29b___12 pn29b___13 pn29b___14 pn29c pn29d pn30a pn30b pn30c abstraction_form_complete
set more off
describe
