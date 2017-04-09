*** Settings ***
Library    Selenium2Library
*** Test Case ***
Simple Test1
     Open Browser     ${EMPTY}    FF
     Go to    https://wp.pl
     Sleep     10
     Click element    css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
     Input Text    id=login     testerwsb_t1
     Input Text    id=password    adam1234
     Click element    id=btnSubmit
     #Wait Until Page Contains
     Sleep    10
     Page should contain    Odebrane
     Capture page Screenshot
     Close All Browsers

Simple Test2
          Open Browser     ${EMPTY}    FF
          Go to    https://wp.pl
          Sleep     10
          Click element    css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
          Input Text    id=login     testerwsb_t
          Input Text    id=password    adam1234
          Click element    id=btnSubmit
          #Wait Until Page Contains
          Sleep    10
          Page should not contain    Odebrane
          Capture page Screenshot
          Close All Browsers

Simple Test3
          Open Browser     ${EMPTY}    FF
          Go to    https://wp.pl
          Sleep     10
          Click element    css=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM
          Input Text    id=login     testerwsb_t1
          Input Text    id=password    adam12345
          Click element    id=btnSubmit
          #Wait Until Page Contains
          Sleep    10
          Page should not contain    Odebrane
          Capture page Screenshot
          Close All Browsers
