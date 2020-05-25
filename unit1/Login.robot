*** Settings ***
Library    SeleniumLibrary 
Resource    ../Resource/CustomKeywords.robot
Resource    ../Resource/Locator.robot
Library    ../pythonfiles/test.py      
   

*** Variables ***
${url}    http://newtours.demoaut.com
${browser}    chrome

*** Test Cases ***
Registration Test
    [Documentation]    Test to check register functionality of Mercury website
    NavigateToURL    ${url}    ${browser}
    Click Link    ${registerLink}
    Input Text    xpath://input[@name='firstName']    Rupak      
    Input Text    xpath://input[@name='lastName']    Bhattacharjee 
    Input Text    ${userName}    rupak.777@rediffmail.com
    Input Text    xpath://input[@name='address1']    xyz colony
    Input Text    xpath://input[@name='city']    Bangalore
    Input Text    xpath://input[@name='state']    Karnataka
    Input Text    xpath://input[@name='postalCode']    560100
    Select From List By Label    country    INDIA
    Input Text    xpath://input[@name='email']    test123  
    Input Text    ${password}    test123 
    Input Text    xpath://input[@name='confirmPassword']    test123 
    #Click Button    //input[@name='register']        
    Sleep    2 
    Close All Browsers 
    
Login Test
    [Documentation]    Test to check login functionality of Mercury website
    NavigateToURL    ${url}    ${browser}
    Input Text    ${userName}    mercury      
    Input Text    ${password}    mercury 
    Click Button    //input[@name='login']
    Sleep    2 
    #Close All Browsers
    
Book Flight
    [Documentation]    This test case is use to book flight
    Select Radio Button    tripType    oneway
    Select From List By Label    passCount    3
    Select From List By Label    fromPort    Paris
    Select From List By Label    fromMonth    July 
    Select From List By Label    fromDay    22
    Select From List By Label    toPort    London
    Select From List By Label    toMonth    October
    Select From List By Label    toDay    12
    Select Radio Button    servClass    First
    Select From List By Label    airline    Pangea Airlines
    Click Button    //input[@name='findFlights']
    Sleep    1 
    Select Radio Button    outFlight    Blue Skies Airlines$361$271$7:10 
    Select Radio Button    inFlight    Pangea Airlines$632$282$16:37 
    Click Button    //input[@name='reserveFlights']
    
Fill Details
    Input Text    //input[@name='passFirst0']    Test
    Input Text    //input[@name='passLast0']    User   
    Select From List By Label    pass.0.meal    Kosher        
    Select From List By Label    creditCard    Discover    
    Input Text    //input[@name='creditnumber']    Test 
    Select From List By Label    cc_exp_dt_mn    04        
    Select From List By Label    cc_exp_dt_yr    2006 
    Click Button    //input[@name='buyFlights']      
    

    