*** Settings ***
Documentation           Using Soap for  request Library
Library                 RequestsLibrary
Library                  XML
Library                 Collections
Resource                ../Resources/Constant_Values.robot
Resource                ../Resources/Common_keywords.robot
Resource                ../Resources/APIs_End_Points.robot

*** Test Cases ***
Returning CountryName Using Post Method
    [Documentation]                Searches the database for a country by the passed ISO country code
    [tags]                         CountryName
    &{header_dictionary}=          Create Dictionary              Content-Type=${content_text_xml}
    ${response}=                   POST       ${base_url}${end_point}               headers=${header_dictionary}           data=${payload_CountryName}
    ${actual_code} =               convert to string              ${response.status_code}
    should be equal                ${actual_code}                 ${success_Status_code}

Returning LanguageName Using Post Method
    [Documentation]                Find a language name based on the passed ISO language code
    [tags]                         LanguageName
    &{header_dictionary}=          Create Dictionary              Content-Type=${content_text_xml}
    ${response}=                   POST       ${base_url}${end_point}               headers=${header_dictionary}           data=${payload_LanguageName}
    ${actual_code} =               convert to string              ${response.status_code}
    should be equal                ${actual_code}                 ${success_Status_code}

Returning CountryFlag Using Post Method
    [Documentation]               Returns a link to a picture of the country flag
    [tags]                         CountryFlag
    &{header_dictionary}=          Create Dictionary              Content-Type=${content_text_xml}
    ${response}=                    POST       ${base_url}${end_point}               headers=${header_dictionary}           data=${payload_CountryFlag}
    ${actual_code} =                convert to string              ${response.status_code}
    should be equal                 ${actual_code}                 ${success_Status_code}

Returning CapitalCity Using Post Method
    [Documentation]                Returns the name of the captial city for the passed country code
    [tags]                         CapitalCity
    &{header_dictionary}=          Create Dictionary              Content-Type=${content_text_xml}
    ${response}=                    POST       ${base_url}${end_point}               headers=${header_dictionary}           data=${payload_CapitalCity}
    ${actual_code} =                convert to string              ${response.status_code}
    should be equal                 ${actual_code}                 ${success_Status_code}



