*** Setting ***
Library    SeleniumLibrary

*** Variables ***
${url}        https://smartplus-dev.su.ac.th/admin/auth
${browser}    chrome
${locatorForClickLogin}    //*[@id="root"]/div/div[2]/div/div/div/div/div/button
${locatorForInput}    //*[@id="i0116"]
${username}    pawutinan_s@su.ac.th
${clickNext}    //*[@id="idSIButton9"]
${passWord}    S1tt1d3tlm78
${clickSignin}    //*[@id="idSIButton9"]
*** Test Cases ***
ตรวจสอบการแสดงข้อมูลหน้าสร้างหัวข้อ "About SU" เมื่อไม่มีการกรอกข้อมูลมาก่อน
    เปิดบาว์เซอร์ให้สำเร็จ
    กดปุ่มล็อกอิน
    ใส่username
    ClickNext
    ใส่Password
    ClickSignin
*** keywords ***
เปิดบาว์เซอร์ให้สำเร็จ
    Open Browser    ${url}      ${browser}
กดปุ่มล็อกอิน
    Click Button    xpath=${locatorForClickLogin}
ใส่username
    Wait Until Element Is Visible    xpath=${locatorForInput}
    Input Text    xpath=${locatorForInput}    ${username}
ClickNext
    Click Button    xpath=${clickNext}
ใส่Password
     Wait Until Element Is Visible    //*[@id="i0118"]
    Input Password    //*[@id="i0118"]    S1tt1d3tlm78
ClickSignin
    Click Button    xpath=${clickSignin}
    Sleep    3s
