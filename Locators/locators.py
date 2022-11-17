# ===== Login Fields ==========
Username_field = "//input[@id='login_email']"
password_field = "//input[@id='login_password']"
Login_Button = "//button[@type='submit']"
Success_Login = "//input[@id='navbar-search']"
Institution_title = "//h3[@title='New Institution']"

# ==== Links Locators ============
Academic_Structure = "//a[@href='/app/academic-structure']"
Institution_Link = "//a[@href='/app/institution']"
Add_Inistitutions = "//span[@data-label='Add%20Institution']"
Campuses_Link = "//a[@href='/app/campus']"
Add_Campuses = "//span[@data-label='Add%20Campus']"
College_Link =  "//a[@href='/app/college']"
Add_College = "//span[@data-label='Add%20College']"


# ======= Add New Institutions Fileds ========
Institution_Code_Field = "//input[@data-fieldname='institution_code']"
Institution_Name_Field = "//input[@data-fieldname='institution_name']"
Institutional_Type_Field ="//input[@data-fieldname='institutional_type']"
Institutional_Type_Selected = "//ul[@id='awesomplete_list_4']/li[1]"
Website_Field = "//input[@data-fieldname='website']"
Email_Field = "//input[@data-fieldname='email']"
Ownership_Field = "//input[@data-fieldname='ownership']"
Ownership_Selected = "//ul[@id='awesomplete_list_5']/li[1]"
Location_Field = "//input[@data-fieldname='location'][@data-doctype='Institution']"
MOE_Number_Field = "//input[@data-fieldname='moe_number']"
Time_Zone_Field = "//select[@data-fieldname='time_zone']"
Time_Zone_Selected = "//select[@data-fieldname='time_zone']/option[1]"
Date_of_establishment_Field = "//input[@data-fieldname='establishment_date']"
Date_of_establishment_date = "//div[@id='datepickers-container']/div/div[1]/div/div[2]/div[3]"
Submit_Institution = "//button[@data-label='Save']"
Successfully_Saved = "//*[@id='alert-container']"

# ======= Add New Campuses Fileds ========
Campus_name_field = "/html/body/div[5]/div/div/div[2]/div[1]/div/div[2]/div/div/div/form/div[1]/div/div[2]/div[1]/input"
campus_code_field = "/html/body/div[5]/div/div/div[2]/div[1]/div/div[2]/div/div/div/form/div[2]/div/div[2]/div[1]/input"
campus_location_field = "/html/body/div[5]/div/div/div[2]/div[1]/div/div[2]/div/div/div/form/div[3]/div/div[2]/div[1]/input"
Submit_Campus = "/html/body/div[8]/div/div/div[3]/div[2]/button[2]"

# ======= Add New Colleges Fileds ========
College_Name_field = "//input[@data-fieldname='college_name'][@data-doctype='College']"
College_Code_field = "//input[@data-fieldname='college_code'][@data-doctype='College']"
Establishment_date_field = "//input[@data-fieldname='establishment_date']"
Establishment_date = "//*[@id='datepickers-container']/div/div[1]/div/div[2]/div[4]"
Open_campus_collapse = "//DIV[@class='section-head collapsed']"
Add_capmus_row = "//button[@class='btn btn-xs btn-secondary grid-add-row']"
click_in_campus_row = "(//DIV[@class='col grid-static-col col-xs-10 '])[2]"
Select_campus = "//P[@title='1']"
Submit_college = "//*[@id='page-College']/div[1]/div/div/div[2]/div[3]/button[2]/span"
