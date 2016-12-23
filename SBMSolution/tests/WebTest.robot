*** Settings ***
Library           Selenium2Library    run_on_failure=Nothing
Resource          ../resources/keywords/BaseKeywords.txt

*** Variables ***

*** Test Cases ***
Registration Test
    Open Browser    ${REGISTRATION_PAGE_URL}    ${BROWSER}
    ${NumOfRows}=    Get Registration Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Register New User Using Data From Row    ${INDEX}
    \    Check Registration Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Login Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    ${NumOfRows}=    Get Login Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Login To Account Using Data From Row    ${INDEX}
    \    Check Login Into Account Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Logout Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    Take Screenshot
    Logout
    Take Screenshot
    [Teardown]    Close Browser

Create Country Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Create Country Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Create Country Using Data From Row    ${INDEX}
    \    Check Country Creation Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Create City Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Create City Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Create City Using Data From Row    ${INDEX}
    \    Check City Creation Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Create Building Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Create Building Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Create Building Using Data From Row    ${INDEX}
    \    Check Building Creation Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Create Floor Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Create Floor Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Create Floor Using Data From Row    ${INDEX}
    \    Check Floor Creation Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Create Room Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Create Room Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Create Room Using Data From Row    ${INDEX}
    \    Check Room Creation Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Create Rack Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Create Rack Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Create Rack Using Data From Row    ${INDEX}
    \    Check Rack Creation Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Create Device Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Create Device Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Create Device Using Data From Row    ${INDEX}
    \    Check Device Creation Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Create Post Terminal
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Create Post Terminal Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Create Post Terminal Using Data From Row    ${INDEX}
    \    Check Post Terminal Creation Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Create Pay Box Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Create Pay Box Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Create Pay Box Using Data From Row    ${INDEX}
    \    Check Pay Box Creation Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Create ATM Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Create ATM Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Create ATM Using Data From Row    ${INDEX}
    \    Check ATM Creation Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Search Country Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Search Country Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Search Country Using Data From Row    ${INDEX}
    \    Check Country Searching Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Search City Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Search City Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Search City Using Data From Row    ${INDEX}
    \    Check City Searching Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Search Building Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Search Building Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Search Building Using Data From Row    ${INDEX}
    \    Check Building Searching Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Search Floor Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Search Floor Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Search Floor Using Data From Row    ${INDEX}
    \    Check Floor Searching Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Search Room Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Search Room Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Search Room Using Data From Row    ${INDEX}
    \    Check Room Searching Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Search Rack Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Search Rack Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Search Rack Using Data From Row    ${INDEX}
    \    Check Rack Searching Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Search Device Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Search Device Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Search Device Using Data From Row    ${INDEX}
    \    Check Device Searching Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Search Post Terminal Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Search Post Terminal Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Search Post Terminal Using Data From Row    ${INDEX}
    \    Check Post Terminal Searching Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Search Pay Box
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Search Pay Box Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Search Pay Box Using Data From Row    ${INDEX}
    \    Check Pay Box Searching Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Search ATM Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Search ATM Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    Search ATM Using Data From Row    ${INDEX}
    \    Check ATM Searching Using Data From Row    ${INDEX}
    \    Take Screenshot
    [Teardown]    Close Browser

Edit ATM Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Edit ATM Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    ${CURRENT_COUNTRY}=    EditATMTesting.Get Country    ${INDEX}
    \    ${CURRENT_CITY}=    EditATMTesting.Get City    ${INDEX}
    \    ${CURRENT_BUILDING}=    EditATMTesting.Get Building    ${INDEX}
    \    ${CURRENT_FLOOR}=    EditATMTesting.Get Floor    ${INDEX}
    \    ${CURRENT_ROOM}=    EditATMTesting.Get Room    ${INDEX}
    \    ${CURRENT_RACK}=    EditATMTesting.Get Rack    ${INDEX}
    \    ${CURRENT_NAME}=    EditATMTesting.Get Name    ${INDEX}
    \    ${CURRENT_NEW_NAME}=    EditATMTesting.Get Name    ${INDEX}
    \    ${CURRENT_CONNECTION_TYPE}=    EditATMTesting.Get Connection Type    ${INDEX}
    \    ${CURRENT_EXTRA_SECURITY}=    EditATMTesting.Get Extra Security    ${INDEX}
    \    ${CURRENT_PHYSICAL_STATUS}=    EditATMTesting.Get Physical Status    ${INDEX}
    \    ${CURRENT_URL}=    EditATMTesting.Get Expected URL    ${INDEX}
    \    Go To ATM Parameters    ${CURRENT_COUNTRY}    ${CURRENT_CITY}    ${CURRENT_BUILDING}    ${CURRENT_FLOOR}    ${CURRENT_ROOM}
    \    ...    ${CURRENT_RACK}    ${CURRENT_NAME}
    \    Edit ATM    ${CURRENT_NEW_NAME}    ${CURRENT_CONNECTION_TYPE}    ${CURRENT_EXTRA_SECURITY}    ${CURRENT_PHYSICAL_STATUS}
    \    Run Keyword And Continue On Failure    Location Should Contain    ${CURRENT_URL}
    [Teardown]    Close Browser

Edit Pay Box Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Edit Pay Box Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    ${CURRENT_COUNTRY}=    EditPayBoxTesting.Get Country    ${INDEX}
    \    ${CURRENT_CITY}=    EditPayBoxTesting.Get City    ${INDEX}
    \    ${CURRENT_BUILDING}=    EditPayBoxTesting.Get Building    ${INDEX}
    \    ${CURRENT_FLOOR}=    EditPayBoxTesting.Get Floor    ${INDEX}
    \    ${CURRENT_ROOM}=    EditPayBoxTesting.Get Room    ${INDEX}
    \    ${CURRENT_RACK}=    EditPayBoxTesting.Get Rack    ${INDEX}
    \    ${CURRENT_NAME}=    EditPayBoxTesting.Get Name    ${INDEX}
    \    ${CURRENT_NEW_NAME}=    EditPayBoxTesting.Get New Name    ${INDEX}
    \    ${CURRENT_SECURE_PROTOCOL}=    EditPayBoxTesting.Get Secure Protocol    ${INDEX}
    \    ${CURRENT_DISPLAY_SIZE}=    EditPayBoxTesting.Get Display Size    ${INDEX}
    \    ${CURRENT_PHYSICAL_STATUS}=    EditPayBoxTesting.Get Physical Status    ${INDEX}
    \    ${CURRENT_URL}=    EditPayBoxTesting.Get Expected URL    ${INDEX}
    \    Go To Pay Box Parameters    ${CURRENT_COUNTRY}    ${CURRENT_CITY}    ${CURRENT_BUILDING}    ${CURRENT_FLOOR}    ${CURRENT_ROOM}
    \    ...    ${CURRENT_RACK}    ${CURRENT_NAME}
    \    Edit Pay Box    ${CURRENT_NEW_NAME}    ${CURRENT_SECURE_PROTOCOL}    ${CURRENT_DISPLAY_SIZE}    ${CURRENT_PHYSICAL_STATUS}
    \    Run Keyword And Continue On Failure    Location Should Contain    ${CURRENT_URL}
    [Teardown]    Close Browser

Edit Post Terminal Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Edit Post Terminal Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    ${CURRENT_COUNTRY}=    EditPostTerminalTesting.Get Country    ${INDEX}
    \    ${CURRENT_CITY}=    EditPostTerminalTesting.Get City    ${INDEX}
    \    ${CURRENT_BUILDING}=    EditPostTerminalTesting.Get Building    ${INDEX}
    \    ${CURRENT_FLOOR}=    EditPostTerminalTesting.Get Floor    ${INDEX}
    \    ${CURRENT_ROOM}=    EditPostTerminalTesting.Get Room    ${INDEX}
    \    ${CURRENT_RACK}=    EditPostTerminalTesting.Get Rack    ${INDEX}
    \    ${CURRENT_NAME}=    EditPostTerminalTesting.Get Name    ${INDEX}
    \    ${CURRENT_NEW_NAME}=    EditPostTerminalTesting.Get New Name    ${INDEX}
    \    ${CURRENT_WIDTH}=    EditPostTerminalTesting.Get Width    ${INDEX}
    \    ${CURRENT_LENGTH}=    EditPostTerminalTesting.Get Length    ${INDEX}
    \    ${CURRENT_HEIGHT}=    EditPostTerminalTesting.Get Height    ${INDEX}
    \    ${CURRENT_PHYSICAL_STATUS}=    EditPostTerminalTesting.Get Physical Status    ${INDEX}
    \    ${CURRENT_URL}=    EditPostTerminalTesting.Get Expected URL    ${INDEX}
    \    Go To Post Terminal Parameters    ${CURRENT_COUNTRY}    ${CURRENT_CITY}    ${CURRENT_BUILDING}    ${CURRENT_FLOOR}    ${CURRENT_ROOM}
    \    ...    ${CURRENT_RACK}    ${CURRENT_NAME}
    \    Edit Post Terminal    ${CURRENT_NEW_NAME}    ${CURRENT_WIDTH}    ${CURRENT_LENGTH}    ${CURRENT_HEIGHT}    ${CURRENT_PHYSICAL_STATUS}
    \    Run Keyword And Continue On Failure    Location Should Contain    ${CURRENT_URL}
    [Teardown]    Close Browser

Edit Device Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Edit Device Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    ${CURRENT_COUNTRY}=    EditDeviceTesting.Get Country    ${INDEX}
    \    ${CURRENT_CITY}=    EditDeviceTesting.Get City    ${INDEX}
    \    ${CURRENT_BUILDING}=    EditDeviceTesting.Get Building    ${INDEX}
    \    ${CURRENT_FLOOR}=    EditDeviceTesting.Get Floor    ${INDEX}
    \    ${CURRENT_ROOM}=    EditDeviceTesting.Get Room    ${INDEX}
    \    ${CURRENT_RACK}=    EditDeviceTesting.Get Rack    ${INDEX}
    \    ${CURRENT_NAME}=    EditDeviceTesting.Get Name    ${INDEX}
    \    ${CURRENT_NEW_NAME}=    EditDeviceTesting.Get New Name    ${INDEX}
    \    ${CURRENT_MAC_ADDRESS}=    EditDeviceTesting.Get MAC Address    ${INDEX}
    \    ${CURRENT_RAM}=    EditDeviceTesting.Get RAM    ${INDEX}
    \    ${CURRENT_CPU}=    EditDeviceTesting.Get CPU    ${INDEX}
    \    ${CURRENT_IP_ADDRESS}=    EditDeviceTesting.Get IP Address    ${INDEX}
    \    ${CURRENT_WIDTH}=    EditDeviceTesting.Get Width    ${INDEX}
    \    ${CURRENT_LENGTH}=    EditDeviceTesting.Get Length    ${INDEX}
    \    ${CURRENT_HEIGHT}=    EditDeviceTesting.Get Height    ${INDEX}
    \    ${CURRENT_PHYSICAL_STATUS}=    EditDeviceTesting.Get Physical Status    ${INDEX}
    \    ${CURRENT_URL}=    EditDeviceTesting.Get Expected URL    ${INDEX}
    \    Go To Device Parameters    ${CURRENT_COUNTRY}    ${CURRENT_CITY}    ${CURRENT_BUILDING}    ${CURRENT_FLOOR}    ${CURRENT_ROOM}
    \    ...    ${CURRENT_RACK}    ${CURRENT_NAME}
    \    Edit Device    ${CURRENT_NEW_NAME}    ${CURRENT_MAC_ADDRESS}    ${CURRENT_RAM}    ${CURRENT_CPU}    ${CURRENT_IP_ADDRESS}
    \    ...    ${CURRENT_PHYSICAL_STATUS}    ${CURRENT_WIDTH}    ${CURRENT_LENGTH}    ${CURRENT_HEIGHT}
    \    Run Keyword And Continue On Failure    Location Should Contain    ${CURRENT_URL}
    [Teardown]    Close Browser

Edit Rack Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    Go To    ${INVENTORY_PAGE_URL}
    ${NumOfRows}=    Get Edit Rack Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    ${CURRENT_COUNTRY}=    EditRackTesting.Get Country    ${INDEX}
    \    ${CURRENT_CITY}=    EditRackTesting.Get City    ${INDEX}
    \    ${CURRENT_BUILDING}=    EditRackTesting.Get Building    ${INDEX}
    \    ${CURRENT_FLOOR}=    EditRackTesting.Get Floor    ${INDEX}
    \    ${CURRENT_ROOM}=    EditRackTesting.Get Room    ${INDEX}
    \    ${CURRENT_NAME}=    EditRackTesting.Get Name    ${INDEX}
    \    ${CURRENT_NEW_NAME}=    EditRackTesting.Get New Name    ${INDEX}
    \    ${CURRENT_WIDTH}=    EditRackTesting.Get Width    ${INDEX}
    \    ${CURRENT_LENGTH}=    EditRackTesting.Get Length    ${INDEX}
    \    ${CURRENT_HEIGHT}=    EditRackTesting.Get Height    ${INDEX}
    \    ${CURRENT_PHYSICAL_STATUS}=    EditRackTesting.Get Physical Status    ${INDEX}
    \    ${CURRENT_URL}=    EditRackTesting.Get Expected URL    ${INDEX}
    \    Go To Rack Parameters    ${CURRENT_COUNTRY}    ${CURRENT_CITY}    ${CURRENT_BUILDING}    ${CURRENT_FLOOR}    ${CURRENT_ROOM}
    \    ...    ${CURRENT_NAME}
    \    Edit Rack    ${CURRENT_NEW_NAME}    ${CURRENT_WIDTH}    ${CURRENT_LENGTH}    ${CURRENT_HEIGHT}    ${CURRENT_PHYSICAL_STATUS}
    \    Run Keyword And Continue On Failure    Location Should Contain    ${CURRENT_URL}
    [Teardown]    Close Browser

Edit Room Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Edit Room Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    ${CURRENT_COUNTRY}=    EditRoomTesting.Get Country    ${INDEX}
    \    ${CURRENT_CITY}=    EditRoomTesting.Get City    ${INDEX}
    \    ${CURRENT_BUILDING}=    EditRoomTesting.Get Building    ${INDEX}
    \    ${CURRENT_FLOOR}=    EditRoomTesting.Get Floor    ${INDEX}
    \    ${CURRENT_NAME}=    EditRoomTesting.Get Name    ${INDEX}
    \    ${CURRENT_NEW_NAME}=    EditRoomTesting.Get New Name    ${INDEX}
    \    ${CURRENT_SQUARE}=    EditRoomTesting.Get Square    ${INDEX}
    \    ${CURRENT_URL}=    EditRoomTesting.Get Expected URL    ${INDEX}
    \    Go To Room Parameters    ${CURRENT_COUNTRY}    ${CURRENT_CITY}    ${CURRENT_BUILDING}    ${CURRENT_FLOOR}    ${CURRENT_NAME}
    \    Edit Room    ${CURRENT_NEW_NAME}    ${CURRENT_SQUARE}
    \    Run Keyword And Continue On Failure    Location Should Contain    ${CURRENT_URL}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${ROOM_MAIN_URL}'    Page Should Contain    ${CURRENT_NEW_NAME}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${ROOM_MAIN_URL}'    Page Should Contain    ${CURRENT_SQUARE}
    [Teardown]    Close Browser

Edit Floor Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Edit Floor Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    ${CURRENT_COUNTRY}=    EditFloorTesting.Get Country    ${INDEX}
    \    ${CURRENT_CITY}=    EditFloorTesting.Get City    ${INDEX}
    \    ${CURRENT_BUILDING}=    EditFloorTesting.Get Building    ${INDEX}
    \    ${CURRENT_NUMBER}=    EditFloorTesting.Get Number    ${INDEX}
    \    ${CURRENT_NEW_NUMBER}=    EditFloorTesting.Get New Number    ${INDEX}
    \    ${CURRENT_SQUARE}=    EditFloorTesting.Get Square    ${INDEX}
    \    ${CURRENT_URL}=    EditFloorTesting.Get Expected URL    ${INDEX}
    \    Go To Floor Parameters    ${CURRENT_COUNTRY}    ${CURRENT_CITY}    ${CURRENT_BUILDING}    ${CURRENT_NUMBER}
    \    Edit Floor    ${CURRENT_NUMBER}    ${CURRENT_SQUARE}
    \    Run Keyword And Continue On Failure    Location Should Contain    ${CURRENT_URL}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${FLOOR_MAIN_URL}'    Page Should Contain    ${CURRENT_NEW_NUMBER}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${FLOOR_MAIN_URL}'    Page Should Contain    ${CURRENT_SQUARE}
    [Teardown]    Close Browser

Edit Building Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Edit Building Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    ${CURRENT_COUNTRY}=    EditBuildingTesting.Get Country    ${INDEX}
    \    ${CURRENT_CITY}=    EditBuildingTesting.Get City    ${INDEX}
    \    ${CURRENT_NAME}=    EditBuildingTesting.Get Name    ${INDEX}
    \    ${CURRENT_NEW_NAME}=    EditBuildingTesting.Get New Name    ${INDEX}
    \    ${CURRENT_STREET}=    EditBuildingTesting.Get Street    ${INDEX}
    \    ${CURRENT_NUMBER}=    EditBuildingTesting.Get Number    ${INDEX}
    \    ${CURRENT_SQUARE}=    EditBuildingTesting.Get Square    ${INDEX}
    \    ${IS_CONNECTED}=    EditBuildingTesting.Is Connected    ${INDEX}
    \    ${CURRENT_URL}=    EditBuildingTesting.Get Expected URL    ${INDEX}
    \    Go To Building Parameters    ${CURRENT_COUNTRY}    ${CURRENT_CITY}    ${CURRENT_NAME}
    \    Edit Building    ${CURRENT_NEW_NAME}    ${CURRENT_STREET}    ${CURRENT_NUMBER}    ${CURRENT_SQUARE}    ${IS_CONNECTED}
    \    Run Keyword And Continue On Failure    Location Should Contain    ${CURRENT_URL}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${BUILDING_MAIN_URL}'    Page Should Contain    ${CURRENT_NEW_NAME}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${BUILDING_MAIN_URL}'    Page Should Contain    ${CURRENT_STREET}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${BUILDING_MAIN_URL}'    Page Should Contain    ${CURRENT_NUMBER}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${BUILDING_MAIN_URL}'    Page Should Contain    ${CURRENT_SQUARE}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${BUILDING_MAIN_URL}'    Page Should Contain    ${IS_CONNECTED}
    [Teardown]    Close Browser

Edit City Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Edit City Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    ${CURRENT_COUNTRY}=    EditCityTesting.Get Country    ${INDEX}
    \    ${CURRENT_NAME}=    EditCityTesting.Get Name    ${INDEX}
    \    ${CURRENT_NEW_NAME}=    EditCityTesting.Get New Name    ${INDEX}
    \    ${CURRENT_POPULATION}=    EditCityTesting.Get Population    ${INDEX}
    \    ${IS_REGIONAL_CENTER}=    EditCityTesting.Is Regional Center    ${INDEX}
    \    ${CURRENT_URL}=    EditCityTesting.Get Expected URL    ${INDEX}
    \    Go To City Parameters    ${CURRENT_COUNTRY}    ${CURRENT_NAME}
    \    Edit City    ${CURRENT_NEW_NAME}    ${CURRENT_POPULATION}    ${IS_REGIONAL_CENTER}
    \    Run Keyword And Continue On Failure    Location Should Contain    ${CURRENT_URL}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${CITY_MAIN_URL}'    Page Should Contain    ${CURRENT_NEW_NAME}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${CITY_MAIN_URL}'    Page Should Contain    ${CURRENT_POPULATION}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${CITY_MAIN_URL}'    Page Should Contain    ${IS_REGIONAL_CENTER}
    [Teardown]    Close Browser

Edit Country Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${NumOfRows}=    Get Edit Country Dataset Length
    : FOR    ${INDEX}    IN RANGE    1    ${NumOfRows}
    \    ${CURRENT_COUNTRY_NAME}=    EditCountryTesting.Get Name    ${INDEX}
    \    ${CURRENT_COUNTRY_NEW_NAME}=    EditCountryTesting.Get New Name    ${INDEX}
    \    ${CURRENT_COUNTRY_CONTINENT}=    EditCountryTesting.Get Continent    ${INDEX}
    \    ${CURRENT_COUNTRY_LANGUAGE}=    EditCountryTesting.Get Language    ${INDEX}
    \    Go To Country Parameters    ${CURRENT_COUNTRY_NAME}
    \    Edit Country    ${CURRENT_COUNTRY_NEW_NAME}    ${CURRENT_COUNTRY_CONTINENT}    ${CURRENT_COUNTRY_LANGUAGE}
    \    ${CURRENT_URL}=    EditCountryTesting.Get Expected URL    ${INDEX}
    \    Run Keyword And Continue On Failure    Location Should Contain    ${CURRENT_URL}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${COUNTRY_MAIN_URL}'    Page Should Contain    ${CURRENT_COUNTRY_NEW_NAME}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${COUNTRY_MAIN_URL}'    Page Should Contain    ${CURRENT_COUNTRY_CONTINENT}
    \    Run Keyword And Continue On Failure    Run Keyword If    '${CURRENT_URL}' == '${COUNTRY_MAIN_URL}'    Page Should Contain    ${CURRENT_COUNTRY_LANGUAGE}
    [Teardown]    Close Browser

Delete ATM Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${COUNTRY_NAME}=    DeleteTesting.Get Country Name
    ${CITY_NAME}=    DeleteTesting.Get City Name
    ${BUILDING_NAME}=    DeleteTesting.Get Building Name
    ${FLOOR_NUMBER}=    DeleteTesting.Get Floor Number
    ${ROOM_NAME}=    DeleteTesting.Get Room Name
    ${RACK_NAME}=    DeleteTesting.Get Rack Name
    ${ATM_NAME}=    DeleteTesting.Get ATM Name
    Go To ATMs Tab    ${COUNTRY_NAME}    ${CITY_NAME}    ${BUILDING_NAME}    ${FLOOR_NUMBER}    ${ROOM_NAME}    ${RACK_NAME}
    Delete ATM    ${ATM_NAME}
    Page Should Not Contain    ${ATM_NAME}
    [Teardown]    Close Browser

Delete Pay Box Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${COUNTRY_NAME}=    DeleteTesting.Get Country Name
    ${CITY_NAME}=    DeleteTesting.Get City Name
    ${BUILDING_NAME}=    DeleteTesting.Get Building Name
    ${FLOOR_NUMBER}=    DeleteTesting.Get Floor Number
    ${ROOM_NAME}=    DeleteTesting.Get Room Name
    ${RACK_NAME}=    DeleteTesting.Get Rack Name
    ${PAY_BOX_NAME}=    DeleteTesting.Get Pay Box Name
    Go To Pay Boxes Tab    ${COUNTRY_NAME}    ${CITY_NAME}    ${BUILDING_NAME}    ${FLOOR_NUMBER}    ${ROOM_NAME}    ${RACK_NAME}
    Delete Pay Box    ${PAY_BOX_NAME}
    Page Should Not Contain    ${PAY_BOX_NAME}
    [Teardown]    Close Browser

Delete Post Terminal Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${COUNTRY_NAME}=    DeleteTesting.Get Country Name
    ${CITY_NAME}=    DeleteTesting.Get City Name
    ${BUILDING_NAME}=    DeleteTesting.Get Building Name
    ${FLOOR_NUMBER}=    DeleteTesting.Get Floor Number
    ${ROOM_NAME}=    DeleteTesting.Get Room Name
    ${RACK_NAME}=    DeleteTesting.Get Rack Name
    ${POST_TERMINAL_NAME}=    DeleteTesting.Get Post Terminal Name
    Go To Post Terminals Tab    ${COUNTRY_NAME}    ${CITY_NAME}    ${BUILDING_NAME}    ${FLOOR_NUMBER}    ${ROOM_NAME}    ${RACK_NAME}
    Delete Post Terminal    ${POST_TERMINAL_NAME}
    Page Should Not Contain    ${POST_TERMINAL_NAME}
    [Teardown]    Close Browser

Delete Device Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${COUNTRY_NAME}=    DeleteTesting.Get Country Name
    ${CITY_NAME}=    DeleteTesting.Get City Name
    ${BUILDING_NAME}=    DeleteTesting.Get Building Name
    ${FLOOR_NUMBER}=    DeleteTesting.Get Floor Number
    ${ROOM_NAME}=    DeleteTesting.Get Room Name
    ${RACK_NAME}=    DeleteTesting.Get Rack Name
    ${DEVICE_NAME}=    DeleteTesting.Get Device Name
    Go To Devices Tab    ${COUNTRY_NAME}    ${CITY_NAME}    ${BUILDING_NAME}    ${FLOOR_NUMBER}    ${ROOM_NAME}    ${RACK_NAME}
    Delete Device    ${DEVICE_NAME}
    Page Should Not Contain    ${DEVICE_NAME}
    [Teardown]    Close Browser

Delete Rack Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${COUNTRY_NAME}=    DeleteTesting.Get Country Name
    ${CITY_NAME}=    DeleteTesting.Get City Name
    ${BUILDING_NAME}=    DeleteTesting.Get Building Name
    ${FLOOR_NUMBER}=    DeleteTesting.Get Floor Number
    ${ROOM_NAME}=    DeleteTesting.Get Room Name
    ${RACK_NAME}=    DeleteTesting.Get Rack Name
    Go To Racks Tab    ${COUNTRY_NAME}    ${CITY_NAME}    ${BUILDING_NAME}    Floor#${FLOOR_NUMBER}    ${ROOM_NAME}
    Delete Rack    ${RACK_NAME}
    Page Should Not Contain    ${RACK_NAME}
    [Teardown]    Close Browser

Delete Room Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${COUNTRY_NAME}=    DeleteTesting.Get Country Name
    ${CITY_NAME}=    DeleteTesting.Get City Name
    ${BUILDING_NAME}=    DeleteTesting.Get Building Name
    ${FLOOR_NUMBER}=    DeleteTesting.Get Floor Number
    ${ROOM_NAME}=    DeleteTesting.Get Room Name
    Go To Rooms Tab    ${COUNTRY_NAME}    ${CITY_NAME}    ${BUILDING_NAME}    ${FLOOR_NUMBER}
    Delete Room    ${ROOM_NAME}
    Page Should Not Contain    ${ROOM_NAME}
    [Teardown]    Close Browser

Delete Floor Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${COUNTRY_NAME}=    DeleteTesting.Get Country Name
    ${CITY_NAME}=    DeleteTesting.Get City Name
    ${BUILDING_NAME}=    DeleteTesting.Get Building Name
    ${FLOOR_NUMBER}=    DeleteTesting.Get Floor Number
    Go To Floors Tab    ${COUNTRY_NAME}    ${CITY_NAME}    ${BUILDING_NAME}
    Delete Floor    ${FLOOR_NUMBER}
    [Teardown]    Close Browser

Delete Building Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${COUNTRY_NAME}=    DeleteTesting.Get Country Name
    ${CITY_NAME}=    DeleteTesting.Get City Name
    ${BUILDING_NAME}=    DeleteTesting.Get Building Name
    Go To Buildings Tab    ${COUNTRY_NAME}    ${CITY_NAME}
    Delete Building    ${BUILDING_NAME}
    [Teardown]    Close Browser

Delete City Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${COUNTRY_NAME}=    DeleteTesting.Get Country Name
    ${CITY_NAME}=    DeleteTesting.Get City Name
    Go To Cities Tab    ${COUNTRY_NAME}
    Delete City    ${CITY_NAME}
    [Teardown]    Close Browser

Delete Country Test
    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER}
    Login    ${USERNAME}    ${PASSWORD}
    ${COUNTRY_NAME}=    DeleteTesting.Get Country Name
    Go To    ${INVENTORY_PAGE_URL}
    Delete Country    ${COUNTRY_NAME}
    [Teardown]    Close Browser
