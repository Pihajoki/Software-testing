*** Settings ***
Library    String
Library    Collections
Library    OperatingSystem

*** Variables ***
${one}    Donald
${two}    Duck
@{list}    1    2    3    4
@{names}    Juho    Roni    Henkka    Antti

*** Test Cases ***
Check outcome
    ${three}=    Set Variable    Donald Duck
    Should Be Equal    ${three}    ${one} ${two}

Check value from list
    ${number}=    Set Variable    ${list}[2]
    Should Be Equal    ${number}    3

Add value to list
    @{list}=    Copy List    ${list}
    ${addition}=    Set Variable    333
    Append To List    ${list}    ${addition}
    Should Be Equal    ${list}[4]    ${addition}

List Length
    ${length}=    Get Length    ${list}
    ${expected}=    Convert To Integer    4
    Should Be Equal    ${length}    ${expected}

Put list in alphabetical order
    Log    ${names}
    Sort List    ${names}
    Log    ${names}

Loop through the list
    FOR    ${counter}    IN RANGE    1    10
        Log    ${counter}
    END

Loop names list
    FOR    ${element}    IN    @{names}
        Log    ${element}
    END

Make new directory
    Create Directory    C:\\Users\\jogis\\Documents\\GitHub\\Software testing\\Robot Framework\\Test
    Directory Should Exist    C:\\Users\\jogis\\Documents\\GitHub\\Software testing\\Robot Framework\\Test

Create a new file
    ${path}=    Set Variable    C:\\Users\\jogis\\Documents\\GitHub\\Software testing\\Robot Framework\\Test
    Create File    ${path}/example.txt    This is test!
    File Should Exist    ${path}/example.txt
    File Should Not Be Empty    ${path}/example.txt


Append text to file
    ${path}=    Set Variable    C:\\Users\\jogis\\Documents\\GitHub\\Software testing\\Robot Framework\\Test
    Append To File    ${path}/example.txt    \nor is this a test?

Clean files and folders
    ${path}=    Set Variable    C:\\Users\\jogis\\Documents\\GitHub\\Software testing\\Robot Framework\\Test
    Remove File    ${path}/example.txt
    Directory Should Be Empty    ${path}
    Remove Directory    ${path}
    Directory Should Not Exist    ${path}

Ping Web Page
    ${output}=    Run And Return Rc And Output    ping www.google.com
    Log    ${output}


read texts and find word students
    ${path}=    Set Variable    C:\\Users\\jogis\\Documents\\GitHub\\Software testing\\Robot Framework\\
    ${output}=    Get File    ${path}/example_text.txt
    Log    ${output}
    ${output}=    Remove String    ${output}    .    ,
    Log    ${output}
    @{wordList}=    Split String    ${output}
    Log    ${wordList}
    ${index}=    Get Index From List    ${wordList}    students
    Should Be Equal    ${index}    ${24}


get ip address
    ${output}=    Run And Return Rc And Output    ipconfig
    @{wordList}=    Split String    ${output}[1]
    Log    ${wordList}
    ${index}=    Get Index From List    ${wordList}    Subnet
    ${index}=    Evaluate    ${index}-1
    ${IPAddress}=    Set Variable    ${wordList}[${index}]
    Log    ${IPAddress}
    