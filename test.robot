*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Click on Detailed Element
    Open Browser    http://localhost:5173/    chrome
    ${element}=    Get WebElement    xpath=//*[@id="root"]/div/div[2]/div[2]/div[1]/figure/svg/path
    ${action}=    Evaluate    selenium.webdriver.common.action_chains.ActionChains($webdriver)
    Call Method    ${action}    move_to_element    ${element}
    Call Method    ${action}    click
    Call Method    ${action}    perform
    Close Browser
