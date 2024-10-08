*** Variables ***
${BROWSER}    Edge
${USERNAME}   WorachetCourseIn
${PASSWORD}   WorachetCourseIn
${COURSE_URL}  http://localhost:5173/course
${WEB_URL}  http://localhost:5173/ 
${thai_name}   หลักสูตรนิติศาสตรบัณฑิต
${eng_name}    Bachelor of Laws
${major_code}    25501471103632
${major_year}    2564
${major_credit}    138
${major_name}    หลักสูตรนิติศาสตรบัณฑิต
${alert}    xpath=//*[@id="my_modal_1"]/div


*** Keywords ***
Open Edge
    Open Browser    ${WEB_URL}    ${BROWSER}

Loginbutton
    Click Element    id=signin-button

Input Username And Password
    Input Text        id=input-username    ${USERNAME} 
    Input Text        id=input-password    ${PASSWORD}

Click Login Button
    Click Element    id=submit-login

Wait For Course Addition Section
   Wait Until Page Contains Element    xpath=//*[@id="root"]/div/div[2]/div[2]/div[1]
    Page Should Contain    เพิ่มหลักสูตร

Click Add Course Section
    Click Element    xpath=//*[@id="root"]/div/div[2]/div[2]/div[1]

Fill Course Form
    Input Text    id=input-majornameth    ${thai_name}
    Input Text    id=input-majornameeng    ${eng_name}
    Input Text    id=input-majorcode    ${major_code}
    Input Text    id=input-majoryear    ${major_year}
    Input Text    id=input-majorunit    ${major_credit}

Fill Course is not complete
    Input Text    id=input-majornameth    ${thai_name}
    Input Text    id=input-majornameeng    ${eng_name}   

Click Save Course Button
    Click Element    id=savebutton

Wait For Success Message
    Wait Until Page Contains Element    ${alert}
    Page Should Contain    เพิ่มหลักสูตรสำเร็จ !

Close Success Modal
    Click Element    id=close-alertmodal

Click Back Button
    Click Element    id=back-button

Wait For Course Overview Section
    Wait Until Page Contains Element    xpath=//*[@id="root"]/div/div[2]/div[2]/div[2]
    Page Should Contain    ดูหลักสูตร

Click Course Overview Section
    Click Element    xpath=//*[@id="root"]/div/div[2]/div[2]/div[2]

Wait For Course Name
    Wait Until Page Contains Element    xpath=//*[@id="root"]/div/div[2]/div[2]/div/div[3]/table[1]/tbody/tr[1]/td/div[1]/span[1]
    Page Should Contain    ${major_name}

Capture Screenshot
    Capture Page Screenshot

Wait For Error Message
    Wait Until Page Contains Element    ${alert}
    Page Should Contain    รหัสหลักสูตรนี้มีอยู่แล้ว

Wait For Error fill
    Wait Until Page Contains Element    ${alert}
    Page Should Contain    กรุณากรอกข้อมูลที่จำเป็นให้ครบถ้วน
    