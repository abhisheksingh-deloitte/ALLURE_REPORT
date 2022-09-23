*** Settings ***
Documentation       General Keywords and variables for all test cases
Resource            Constant_Values.robot

*** Keywords ***

Create Header Dictionary
     &{header_dictionary}=                  Create Dictionary              Content-Type=${content_text_xml}
     [Return]                               ${header_dictionary}