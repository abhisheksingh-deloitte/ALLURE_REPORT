*** Settings ***
Documentation           Using Soap for  request Library
Library                 RequestsLibrary
Library                 Collections
Resource                ../Resources/Constant_Values.robot
Resource                ../Resources/Common_keywords.robot
Resource                ../Resources/APIs_End_Points.robot
*** Test Cases ***
Returning All the list of Methods Using Get Method
     [Documentation]                  Returns all the list of Methods
     &{header_dictionary}=            Common_keywords.Create Header Dictionary
     ${response}=                     GET       ${base_url}${end_point}                                 headers=${header_dictionary}
     ${actual_code} =                 convert to string             ${response.status_code}
     should be equal                  ${actual_code}                ${success_Status_code}

Returning a list of continents ordered by name Using Post Method
     [Documentation]                Returns a list of continents ordered by name.
     &{header_dictionary}=          Common_keywords.Create Header Dictionary
     ${response}=                   POST                           ${base_url}${end_point}              headers=${header_dictionary}                      data=${payload_ListOfContinentsByName}
     ${actual_code} =               convert to string              ${response.status_code}
     should be equal                ${actual_code}                 ${success_Status_code}

Returning a list of continents ordered by code Using Post Method
       [Documentation]               Returns a list of continents ordered by code.
      &{header_dictionary}=          Common_keywords.Create Header Dictionary
      ${response}=                   POST                           ${base_url}${end_point}            headers=${header_dictionary}                    data=${payload_ListOfContinentsByCode}
      ${actual_code} =               convert to string              ${response.status_code}
      should be equal                ${actual_code}                 ${success_Status_code}

Returning a list of currencies ordered by name Using Post Method
      [Documentation]                Returns a list of currencies ordered by name.
      &{header_dictionary}=          Common_keywords.Create Header Dictionary
      ${response}=                   POST                           ${base_url}${end_point}            headers=${header_dictionary}                  data=${payload_ListOfCurrenciesByName}
      ${actual_code} =               convert to string              ${response.status_code}
      should be equal                ${actual_code}                 ${success_Status_code}

Returning a list of currencies ordered by code Using Post Method
      [Documentation]                Returns a list of currencies ordered by code.
      &{header_dictionary}=          Common_keywords.Create Header Dictionary
      ${response}=                   POST                           ${base_url}${end_point}            headers=${header_dictionary}                  data=${payload_ListOfCurrenciesByCode}
      ${actual_code} =               convert to string              ${response.status_code}
      should be equal                ${actual_code}                 ${success_Status_code}


