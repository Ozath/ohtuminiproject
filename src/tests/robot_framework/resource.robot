*** Settings ***
Library  SeleniumLibrary
Library  ../../AppLibrary.py

*** Variables ***
${SERVER}  localhost:5000
${BROWSER}  chrome
${DELAY}  0 seconds
${HOME URL}  http://${SERVER}
${CHOOSETYPE_URL}  http://${SERVER}/choosetype
${ADDLUKUVINKKI URL}  http://${SERVER}/addlukuvinkki
${LUKUVINKKIVIEW URL}  http://${SERVER}/lukuvinkkiview
${LOGIN URL}  http://${SERVER}/login
${REGISTER URL}  http://${SERVER}/register
${LOGOUT URL}  http://${SERVER}/logout

*** Keywords ***
Open and Configure Browser
    Open Browser  browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}

Main Page Should Be Open
    Title Should Be  Lukuvinkki

Choosetype Page Should Be Open
    Title Should Be  Choose type for new lukuvinkki

Add Lukuvinkki Page Should Be Open
    Title Should Be  Lukuvinkki-Add

Lukuvinkkiview Page Should Be Open
    Title Should Be  Lukuvinkki-View

Logout Page Should Be Open
    Title Should Be  Logout

Register Page Should Be Open
    Title Should Be  Register

Login Page Should Be Open 
    Title Should Be  Login

Go To Main Page
    Go To  ${HOME URL}

Go to Choose Type Page
    Go to  ${CHOOSETYPE_URL}

Go To Add Lukuvinkki Page
    Go To  ${ADDLUKUVINKKI URL}

Go To Lukuvinkkiview Page
    Go To  ${LUKUVINKKIVIEW URL}

Go To Login Page
    Go To  ${LOGIN URL}

Go To Logout Page
    Go To  ${LOGOUT URL}

Go To Register Page
    Go To  ${REGISTER URL}

Login
    Go To Login Page
    Input Text  username  guest
    Input Text  password  veryStrongPassword
    Click Button  Login