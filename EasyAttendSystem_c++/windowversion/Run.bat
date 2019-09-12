:幾位學生
set allStudentCount=69
:學號
set allStudentID=AllStudentID.txt
:學生證卡號
set allStudentCardID=AllStudentCardID.txt
:清除
del 缺席.txt noattend.txt

:編譯
g++ smartAttendComparison.cpp -o smartAttendComparison -O3
g++ noattend.cpp -o noattend -O3
g++ total.cpp -o total -O3

:讀檔以及將缺席名單輸出
set attend=1003Attend.txt
smartAttendComparison.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> 缺席.txt
noattend.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> noattend.txt

set attend=1017Attend.txt
smartAttendComparison.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> 缺席.txt
noattend.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> noattend.txt

set attend=1024Attend.txt
smartAttendComparison.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> 缺席.txt
noattend.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> noattend.txt

set attend=1114Attend.txt
smartAttendComparison.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> 缺席.txt
noattend.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> noattend.txt

set attend=1121Attend.txt
smartAttendComparison.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> 缺席.txt
noattend.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> noattend.txt

set attend=1128Attend.txt
smartAttendComparison.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> 缺席.txt
noattend.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> noattend.txt

:set attend=1203Attend.txt
:smartAttendComparison.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> 缺席.txt
:noattend.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> noattend.txt

set attend=1205Attend.txt
smartAttendComparison.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> 缺席.txt
noattend.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> noattend.txt

set attend=1212Attend.txt
smartAttendComparison.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> 缺席.txt
noattend.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> noattend.txt

set attend=1219Attend.txt
smartAttendComparison.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> 缺席.txt
noattend.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> noattend.txt

set attend=1226Attend.txt
smartAttendComparison.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> 缺席.txt
noattend.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> noattend.txt

set attend=0328Attend.txt
smartAttendComparison.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> 缺席.txt
noattend.exe %allStudentCount% %allStudentID% %allStudentCardID% %attend% >> noattend.txt

:執行total程式，計算缺席次數
total.exe

pause
