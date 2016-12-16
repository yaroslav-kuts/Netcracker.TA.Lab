*** Settings ***
Library           Selenium2Library
Library           Collections
Library           ua.edu.sumdu.ta.yaroslavkuts.lab.LoginTestDataReader
Resource          ../resources/Project_Keywords.txt
Resource          ../resources/Project_URLs.txt
Resource          ../resources/test_data/Registration_Test_Data_Lists.txt
Resource          ../resources/test_data/Login_Test_Data_Lists.txt
Resource          ../resources/test_data/Create_Object_Test_Data.txt

*** Variables ***

*** Test Cases ***
Registration Test
    Open Browser    ${REGISTRATION_PAGE_URL}    ${BROWSER}
    : FOR    ${INDEX}    IN RANGE    0    2
    \    ${Current_Username} =    Get From Dictionary    ${USERNAMES}    ${INDEX}
    \    ${Current_Password} =    Get From Dictionary    ${PASSWORDS}    ${INDEX}
    \    ${Current_Repassword} =    Get From Dictionary    ${REPASSWORDS}    ${INDEX}
    \    ${Current_Email} =    Get From Dictionary    ${EMAILS}    ${INDEX}
    \    ${Current_Role} =    Get From Dictionary    ${ROLES}    ${INDEX}
    \    ${Current_URL} =    Get From Dictionary    ${URLs}    ${INDEX}
    \    ${Current_Text} =    Get From Dictionary    ${TEXTS}    ${INDEX}
    \    New User Registration    ${Current_Username}    ${Current_Password}    ${Current_Repassword}    ${Current_Email}    ${Current_Role}
    \    Run Keyword And Continue On Failure    Location Should Contain    ${Current_URL}
    \    Run Keyword And Continue On Failure    Page Should Contain    ${Current_Text}    INFO
    [Teardown]    Close Browser

Login Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Use Workbook    C:/Projects/SBMSolution/resources/test_data/data.xlsx
    ${NumOfRows}=    Get Number Of Rows
    : FOR    ${INDEX}    IN RANGE    0    ${NumOfRows}
    \    ${Current_Username}=    Get Login    ${INDEX}
    \    ${Current_Password}=    Get Password    ${INDEX}
    \    ${Current_URL}=    Get Expected URL    ${INDEX}
    \    Login    ${Current_Username}    ${Current_Password}
    \    Run Keyword And Continue On Failure    Location Should Contain    ${Current_URL}
    [Teardown]    Close Browser

Logout Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    Logout
    [Teardown]    Close Browser

Create Location Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    Go To    ${INVENTORY_PAGE_URL}
    Create Country    ${COUNTRY_NAME}    ${COUNTRY_CONTINENT}    ${COUNTRY_LANGUAGE}
    Open Country    ${COUNTRY_NAME}
    Create City    ${CITY_NAME}    ${CITY_POPULATION}    ${CITY_IS_REGIONAL_CENTER}
    Open City    ${CITY_NAME}
    Create Building    ${BUILDING_NAME}    ${BUILDING_STREET_NAME}    ${BUILDING_NUMBER}    ${BUILDING_SQUARE}    ${BUILDING_IS_CONNECTED}
    Open Building    ${BUILDING_NAME}
    Create Floor    ${FLOOR_NUMBER}    ${FLOOR_SQUARE}
    Open Floor    ${FLOOR_NUMBER}
    Create Room    ${ROOM_NAME}    ${ROOM_SQUARE}
    Open Room    ${ROOM_NAME}
    Create Rack    ${RACK_NAME}    ${RACK_WIDTH}    ${RACK_LENGTH}    ${RACK_HEIGHT}    ${RACK_PSYSICAL_STATUS}
    Open Rack    ${RACK_NAME}
    [Teardown]    Close Browser

Create Device Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    Go To Device Tab    ${COUNTRY_NAME}    ${CITY_NAME}    ${BUILDING_NAME}    ${FLOOR_NUMBER}    ${ROOM_NAME}    ${RACK_NAME}
    Create Device    ${DEVICE_NAME}    ${DEVICE_MAC_ADDRESS}    ${DEVICE_RAM}    ${DEVICE_CPU}    ${DEVICE_IP_ADDRESS}    ${DEVICE_PHYSICAL_STATUS}
    ...    ${DEVICE_WIDTH}    ${DEVICE_LENGTH}    ${DEVICE_HEIGHT}
    [Teardown]    Close Browser

Create ATM Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    Go To ATM Tab    ${COUNTRY_NAME}    ${CITY_NAME}    ${BUILDING_NAME}
    Create ATM    ${ATM_NAME}    ${ATM_CONNECTION_TYPE}    ${ATM_EXTRA_SECURITY}    ${ATM_PHYSICAL_STATUS}
    [Teardown]    Close Browser

Create Pay Box Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    Go To Pay Box Tab    ${COUNTRY_NAME}    ${CITY_NAME}    ${BUILDING_NAME}
    Create Pay Box    ${PAY_BOX_NAME}    ${PAY_BOX_SECURE_PROTOCOL}    ${PAY_BOX_DISPLAY_SIZE}    ${PAY_BOX_PHYSICAL_STATUS}
    [Teardown]    Close Browser

Create Post Terminal
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    Go To Post Terminal Tab    ${COUNTRY_NAME}    ${CITY_NAME}    ${BUILDING_NAME}
    Create Post Terminal    ${POST_TERMINAL_NAME}    ${POST_TERMINAL_WIDTH}    ${POST_TERMINAL_LENGTH}    ${POST_TERMINAL_HEIGHT}    ${POST_TERMINAL_PHYSICAL_STATUS}
    [Teardown]    Close Browser

Delete Location Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    Go To    ${INVENTORY_PAGE_URL}
    Delete Country    ${COUNTRY_NAME}

JavaKeywordTest
    hello
