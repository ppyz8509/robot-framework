*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Search Google
    Open Browser    http://localhost:5173/    chrome
    Click Element    //*[@id="root"]/div/div[1]/div[3]/a
    Click Element    //*[@id="login"]/div/div/form/button
    Click Element    //*[@id="root"]/div/div[2]/div[2]/div[1]/figure/svg/path
    Click Element    //*[@id="root"]/div/div[2]/div[2]/div/div[3]/button[1]
