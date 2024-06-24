#Ajout des user

role= 'xpath://div[@class="oxd-select-text-input"]'
ESS ='xpath://*[contains(text(),"ESS")]'
Administra ='xpath://*[contains(text(),"Admin")]'
employername='xpath://input[@placeholder="Type for hints..."]'
username= 'xpath://input[@class="oxd-input oxd-input--active" and @autocomplete="off"]'
status= "xpath://label[text()='Status']/following::div[@data-v-67d2aedf ]"
enabled= 'xpath://*[contains(text(),"Enabled")]'
Disabled= 'xpath://*[contains(text(),"Disabled")]'
passworduser= 'xpath://input[@class="oxd-input oxd-input--active" and @type="password"]'
confirmation= "xpath://label[text()='Confirm Password']/following::input[@type='password'][1]"
save= 'xpath://button[@type="submit" and @class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]'

#recherche user
uersearch= "xpath://label[text()='Username']/following::input[@data-v-1f99f73c]"
userrole='xpath://div[@class="oxd-select-text-input"]'
userempl='xpath://div[@class="oxd-autocomplete-text-input oxd-autocomplete-text-input--active"]'
userstat='xpath://div[@class="oxd-select-text-input" and contains(text(), "-- Select --")]'
btsearch= 'xpath://button[@type="submit" and @class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]'
reset= 'xpath://button[@type="button" and @class="oxd-button oxd-button--medium oxd-button--ghost"]'
