*** Settings ***
Library    Selenium2Library
*** Test Case ***
Simple Test
     Open Browser     ${EMPTY}    FF
     Go to    https://profil.wp.pl/login.html?url=https%3A%2F%2Fpoczta.wp.pl%2Findexgwt.html%3Fflg%3D1&serwis=nowa_poczta_wp
     Input Text    id=login     testerwsb_t1
     Input Text    id=password    adam1234
     Click element    id=btnSubmit
     #Wait Until Page Contains   kosmonauta 30
     Sleep    10
     Page should contain    kosmonauta
     Capture page Screenshot
     Close All Browsers
